import { showError } from '@/utils/toastUtils';
import { createSlice, PayloadAction } from '@reduxjs/toolkit';

interface PositionState {
  type: string,
  slots: {
    id: number,
    player: FantasyPlayer | null
  }[];
}

interface TransferState {
  positions: PositionState[];
  budget: number;
  squadValue: number;
  freeTransfers: number,
  transfersCost: number | 0,
  hasUnlimitedTransfers: boolean,
  teamName: string;
  transferedPlayers: {
    positionId: number,
    playerIn: FantasyPlayer | null,
    playerOut: FantasyPlayer
  }[]
}

const initialState: TransferState = {
  positions: [
    {
      type: "Goalkeeper", slots: [
        { id: 1, player: null },
        { id: 2, player: null },
      ]
    },
    {
      type: "Defender", slots: [
        { id: 3, player: null },
        { id: 4, player: null },
        { id: 5, player: null },
        { id: 6, player: null },
        { id: 7, player: null },
      ]
    },
    {
      type: "Midfielder", slots: [
        { id: 8, player: null },
        { id: 9, player: null },
        { id: 10, player: null },
        { id: 11, player: null },
        { id: 12, player: null },
      ]
    },
    {
      type: "Forward", slots: [
        { id: 13, player: null },
        { id: 14, player: null },
        { id: 15, player: null },
      ]
    },
  ],
  budget: 100,
  freeTransfers: 0,
  transfersCost: 0,
  hasUnlimitedTransfers: false,
  squadValue: 0,
  teamName: '',
  transferedPlayers: [],
};
let serverInitialState: TransferState | null = null;

const transferSlice = createSlice({
  name: 'transfer',
  initialState,
  reducers: {
    addPlayerToPosition: (state, action: PayloadAction<FantasyPlayer>) => {
      const newPlayer = action.payload;
      const { position, id, name, team } = newPlayer;

      // Prevent duplicate player
      const alreadyExists = state.positions.some(pos =>
        pos.slots.some(p => p.player?.id === id)
      );
      if (alreadyExists) {
        showError(`You already have player (${name}) in your team`);
        return;
      }

      // Count players from same team
      const teamCount = state.positions.reduce((acc, pos) => {
        return acc + pos.slots.filter(p => p.player?.team?.id === team?.id).length;
      }, 0);
      if (teamCount >= 3) {
        showError(`You already have 3 players from ${team?.name}`);
        return;
      }

      const posGroup = state.positions.find(p => p.type.toLowerCase() === position.toLowerCase());
      if (!posGroup) {
        showError(`Unexpected error finding position group (${position})`);
        return;
      }

      const emptySlot = posGroup.slots.find(p => p.player === null);
      if (emptySlot) {
        const oldPos = serverInitialState?.positions.find(p => p.type.toLowerCase() === position.toLowerCase());
        if (oldPos) {
          const oldSlot = oldPos.slots.find(p => p.player?.id === id);

          if (oldSlot != null) {
            const oldPlayerSlot = posGroup.slots.find(o => o.id == oldSlot.id);
            if (oldPlayerSlot) {
              emptySlot.player = oldPlayerSlot.player;
              oldPlayerSlot.player = newPlayer;
              const i = state.transferedPlayers.findIndex(o => o.positionId == oldSlot.id);
              if (i !== -1) state.transferedPlayers.splice(i, 1);
              return;
            }

          }
        }
        emptySlot.player = newPlayer;
        const tr = state.transferedPlayers.find(o => o.positionId == emptySlot.id);
        if (tr) tr.playerIn = newPlayer;

      } else {
        showError(`All ${position}s are already selected`);
      }
    },


    removePlayerFromPosition: (state, action: PayloadAction<FantasyPlayer>) => {
      const { id, position } = action.payload;
      const posGroup = state.positions.find(p => p.type.toLowerCase() === position.toLowerCase());
      if (!posGroup) return;

      const targetSlot = posGroup.slots.find(p => p.player?.id === id);
      if (!targetSlot) return;

      const removedPlayer = targetSlot.player;
      targetSlot.player = null;

      if (removedPlayer) {
        const tr = state.transferedPlayers.find(o => o.playerIn?.id == removedPlayer.id);
        if (tr != null) {
          tr.playerIn = null;
        } else {
          state.transferedPlayers.push({
            positionId: targetSlot.id,
            playerIn: null,
            playerOut: removedPlayer,
          });
        }

      }
    },

    setTransfersFromServer: (
      state,
      action: PayloadAction<{
        teamName: string,
        squadValue: number,
        budget: number,
        freeTransfers: number,
        hasUnlimitedTransfers: boolean,
        players: FantasyTeamPlayer[]
      }>
    ) => {
      const { teamName, squadValue, budget, freeTransfers,hasUnlimitedTransfers, players } = action.payload;
      const positions = initialState.positions.map(p => ({
        ...p,
        slots: p.slots.map(slot => ({ ...slot, player: null })) // reset player to null
      }));

      players.forEach(p => {
        const player = p.player;
        const group = positions.find(g => g.type.toLowerCase() === player.position.toLowerCase());
        if (!group) return;

        const emptySlot = group.slots.find(s => s.player === null);
        if (emptySlot) {
          emptySlot.player = player;
        }
      });

      const newState = {
        positions,
        teamName,
        squadValue,
        budget,
        freeTransfers,
        hasUnlimitedTransfers,
        transfersCost: 0,
        transferedPlayers: [],
      };

      serverInitialState = newState;

      state.positions = newState.positions;
      state.teamName = newState.teamName;
      state.squadValue = newState.squadValue;
      state.budget = newState.budget;
      state.hasUnlimitedTransfers=newState.hasUnlimitedTransfers;
      state.transfersCost=newState.transfersCost;
      state.freeTransfers=newState.freeTransfers
      state.transferedPlayers=newState.transferedPlayers
    },


    resetTransfers: (state) => {
      if (serverInitialState) {
        return { ...serverInitialState };
      }
      return { ...initialState }; // fallback
    },
  },
});

// ✅ Selectors
export const selectTotalSelectedPlayers = (state: { transfer: TransferState }) => {
  return state.transfer.positions.reduce(
    (acc, pos) => acc + pos.slots.filter(p => p.player !== null).length,
    0
  );
};

export const selectTotalPrice = (state: { transfer: TransferState }) => {
  return state.transfer.positions.reduce(
    (acc, pos) =>
      acc +
      pos.slots.reduce((sum, p) => sum + (p.player?.price || 0), 0),
    0
  );
};
export const selectFreeTransfers = (state: { transfer: TransferState }) => {
  if (!serverInitialState) return 0;
  if(state.transfer.hasUnlimitedTransfers) return "Unlimited";
  const freeTransfers = serverInitialState.freeTransfers - state.transfer.transferedPlayers.length;
  return (freeTransfers > 0) ? freeTransfers : 0;
};

export const selectTransfersCost = (state: { transfer: TransferState }) => {
  if (!serverInitialState) return 0;
  if(state.transfer.hasUnlimitedTransfers) return "-";
  const freeTransfers = serverInitialState.freeTransfers - state.transfer.transferedPlayers.length;
  return (freeTransfers < 0) ? freeTransfers * 4 : 0;
};

export const selectPlayers = (state: { transfer: TransferState }) => {
  return state.transfer.positions.map((posGroup) => {
    return posGroup.slots.map((slot) => {
      return slot.player
        ? { isBlank: false, position: posGroup.type, player: { ...slot.player } }
        : { isBlank: true, position: posGroup.type };
    });
  });
};

export const selectTransferedPlayers = (state: { transfer: TransferState }) => {
  return state.transfer.transferedPlayers;
};


export const {
  addPlayerToPosition,
  removePlayerFromPosition,
  resetTransfers,
  setTransfersFromServer
} = transferSlice.actions;

export default transferSlice.reducer;

import { showError } from '@/utils/toastUtils';
import { createSlice, PayloadAction } from '@reduxjs/toolkit';

interface PositionState {
  position: string;
  count: number;
  players: (FantasyPlayer | null)[];
}

interface pickTeamState {
  positions: PositionState[];
}

const initialState: pickTeamState = {
  positions: [
    { position: "Goalkeeper", count: 2, players: [null, null] },
    { position: "Defender", count: 5, players: [null, null, null, null, null] },
    { position: "Midfielder", count: 5, players: [null, null, null, null, null] },
    { position: "Forward", count: 3, players: [null, null, null] },
  ],
};

const pickTeamSlice = createSlice({
  name: 'pickTeam',
  initialState,
  reducers: {
    pickTeamAddPlayer: (state, action: PayloadAction<FantasyPlayer>) => {
      const newPlayer = action.payload;
      const { position, id, name, team } = newPlayer;

      // Prevent duplicate player
      const alreadyExists = state.positions.some(pos =>
        pos.players.some(p => p?.id === id)
      );
      if (alreadyExists) {
        showError("You already player (" + name + ") in your team");
        return;
      }


      // Count players from the same team
      const teamCount = state.positions.reduce((acc, pos) => {
        return acc + pos.players.filter(p => p?.team?.id === team?.id).length;
      }, 0);
      if (teamCount >= 3) {
        showError("You already have 3 players from same club (" + team?.name + ")");
        return;

      }

      // Find target position slot
      const pos = state.positions.find(p => p.position.toLowerCase() === position.toLowerCase());
      if (!pos) {
        showError(`unexpected error...`);
        return;
      }

      const emptyIndex = pos.players.findIndex(p => p === null);
      if (emptyIndex !== -1) {
        pos.players[emptyIndex] = newPlayer;
      } else {
        showError(`You already have ${pos.count} ${pos.position}s in your team`);
      }
    },

    pickTeamRemovePlayer: (state, action: PayloadAction<FantasyPlayer>) => {
      const { id, position } = action.payload;
      const pos = state.positions.find(p => p.position.toLowerCase() === position.toLowerCase());
      if (!pos) return;
      const index = pos.players.findIndex(p => p?.id === id);
      if (index !== -1) {
        pos.players[index] = null;
      }
    },


    pickTeamReset: () => initialState,
  },
});

// ✅ Selectors
export const pickTeamTotalSelectedPlayers = (state: { pickTeam: pickTeamState }) => {
  return state.pickTeam.positions.reduce(
    (acc, pos) => acc + pos.players.filter(p => p !== null).length,
    0
  );
};

export const pickTeamTotalPrice = (state: { pickTeam: pickTeamState }) => {
  return state.pickTeam.positions.reduce(
    (acc, pos) =>
      acc +
      pos.players.reduce((sum, p) => sum + (p?.price || 0), 0),
    0
  );
};
export const selectPlayers = (state: { pickTeam: pickTeamState }) => {
  return state.pickTeam.positions.map((posGroup) =>
    posGroup.players.map((player) =>
      player
        ? { isBlank: false, position: posGroup.position, player: { ...player } }
        : { isBlank: true, position: posGroup.position }
    )
  );

};

export const {
  pickTeamAddPlayer,
  pickTeamRemovePlayer,
  pickTeamReset,
} = pickTeamSlice.actions;

export default pickTeamSlice.reducer;



// if (newPlayer.isStarting) {
//         if (selectedPlayer) {

//           if (selectedPlayer.isStarting == false) {
//             const oldIndex = state.swappedPlayers.findIndex(s => s.playerOut.id === selectedPlayer.id);
//             if (oldIndex !== -1) {
//               selectedPlayer = state.swappedPlayers[oldIndex].playerIn;
//               state.swappedPlayers.splice(oldIndex, 1);
//             }
//             state.swappedPlayers.push({
//               playerIn: selectedPlayer,
//               playerOut: newPlayer
//             })
//             swapPlayersInLineup(state, selectedPlayer.id, newPlayer.id);
//             state.selectedPlayer = null;
//           } else {
//             showError("Cant swap to starting player");
//           }
//         } else {
//           state.selectedPlayer = newPlayer;
//         }
//       } else {
//         if (selectedPlayer) {
//           if (selectedPlayer.isStarting) {
//             const oldIndex = state.swappedPlayers.findIndex(s => s.playerIn.id === selectedPlayer?.id);
//             if (oldIndex !== -1) {
//               selectedPlayer = state.swappedPlayers[oldIndex].playerOut;
//               state.swappedPlayers.splice(oldIndex, 1);
//             }
//             state.swappedPlayers.push({
//               playerIn: newPlayer,
//               playerOut: selectedPlayer
//             })
//             swapPlayersInLineup(state, newPlayer.id, selectedPlayer.id);

//             state.selectedPlayer = null;
//           } else {
//             showError("Cant swap to benched player");
//           }
//         } else {
//           state.selectedPlayer = newPlayer;
//         }
//       }
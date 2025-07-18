import { createSlice, PayloadAction } from '@reduxjs/toolkit';
import { showError } from '@/utils/toastUtils'; // Assuming this utility exists for user feedback

// --- Constants for Formation Rules ---
const MIN_GK = 1;
const MIN_DEFS = 3;
const MIN_MIDS = 2;
const MIN_FRWS = 1;

interface PlayerSlot {
  id: number;
  allowed: boolean;
  player: GWFantasyPlayer | null;
}

interface PositionState {
  starters: PlayerSlot[];
  benched: PlayerSlot[];
}

interface myTeamState {
  positions: PositionState;
  totalPoints: number;
  transferedMade: number;
  transferdCost: number;
  chip: number | 0;
  swappedPlayers: { // This array tracks players involved in a swap action for display/undo
    playerIn: GWFantasyPlayer;
    playerOut: GWFantasyPlayer;
  }[];
  selectedPlayer: GWFantasyPlayer | null;
  formation: {
    goalkeepers: number;
    defenders: number;
    midfielders: number;
    forwards: number;
  };
  captainId: number | null; // ID of the player currently set as captain
  viceCaptainId: number | null; // ID of the player currently set as vice-captain
}

// --- Initial State ---
const initialState: myTeamState = {
  positions: {
    starters: [
      { id: 0, allowed: true, player: null },
      { id: 1, allowed: true, player: null },
      { id: 2, allowed: true, player: null },
      { id: 3, allowed: true, player: null },
      { id: 4, allowed: true, player: null },
      { id: 5, allowed: true, player: null },
      { id: 6, allowed: true, player: null },
      { id: 7, allowed: true, player: null },
      { id: 8, allowed: true, player: null },
      { id: 9, allowed: true, player: null },
      { id: 10, allowed: true, player: null },
    ],
    benched: [
      { id: 11, allowed: true, player: null },
      { id: 12, allowed: true, player: null },
      { id: 13, allowed: true, player: null },
      { id: 14, allowed: true, player: null },
    ],
  },
  totalPoints: 0,
  transferedMade: 0,
  transferdCost: 0,
  chip: 0,
  swappedPlayers: [],
  selectedPlayer: null,
  formation: {
    goalkeepers: 0,
    defenders: 0,
    midfielders: 0,
    forwards: 0,
  },
  captainId: null,
  viceCaptainId: null,
};


let serverInitialState: myTeamState | null = null;



// --- Redux Slice ---
const myTeamSlice = createSlice({
  name: 'myteam',
  initialState,
  reducers: {
    /**
     * Updates the 'allowed' status for all player slots based on current team state.
     * This is typically called after initial load or a major team change.
     */
    updatePlayerPermissions: (state) => {
      setAllowedPlayers(state);
    },

    /**
     * Handles player selection and swapping logic.
     * @param state The Immer draft state.
     * @param action PayloadAction containing the GWFantasyPlayer that was clicked.
     */
    swapPlayer: (state, action: PayloadAction<GWFantasyPlayer>) => {
      const newPlayer = action.payload; // The player that was just clicked
      const selectedPlayer = state.selectedPlayer; // The player previously selected for a swap

      if (selectedPlayer) {
        // Scenario 1: A player is already selected (attempting a swap or deselect)
        if (selectedPlayer.id === newPlayer.id) {
          // Case 1.1: Clicked player is the same as the selected player (Discard/Deselect)
          state.selectedPlayer = null;
          state.swappedPlayers = []; // Clear swapped players on discard
          setAllowedPlayers(state); // Reset allowed status based on current team
          showError('Swap selection discarded.');
        } else {
          // Case 1.2: Clicked player is different from the selected player (Perform Swap)
          // Find the slots for selectedPlayer and newPlayer
          let selectedPlayerSlot: PlayerSlot | undefined;
          let newPlayerSlot: PlayerSlot | undefined;

          // Search in starters
          selectedPlayerSlot = state.positions.starters.find(s => s.player?.id === selectedPlayer.id);
          newPlayerSlot = state.positions.starters.find(s => s.player?.id === newPlayer.id);

          // If not found in starters, search in benched
          if (!selectedPlayerSlot) {
            selectedPlayerSlot = state.positions.benched.find(s => s.player?.id === selectedPlayer.id);
          }
          if (!newPlayerSlot) {
            newPlayerSlot = state.positions.benched.find(s => s.player?.id === newPlayer.id);
          }

          if (selectedPlayerSlot && newPlayerSlot) {
            // Check if the target slot is allowed for the selected player
            // This is crucial to prevent invalid swaps.
            if (!newPlayerSlot.allowed) {
              showError(`Cannot swap ${selectedPlayer.player?.name} with ${newPlayer.player?.name}. Invalid position or formation.`);
              return; // Prevent the swap if not allowed
            }

            // Perform the actual swap of player objects
            const tempPlayer = selectedPlayerSlot.player; // Store player from selectedPlayer's slot
            selectedPlayerSlot.player = newPlayerSlot.player; // Move newPlayer to selectedPlayer's slot
            newPlayerSlot.player = tempPlayer; // Move selectedPlayer to newPlayer's slot

            // Update isStarting property for swapped players based on their new slots
            if (selectedPlayerSlot.player) {
              selectedPlayerSlot.player.isStarting = state.positions.starters.some(s => s.id === selectedPlayerSlot.id);
            }
            if (newPlayerSlot.player) {
              newPlayerSlot.player.isStarting = state.positions.starters.some(s => s.id === newPlayerSlot.id);
            }

            // Update `swappedPlayers` array
            // This array tracks players that have been moved for the current session,
            // useful for displaying changes or for a "confirm transfers" feature.
            state.swappedPlayers.push({
              playerIn: newPlayer, // The player that was clicked as the target
              playerOut: selectedPlayer // The player that was originally selected
            });

            state.selectedPlayer = null; // Clear selected player after swap
            state.formation = calculateFormation(state.positions.starters); // Recalculate formation
            setAllowedPlayers(state); // Reset allowed status based on new team setup
            showError(`Swapped ${selectedPlayer.player?.name} with ${newPlayer.player?.name}.`);

            // Check if captain/vice-captain moved to bench and deselect if so
            if (state.captainId === selectedPlayer.id && !selectedPlayerSlot.player?.isStarting) {
              state.captainId = null;
              showError(`${selectedPlayer.player?.name} moved to bench, un-captained.`);
            }
            if (state.viceCaptainId === selectedPlayer.id && !selectedPlayerSlot.player?.isStarting) {
              state.viceCaptainId = null;
              showError(`${selectedPlayer.player?.name} moved to bench, un-vice-captained.`);
            }
            if (state.captainId === newPlayer.id && !newPlayerSlot.player?.isStarting) {
              state.captainId = null;
              showError(`${newPlayer.player?.name} moved to bench, un-captained.`);
            }
            if (state.viceCaptainId === newPlayer.id && !newPlayerSlot.player?.isStarting) {
              state.viceCaptainId = null;
              showError(`${newPlayer.player?.name} moved to bench, un-vice-captained.`);
            }


          } else {
            showError('Could not find one or both players for swap.');
          }
        }
      } else {
        // Scenario 2: No player is selected (selecting a player to initiate a swap)
        state.selectedPlayer = newPlayer;
        setAllowedPlayers(state, newPlayer); // Set allowed slots based on the newly selected player
        showError(`Selected ${newPlayer.player?.name} for swap.`);
      }
    },

    /**
     * Sets a player as captain. Handles deselection and vice-captain conflicts.
     * @param state The Immer draft state.
     * @param action PayloadAction containing the GWFantasyPlayer to set as captain.
     */
    captainPlayer: (state, action: PayloadAction<GWFantasyPlayer>) => {
      const playerToCaptain = action.payload;

      // Ensure player is in starters
      const playerToBeCaptainedIndex = state.positions.starters.findIndex(s => s.player?.id === playerToCaptain.id);
      const oldCaptainIndex = state.positions.starters.findIndex(s => s.player?.isCaptain === true);

      if (playerToBeCaptainedIndex == -1 || oldCaptainIndex == -1) {
        showError('players not found in starting lineup');
        return;
      }

      if (!state.positions.starters[playerToBeCaptainedIndex].player || !state.positions.starters[oldCaptainIndex].player) {
        showError('Players data not found');
        return;
      }


      if (playerToCaptain.isViceCaptain) {
        state.positions.starters[playerToBeCaptainedIndex].player.isViceCaptain = false;
        state.positions.starters[oldCaptainIndex].player.isViceCaptain = true;
      }
      state.positions.starters[oldCaptainIndex].player.isCaptain = false;
      state.positions.starters[playerToBeCaptainedIndex].player.isCaptain = true;

      showError(`${playerToCaptain.player?.name} set as captain.`);
    },

    /**
     * Sets a player as vice-captain. Handles deselection and captain conflicts.
     * @param state The Immer draft state.
     * @param action PayloadAction containing the GWFantasyPlayer to set as vice-captain.
     */
    viceCaptainPlayer: (state, action: PayloadAction<GWFantasyPlayer>) => {

      const playerToCaptain = action.payload;

      // Ensure player is in starters
      const playerToBeCaptainedIndex = state.positions.starters.findIndex(s => s.player?.id === playerToCaptain.id);
      const oldCaptainIndex = state.positions.starters.findIndex(s => s.player?.isViceCaptain === true);

      if (playerToBeCaptainedIndex == -1 || oldCaptainIndex == -1) {
        showError('players not found in starting lineup');
        return;
      }

      if (!state.positions.starters[playerToBeCaptainedIndex].player || !state.positions.starters[oldCaptainIndex].player) {
        showError('Players data not found');
        return;
      }
      if (playerToCaptain.isCaptain) {
        state.positions.starters[playerToBeCaptainedIndex].player.isCaptain = false;
        state.positions.starters[oldCaptainIndex].player.isCaptain = true;
      }
      state.positions.starters[oldCaptainIndex].player.isViceCaptain =false;
      state.positions.starters[playerToBeCaptainedIndex].player.isViceCaptain = true;

      showError(`${playerToCaptain.player?.name} set as vice captain.`);
    },

    setmyTeamsFromServer: (
      state,
      action: PayloadAction<{
        totalPoints: number;
        transferedMade: number;
        transferdCost: number,
        chip: number,
        starters: GWFantasyPlayer[]
        benched: GWFantasyPlayer[]

      }>
    ) => {
      const { totalPoints, transferdCost, transferedMade, chip, starters, benched } = action.payload;
      const startersSlots = starters.map((p, index) => ({
        id: p.posNum ?? index,
        allowed: true,
        player: p
      }));

      const benchedSlots = benched.map((p, index) => ({
        id: p.posNum ?? index + 11,
        allowed: true,
        player: p
      }));

      const formation = {
        goalkeepers: starters.filter(p => p.player?.position === "Goalkeeper").length,
        defenders: starters.filter(p => p.player?.position === "Defender").length,
        midfielders: starters.filter(p => p.player?.position === "Midfielder").length,
        forwards: starters.filter(p => p.player?.position === "Forward").length,
      };


      const newState = {
        totalPoints,
        transferdCost,
        transferedMade,
        chip,
        positions: {
          starters: startersSlots,
          benched: benchedSlots
        },
        swappedPlayers: [],
        selectedPlayer: null,
        formation,
        captainId: null,
        viceCaptainId: null
      };

      serverInitialState = newState;

      state.positions = newState.positions;
      state.totalPoints = newState.totalPoints;
      state.transferdCost = newState.transferdCost;
      state.transferedMade = newState.transferedMade;
      state.chip = newState.chip;
      state.swappedPlayers = newState.swappedPlayers;
      state.selectedPlayer = newState.selectedPlayer;
      state.formation = newState.formation;
    },


    resetmyTeams: (state) => {
      if (serverInitialState) {
        return { ...serverInitialState };
      }
      return { ...initialState };
    },
  },
});

/**
 * Checks if a given formation meets the minimum requirements.
 * @param formation An object with counts for goalkeepers, defenders, midfielders, and forwards.
 * @returns True if the formation is valid, false otherwise.
 */
const isValidFormation = (formation: { goalkeepers: number; defenders: number; midfielders: number; forwards: number }) => {
  return (
    formation.goalkeepers >= MIN_GK &&
    formation.defenders >= MIN_DEFS &&
    formation.midfielders >= MIN_MIDS &&
    formation.forwards >= MIN_FRWS
  );
};

const checkValidPositionSwap = (formation: { goalkeepers: number; defenders: number; midfielders: number; forwards: number }, position: PlayerPosition | undefined) => {
  let res = false;
  switch (position) {
    case "Goalkeeper":
      res = formation.goalkeepers > MIN_GK;
      break;
    case "Defender":
      res = formation.defenders > MIN_DEFS;
      break;
    case "Midfielder":
      res = formation.midfielders > MIN_MIDS;
      break;
    case "Forward":
      res = formation.forwards > MIN_FRWS;
      break;
  }
  return res;
};
/**
 * Helper function to set the 'allowed' status for player slots based on selection state.
 * This function directly modifies the Immer 'draft' state.
 * @param state The Immer draft state of the myTeam slice.
 * @param selectedPlayer The player currently selected for a swap, or null if no player is selected.
 */
const setAllowedPlayers = (state: myTeamState, selectedPlayer: GWFantasyPlayer | null = null) => {


  if (!selectedPlayer) {
    // Scenario 1: No player is selected.
    // Allow all currently occupied slots to be selected to initiate a swap.
    state.positions.starters.forEach(slot => {
      if (slot.player) {
        slot.allowed = true;
      }
    });
    state.positions.benched.forEach(slot => {
      if (slot.player) {
        slot.allowed = true;
      }
    });

  } else {
    // Scenario 2: A player is selected. Determine valid target slots for this selectedPlayer.
    // Reset all allowed statuses first
    state.positions.starters.forEach(slot => {
      slot.allowed = false;
    });
    state.positions.benched.forEach(slot => {
      slot.allowed = false;
    });
    let isGk = selectedPlayer.player?.position === "Goalkeeper";
    if (selectedPlayer.isStarting) {
      state.positions.starters.forEach(slot => {
        if (slot.player) {
          slot.allowed = (slot.player.id === selectedPlayer.id);
        }
      });
      const isValidforPositionSwap = checkValidPositionSwap(state.formation, selectedPlayer.player?.position);
      state.positions.benched.forEach(slot => {
        if (slot.player) {
          slot.allowed = ((isValidforPositionSwap && slot.player.player?.position !== "Goalkeeper") || selectedPlayer.player?.position === slot.player.player?.position)
        }
      });
    } else {
      state.positions.benched.forEach(slot => {
        if (slot.player) {
          let pos = slot.player.player?.position;
          slot.allowed = (pos === "Goalkeeper" && isGk) || (pos !== "Goalkeeper" && !isGk);
        }
      });

      state.positions.starters.forEach(slot => {
        if (slot.player) {
          const isValidforPositionSwap = checkValidPositionSwap(state.formation, slot.player.player?.position);
          slot.allowed = (isValidforPositionSwap || selectedPlayer.player?.position === slot.player.player?.position)
        }
      });
    }
  }
};
/**
 * Calculates the current formation (count of players by position) from a list of starter slots.
 * @param starters An array of PlayerSlot objects representing the starting lineup.
 * @returns An object with counts for goalkeepers, defenders, midfielders, and forwards.
 */
const calculateFormation = (starters: PlayerSlot[]) => {
  let goalkeepers = 0;
  let defenders = 0;
  let midfielders = 0;
  let forwards = 0;

  starters.forEach(slot => {
    if (slot.player && slot.player.player) {
      // Ensure position is consistently lowercase for comparison
      const position = slot.player.player.position.toLowerCase();
      switch (position) {
        case "goalkeeper":
          goalkeepers++;
          break;
        case "defender":
          defenders++;
          break;
        case "midfielder":
          midfielders++;
          break;
        case "forward":
          forwards++;
          break;
      }
    }
  });
  return { goalkeepers, defenders, midfielders, forwards };
};

// --- Selectors (Pure Functions - do not modify state) ---

// Helper function to compare initial state from server with current state
// and identify players whose starting/benched status has changed.
// This is a selector, not a reducer, so it should not mutate state.
export const compareInitialStateToCurrentState = (currentState: myTeamState): { playerIn: GWFantasyPlayer, playerOut: GWFantasyPlayer }[] => {
  if (!serverInitialState) {
    console.warn("serverInitialState is not set. Cannot compare.");
    return [];
  }

  const newSwappedPlayers: { playerIn: GWFantasyPlayer, playerOut: GWFantasyPlayer }[] = [];

  // Create maps for quick lookup of player locations in both states
  const initialPlayerLocations = new Map<number, { slotId: number, isStarting: boolean, player: GWFantasyPlayer }>();
  const currentPlayerLocations = new Map<number, { slotId: number, isStarting: boolean, player: GWFantasyPlayer }>();

  serverInitialState.positions.starters.forEach(slot => {
    if (slot.player) initialPlayerLocations.set(slot.player.id, { slotId: slot.id, isStarting: true, player: slot.player });
  });
  serverInitialState.positions.benched.forEach(slot => {
    if (slot.player) initialPlayerLocations.set(slot.player.id, { slotId: slot.id, isStarting: false, player: slot.player });
  });

  currentState.positions.starters.forEach(slot => {
    if (slot.player) currentPlayerLocations.set(slot.player.id, { slotId: slot.id, isStarting: true, player: slot.player });
  });
  currentState.positions.benched.forEach(slot => {
    if (slot.player) currentPlayerLocations.set(slot.player.id, { slotId: slot.id, isStarting: false, player: slot.player });
  });

  // Iterate over players that were initially in starters
  initialPlayerLocations.forEach((initialLoc, playerId) => {
    const currentLoc = currentPlayerLocations.get(playerId);

    if (currentLoc && initialLoc.isStarting && !currentLoc.isStarting) {
      // Player moved from starter to bench
      const playerOut = initialLoc.player; // The player who moved out of starters
      // Find who replaced them in their original starter slot
      const playerIn = currentState.positions.starters.find(s => s.id === initialLoc.slotId)?.player;
      if (playerIn && playerOut) {
        // Ensure we don't add duplicates if a player moves multiple times
        if (!newSwappedPlayers.some(s => s.playerIn.id === playerIn.id && s.playerOut.id === playerOut.id)) {
          newSwappedPlayers.push({ playerIn, playerOut });
        }
      }
    }
  });

  // Iterate over players that were initially in benched
  initialPlayerLocations.forEach((initialLoc, playerId) => {
    const currentLoc = currentPlayerLocations.get(playerId);

    if (currentLoc && !initialLoc.isStarting && currentLoc.isStarting) {
      // Player moved from bench to starter
      const playerIn = initialLoc.player; // The player who moved into starters
      // Find who they replaced in the current starter slot
      const playerOut = serverInitialState?.positions.starters.find(s => s.id === currentLoc.slotId)?.player;
      if (playerIn && playerOut) {
        // Ensure we don't add duplicates
        if (!newSwappedPlayers.some(s => s.playerIn.id === playerIn.id && s.playerOut.id === playerOut.id)) {
          newSwappedPlayers.push({ playerIn, playerOut });
        }
      }
    }
  });

  return newSwappedPlayers;
};

export const selectStartersPlayers = (state: { myTeam: myTeamState }) => {
  if (!serverInitialState) return null;
  const groupedData = Object.groupBy(state.myTeam.positions.starters, ({ player }) => player.player.position);
  const groupedStarters = Object.values(groupedData);
  return groupedStarters;
};

export const selectBenchedPlayers = (state: { myTeam: myTeamState }) => {
  if (!serverInitialState) return null;
  return state.myTeam.positions.benched;
};

export const selectTotalPoints = (state: { myTeam: myTeamState }) => {
  return (serverInitialState) ? state.myTeam.totalPoints : "-";
};

// --- Export Actions and Reducer ---
export const {
  swapPlayer,
  captainPlayer,
  viceCaptainPlayer,
  resetmyTeams,
  setmyTeamsFromServer,
  updatePlayerPermissions
} = myTeamSlice.actions;

export default myTeamSlice.reducer;





import { PlayerPosition } from "../types/enums";

export const playerPositionBgClass: Record<PlayerPosition, string> = {
  [PlayerPosition.GoalKeeper]: 'bg-yellow-500',
  [PlayerPosition.Defender]: 'bg-blue-500',
  [PlayerPosition.Midfielder]: 'bg-green-500',
  [PlayerPosition.Forward]: 'bg-red-500',
};
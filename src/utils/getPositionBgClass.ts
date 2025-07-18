export const getPositionBgClass = (position: string): string => {
  switch (position.toUpperCase()) {
    case 'GOALKEEPER':
      return 'bg-yellow-500';
    case 'DEFENDER':
      return 'bg-blue-500';
    case 'MIDFIELDER':
      return 'bg-green-500';
    case 'FORWARD':
    case 'FWD':
    case 'FW':
      return 'bg-red-500';
    case 'ALL':
      return 'bg-gray-400';
    default:
      return 'bg-gray-300'; // fallback
  }
};

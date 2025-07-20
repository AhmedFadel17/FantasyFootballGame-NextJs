/**
 * Returns a 3-character short name for a given player position.
 * @param position - The full position name (e.g., "midfielder", "forward").
 * @returns The short name (e.g., "MID", "FRW").
 */
export function getPositionShortName(position: string): string {
    switch (position.toLowerCase()) {
        case "goalkeeper":
            return "GKP";
        case "defender":
            return "DEF";
        case "midfielder":
            return "MID";
        case "forward":
            return "FRW";
        default:
            return position.slice(0, 3).toUpperCase();
    }
}

/**
 * Returns a color code for a given player position.
 * @param position - The full position name.
 * @returns A hex color string.
 */
export function getPositionColor(position: string): string {
    switch (position.toLowerCase()) {
        case "goalkeeper":
            return "#1E90FF"; // Blue
        case "defender":
            return "#228B22"; // Green
        case "midfielder":
            return "#FFD700"; // Gold
        case "forward":
            return "#FF4500"; // Orange/Red
        default:
            return "#CCCCCC"; // Default gray
    }
}


/**
 * Returns a Tailwind CSS background color class for a given player position.
 * @param position - The full position name.
 * @returns A Tailwind CSS background class string.
 */
export function getPositionBgClass(position: string): string {
    switch (position.toLowerCase()) {
        case "goalkeeper":
            return "bg-yellow-500";
        case "defender":
            return "bg-blue-500";
        case "midfielder":
            return "bg-green-500";
        case "forward":
            return "bg-red-500";
        default:
            return "bg-gray-300";
    }
}
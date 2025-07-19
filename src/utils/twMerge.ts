// lib/utils.ts
import { type ClassValue, clsx } from 'clsx';
import { twMerge } from 'tailwind-merge';

/**
 * Tailwind class name utility to conditionally merge and deduplicate classes.
 * Used in ShadCN UI and most modern Tailwind setups.
 */
export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

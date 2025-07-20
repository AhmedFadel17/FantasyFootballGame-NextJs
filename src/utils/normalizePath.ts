export function normalizePath(path: string) {
  if (!path) return '/';
  let normalized = path.toLowerCase();
  if (normalized !== '/' && normalized.endsWith('/')) {
    normalized = normalized.slice(0, -1);
  }
  return normalized;
}
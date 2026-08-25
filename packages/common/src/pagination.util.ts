export function paginate<T>(items: T[], page = 1, limit = 20) {
  return items.slice((page - 1) * limit, page * limit);
}

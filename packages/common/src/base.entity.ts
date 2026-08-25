export abstract class BaseEntity {
  public id: string = Math.random().toString(36).slice(2);
  public createdAt: Date = new Date();
  public updatedAt: Date = new Date();
}

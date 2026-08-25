export class Logger {
  constructor(private name: string) {}
  info(msg: string) { console.log(`[${this.name}] ${msg}`); }
}

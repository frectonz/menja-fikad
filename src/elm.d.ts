declare module "*.elm" {
  interface ElmApp {
    init(options: { node?: HTMLElement | null; flags?: unknown }): {
      ports: {
        save: { subscribe(callback: (state: unknown) => void): void };
        playSound: { subscribe(callback: (name: string) => void): void };
      };
    };
  }

  const elmModule: ElmApp;

  export default elmModule;
}

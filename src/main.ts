import { PlayerIndex, upgradeMod } from "isaacscript-common";

export function main(): void {
  // Instantiate a new mod object, which grants the ability to add callback functions that
  // correspond to in-game events
  const mod = upgradeMod(RegisterMod("cheatingmod", 1));

  // Print an initialization message to the "log.txt" file
  Isaac.DebugString("cheatingmod initialized.");
}
interface CheatProgramStats {
  tears: number;
  damage: number;
  luck: number;
}
const saveData = {
  persistent: {
    unlocks: {
      cheatProgram: false,
      backupSave: false,
      markedCard: false,
      loadedDie: false,
    },
  },
  run: {
    cheatProgramStats: new Map<PlayerIndex, CheatProgramStats>(),
    hasBackupSaveActivated: false,
  },
};

import {
  addFlag,
  addTearsStat,
  anyPlayerHasCollectible,
  getMaxCollectibleID,
  getPlayerIndex,
  ModCallbacksCustom,
  PlayerIndex,
  saveDataManager,
  upgradeMod,
  willPlayerRevive,
} from "isaacscript-common";

export function main(): void {
  const mod = upgradeMod(RegisterMod("cheatingMod", 1));

  saveDataManager("Cheating Mod", v);
  mod.AddCallback(ModCallbacks.MC_POST_GET_COLLECTIBLE, getCollectible);
  mod.AddCallback(ModCallbacks.MC_USE_ITEM, useItem);
  mod.AddCallback(ModCallbacks.MC_USE_CARD, useCard);
  mod.AddCallback(ModCallbacks.MC_GET_CARD, getCard);
  mod.AddCallback(ModCallbacks.MC_EVALUATE_CACHE, evalCache);
  mod.AddCallbackCustom(
    ModCallbacksCustom.MC_POST_PLAYER_FATAL_DAMAGE,
    postPlayerFatalDamage,
  );
}
interface CheatProgramStats {
  tears: number;
  damage: number;
  luck: number;
}
function postPlayerFatalDamage(player: EntityPlayer) {
  const backSave = Isaac.GetItemIdByName("Backup Save");
  if (!willPlayerRevive(player) && player.HasCollectible(backSave)) {
    Isaac.ExecuteCommand("stage 1");
    player.RemoveCollectible(backSave);
    for (let i = 0; i < getMaxCollectibleID(); i++) {
      for (let _ = 0; _ < player.GetCollectibleNum(i); _++) {
        player.RemoveCollectible(i);
      }
    }
    Game().TimeCounter = 0;
    return false;
  }
  return undefined;
}
function getCard(rng: RNG, card: Card): Card | undefined {
  if (
    anyPlayerHasCollectible(Isaac.GetTrinketIdByName("Marked Card")) &&
    card < 22 &&
    rng.RandomFloat() < 1 / 5
  ) {
    return card + 55;
  }
  return undefined;
}
function getCollectible(
  collectibleType: CollectibleType,
  itemPool: ItemPoolType,
  decrease: boolean,
  seed: number,
): number | undefined {
  if (
    v.run.hasBackupSaveActivated &&
    collectibleType === Isaac.GetItemIdByName("Backup Save")
  ) {
    return CollectibleType.COLLECTIBLE_POOP;
  }
  if (!v.room.rerolling) return undefined;
  const itemConfig = Isaac.GetItemConfig();
  const collectibleConfig = itemConfig.GetCollectible(collectibleType);
  const reroll =
    collectibleConfig === undefined ||
    collectibleConfig.Quality <= 1 ||
    (collectibleConfig.Quality === 2 && RNG().RandomFloat() > 1 / 3);
  if (!reroll) return undefined;
  v.room.rerolling = false;
  return Game().GetItemPool().GetCollectible(itemPool, decrease, seed);
}
function useItem(item: CollectibleType, rng: RNG, player: EntityPlayer) {
  if (
    item === CollectibleType.COLLECTIBLE_D6 ||
    item === CollectibleType.COLLECTIBLE_ETERNAL_D6 ||
    item === CollectibleType.COLLECTIBLE_D100
  ) {
    v.room.rerolling = player.HasTrinket(
      Isaac.GetTrinketIdByName("Loaded Die"),
    );
  }
  if (item === Isaac.GetItemIdByName("Cheat Program")) {
    let stats = v.run.cheatProgramStats.get(getPlayerIndex(player));
    if (stats === undefined) {
      stats = {
        tears: 0,
        damage: 0,
        luck: 0,
      };
      v.run.cheatProgramStats.set(getPlayerIndex(player), stats);
    }
    switch (rng.RandomInt(3)) {
      case 0:
        stats.damage += 0.5;
        break;
      case 1:
        stats.luck += 0.5;
        break;
      case 2:
        stats.tears += 0.5;
        break;
      default:
        break;
    }
    v.run.cheatProgramStats.set(getPlayerIndex(player), stats);
    player.AddCacheFlags(
      addFlag(
        CacheFlag.CACHE_LUCK,
        CacheFlag.CACHE_DAMAGE,
        CacheFlag.CACHE_FIREDELAY,
      ),
    );
    player.EvaluateItems();
  }
}
function evalCache(player: EntityPlayer, cacheFlag: CacheFlag) {
  const stat = v.run.cheatProgramStats.get(getPlayerIndex(player));
  if (stat === undefined) return;
  switch (cacheFlag) {
    case CacheFlag.CACHE_DAMAGE:
      player.Damage += stat.damage;
      break;
    case CacheFlag.CACHE_FIREDELAY:
      addTearsStat(player, stat.tears);
      break;
    case CacheFlag.CACHE_LUCK:
      player.Luck += stat.luck;
      break;
    default:
      break;
  }
}
function useCard(card: Card, player: EntityPlayer) {
  v.room.rerolling =
    (card === Card.RUNE_PERTHRO ||
      card === Card.CARD_SOUL_EDEN ||
      card === Card.CARD_SOUL_ISAAC) &&
    player.HasTrinket(Isaac.GetTrinketIdByName("Loaded Die"));
}
const v = {
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
  room: {
    rerolling: false,
  },
};

# Installation Guide — inv_gui

## Requirements

- Minecraft Java Edition 1.20.2 – 1.20.4
- The following datapacks loaded in order:
  1. [Oh! My Dat!](https://github.com/Ai-Akaishi/OhMyDat)
  2. [Close Detector](https://github.com/Ai-Akaishi/CloseDetector)
  3. [Player Item Tuner](https://github.com/Ai-Akaishi/PlayerItemTuner)
  4. **inv_gui** (this pack)

## Steps

### 1. Copy to Datapacks Folder

```
world/
  datapacks/
    OhMyDat/
    CloseDetector/
    PlayerItemTuner/
    inv_gui/
```

### 2. Load / Reload

```mcfunction
/reload
```

### 3. Run Setup per Dimension

`inv_gui:dataapi/setup` must be run **inside** the target dimension.  
Use `execute in` to ensure correct dimension context:

```mcfunction
/execute in minecraft:overworld run function inv_gui:dataapi/setup
/execute in minecraft:the_nether run function inv_gui:dataapi/setup
/execute in minecraft:the_end run function inv_gui:dataapi/setup
```

Only run setup in dimensions where you intend to use inv_gui menus.

### 4. Verify

```mcfunction
/data get storage inv_gui:data Version
```

Output should be `"1.0.0"`.

---

## Coordinate Restriction

Three shulker boxes must always be present at:
- `10000 0 10000` — I/O container
- `10000 1 10000` — Item registry container
- `10000 2 10000` — Menu build container

Do **not** use these coordinates for any other purpose.

---

## Reset

To fully reset inv_gui state:

```mcfunction
scoreboard objectives remove InvGui
scoreboard objectives remove InvGui.Id
scoreboard objectives remove InvGui.Drop
data remove storage inv_gui:data Version
setblock 10000 0 10000 minecraft:air
setblock 10000 1 10000 minecraft:air
setblock 10000 2 10000 minecraft:air
```

After resetting, run `inv_gui:dataapi/setup` again.

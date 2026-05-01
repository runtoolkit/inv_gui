# API Reference — inv_gui

## Overview

inv_gui is built on two main flows:

1. **Register → Build** — Register items, then build the menu
2. **Callback** — When a player clicks, the listener is triggered

---

## `inv_gui:dataapi/setup`

Prepares the dimension: sets up forceload and container blocks.  
Must be run once per dimension using `execute in`:

```mcfunction
execute in minecraft:overworld run function inv_gui:dataapi/setup
execute in minecraft:the_nether run function inv_gui:dataapi/setup
execute in minecraft:the_end run function inv_gui:dataapi/setup
```

---

## `inv_gui:dataapi/register_item/button`

Registers an item as a **clickable button**.

**Input:**
| Location | Field | Description |
|---|---|---|
| `10000 0 10000 container.0` | — | The item to register |
| `inv_gui:data in.key` | string | Short key for this item (e.g. `"G"`) |
| `inv_gui:data in.listener` | string? | Listener name fired on click (optional) |
| `inv_gui:data in.isGlobal` | boolean? | Accessible from all dimensions (default: `false`) |

```mcfunction
item replace block 10000 0 10000 container.0 with minecraft:diamond
data modify storage inv_gui:data in.key set value "D"
data modify storage inv_gui:data in.listener set value "give_diamond"
function inv_gui:dataapi/register_item/button
```

---

## `inv_gui:dataapi/register_item/normal`

Registers an item as a **passive (non-clickable)** item.  
Same input format as `button`; `in.listener` is unused.

---

## `inv_gui:dataapi/register_item/variable`

Registers a **variable** item slot. The item from the player's inventory is placed in this slot.

---

## `inv_gui:dataapi/build/auto`

Builds the menu into the container the current player has open.  
Container type (Chest Minecart or Ender Chest) is detected automatically.

**Input:**
| Field | Description |
|---|---|
| `inv_gui:data in.id` | Unique menu identifier |
| `inv_gui:data in.contents` | `(string[] @ 9)[] @ 3` — 3 rows × 9 columns layout |

```mcfunction
data modify storage inv_gui:data in.contents append value [f, f, f, f, f, f, f, f, f]
data modify storage inv_gui:data in.contents append value [f, -, -, -, G, -, -, -, f]
data modify storage inv_gui:data in.contents append value [f, f, f, f, f, f, f, f, f]
data modify storage inv_gui:data in.id set value "main_menu"
function inv_gui:dataapi/build/auto
```

**Layout symbols:**
- `-` → Empty slot
- Any other string → Matches a previously registered item key

---

## `inv_gui:dataapi/build/chest_minecart`

Builds the menu directly into a Chest Minecart.

---

## `inv_gui:dataapi/build/ender_chest`

Builds the menu directly into an Ender Chest.

---

## `inv_gui:dataapi/set_menu`

Replaces the player's currently open menu with the specified ID.

```mcfunction
data modify storage inv_gui:data in.id set value "settings_menu"
function inv_gui:dataapi/set_menu
```

---

## `inv_gui:dataapi/unregister_item`

Removes a previously registered item from the registry.

---

## Callback System

When a player clicks a button, the following data is written to `inv_gui:data callback`:

```
inv_gui:data callback
  .id            Menu identifier
  .listener      Listener name of the clicked item
  .selectedItem  The clicked item (item NBT)
  .selectionType "CLICK" or "DROP"
  .otherItems    Other items in the menu (current state)
```

Use this in your listener function:

```mcfunction
#> mynamespace:main_menu/listener

execute if data storage inv_gui:data callback{listener:"give_diamond"} run give @s minecraft:diamond 1

# Build API can be used inside a callback to switch menus
execute if data storage inv_gui:data callback{listener:"settings"} run function mynamespace:settings_menu/
```

---

## Event Hooks

Add your own functions to these tags to listen to events:

| Tag | Event |
|---|---|
| `#inv_gui:datahandler/on_open/chest_minecart` | Chest Minecart opened |
| `#inv_gui:datahandler/on_open/ender_chest` | Ender Chest opened |
| `#inv_gui:datahandler/on_close/chest_minecart` | Chest Minecart closed |
| `#inv_gui:datahandler/on_close/ender_chest` | Ender Chest closed |
| `#inv_gui:datahandler/on_select/chest_minecart` | Item selected in Chest Minecart |
| `#inv_gui:datahandler/on_select/ender_chest` | Item selected in Ender Chest |

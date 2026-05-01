#> inv_gui:core/api/register_chest_minecart/encode_loop
# @within function inv_gui:core/api/register_chest_minecart/register
# @within function inv_gui:core/api/register_chest_minecart/encode_loop

# Write current bit number to storage (for macro)
    execute store result storage inv_gui:temp _rbit int 1 run scoreboard players get $_rbit Inv GUI

# Set tag corresponding to current bit (macro)
    function inv_gui:core/api/register_chest_minecart/encode_bit with storage inv_gui:temp
    data remove storage inv_gui:temp _rbit

# Shift to next bit (×2 → left shift 1)
    scoreboard players operation $TempIndex Inv GUI += $TempIndex Inv GUI

# Repeat until bit 0
    scoreboard players remove $_rbit Inv GUI 1
    execute if score $_rbit Inv GUI matches 0.. run function inv_gui:core/api/register_chest_minecart/encode_loop

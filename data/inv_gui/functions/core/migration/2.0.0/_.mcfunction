#> inv_gui:core/migration/2.0.0/_
# @within function inv_gui:core/load

# Version setup
    data modify storage inv_gui:data Version set value "2.0.0"


# Storage setup
    data modify storage inv_gui:core GlobalItemInfoMap set value []

# Scoreboard setup
    scoreboard objectives add Inv GUI dummy
    scoreboard objectives add Inv GUI.Id dummy
    scoreboard objectives add Inv GUI.Drop custom:minecraft.drop

# Score holder setup
    scoreboard players set $LocalItemSlotIndex Inv GUI 0
    scoreboard players set $MinecartIndex Inv GUI 0

# Constant setup
    scoreboard players set $65536 Inv GUI 65536

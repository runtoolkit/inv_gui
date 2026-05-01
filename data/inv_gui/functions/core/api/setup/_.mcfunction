#> inv_gui:core/api/setup/_
#
# Prepares the target dimension: sets up forceload and container blocks.
# The menu system will not function without running this first.
# Run inside the target dimension using: execute in <dimension> run function inv_gui:api/setup
#
# Container coordinates (forceload region: 10000 10000):
#   10000 0 10000 → I/O container (API parameters)
#   10000 1 10000 → Item registry container
#   10000 2 10000 → Menu build container
#
# @within function inv_gui:api/setup

# Keep the container region always loaded via forceload
    forceload add 10000 10000

# Place the I/O container and lock it with the InvGui lock
    setblock 10000 0 10000 minecraft:orange_shulker_box{Lock:"InvGui"}

# Place the item registry container
    setblock 10000 1 10000 minecraft:orange_shulker_box{Lock:"InvGui"}

# Place the menu build container
    setblock 10000 2 10000 minecraft:orange_shulker_box{Lock:"InvGui"}

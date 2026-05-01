#> inv_gui:core/load
#
# Called on load
#
# @within tag/function minecraft:load

# Version
execute unless data storage inv_gui:data Version run data modify storage inv_gui:data Version set value "1.0.0"

# Setup
function inv_gui:core/api/setup/_

#> inv_gui:datacore/common/api/set_menu/post
#
# Called after the SetMenu API runs.
#
# @within function inv_gui:datacore/api/set_menu/_

# If inside callback context, restore the backed-up callback.
    execute if data storage inv_gui:datacore {isInCallback:true} run data modify storage inv_gui:data callback set from storage inv_gui:datatemp/set_menu callback
    execute if data storage inv_gui:datacore {isInCallback:true} run data remove storage inv_gui:datatemp/set_menu callback

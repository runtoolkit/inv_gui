#> inv_gui:datacore/common/api/build/post
#
# Restores the backed-up callback context after the Build API runs.
#
# @within function inv_gui:datacore/api/build/*/_

# If inside callback context, restore the backed-up callback.
    execute if data storage inv_gui:datacore {isInCallback:true} run data modify storage inv_gui:data callback set from storage inv_gui:datatemp/build callback
    execute if data storage inv_gui:datacore {isInCallback:true} run data remove storage inv_gui:datatemp/build callback

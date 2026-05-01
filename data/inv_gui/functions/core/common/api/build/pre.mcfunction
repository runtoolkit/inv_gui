#> inv_gui:core/common/api/build/pre
#
# Saves the callback context before the Build API runs.
#
# @within function inv_gui:core/api/build/*/_

# If inside callback context, back up current callback to temporary storage.
    execute if data storage inv_gui:core {isInCallback:true} run data modify storage inv_gui:datatemp/build callback set from storage inv_gui:data callback
    execute if data storage inv_gui:core {isInCallback:true} run data remove storage inv_gui:data callback

# If called from on_select, mark that the Build API has been used.
    execute if data storage inv_gui:core {CalledOnSelect:true} run data modify storage inv_gui:core CalledBuildApi set value true

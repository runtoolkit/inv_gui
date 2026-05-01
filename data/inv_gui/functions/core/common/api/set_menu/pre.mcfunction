#> inv_gui:core/common/api/set_menu/pre
#
# SetMenuAPIの実行前に呼び出される
#
# @within function inv_gui:core/api/set_menu/_

# Callback bağlamındaysa mevcut callback'i geçici depoya yedekle.
    execute if data storage inv_gui:core {isInCallback:true} run data modify storage inv_gui:temp/set_menu callback set from storage inv_gui: callback
    execute if data storage inv_gui:core {isInCallback:true} run data remove storage inv_gui: callback

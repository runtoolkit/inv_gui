#> inv_gui:core/common/api/set_menu/post
#
# SetMenuAPIの実行後に呼び出される
#
# @within function inv_gui:core/api/set_menu/_

# Callback bağlamındaysa yedeklenen callback'i geri yükle.
    execute if data storage inv_gui:core {isInCallback:true} run data modify storage inv_gui: callback set from storage inv_gui:temp/set_menu callback
    execute if data storage inv_gui:core {isInCallback:true} run data remove storage inv_gui:temp/set_menu callback

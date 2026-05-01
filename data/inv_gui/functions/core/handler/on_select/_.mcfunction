#> inv_gui:core/handler/on_select/_
#
# Oyuncu bir menü öğesini seçtiğinde çağrılır.
#
# @input
#   storage inv_gui:temp
#       SelectionType: "CLICK" | "DROP"
#           選択の種類
#
# @within function inv_gui:core/handler/*/_

## CalledOnSelect bayrağını true olarak işaretle.
    data modify storage inv_gui:core CalledOnSelect set value true


# Açık olan konteyner tipine göre işlem yolu seçer.
    function #oh_my_dat:please
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui{CurrentMenuType:"Minecart"} at @s run function inv_gui:core/handler/on_select/menu_type/chest_minecart/_
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui{CurrentMenuType:"EnderChest"} at @s run function inv_gui:core/handler/on_select/menu_type/ender_chest/_

# Geçici veriyi temizle.
    data remove storage inv_gui:temp SelectionType


## CalledOnSelect bayrağını temizle.
    data remove storage inv_gui:core CalledOnSelect

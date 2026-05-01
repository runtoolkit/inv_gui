#> inv_gui:core/emitter/check_item_click/_
#
# Oyuncunun tıkladığı öğeyi tespit eder ve tıklama olayını tetikler.
#
# @within function inv_gui:core/tick

# アイテムクリックを確認
    execute store success storage inv_gui:temp isClicked byte 1.0 run clear @s #inv_gui:all{InvGui:{isButton:true}}

# Öğe tıklandıysa tıklama olayını tetikle.
    execute if data storage inv_gui:temp {isClicked:true} run function inv_gui:core/handler/on_item_click/_

# Geçici veriyi temizle.
    data remove storage inv_gui:temp isClicked

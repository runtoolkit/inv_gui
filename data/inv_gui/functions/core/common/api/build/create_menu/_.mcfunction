#> inv_gui:core/common/api/build/create_menu/_
#
# メニューを作成する
#
# @input
#   storage inv_gui: in
#       id: any
#           作成するメニューの識別子
#       contents: (string[] @ 9)[] @ 3
#           作成するメニューの内容
#
# @output
#   vector 10000 2 10000
#       container.0~26
#           作成されたメニュー
#
# @within function inv_gui:core/api/build/**

#>
# @within function
#   inv_gui:core/common/api/build/**
    #declare score_holder $Slot


# contentsを平坦化
    data modify storage inv_gui:util in.array set from storage inv_gui: in.contents
    function inv_gui:util/array/flat

# contentsを代入
    data modify storage inv_gui:temp Contents set from storage inv_gui:util out.array
    function inv_gui:util/cleanup


# アイテムの配置を開始するスロットを設定
    execute store result score $Slot InvGui if data storage inv_gui:temp Contents[]
    scoreboard players remove $Slot InvGui 1

# アイテムを配置
    function inv_gui:core/common/api/build/create_menu/loop


# Geçici veriyi temizle.
    scoreboard players reset $Slot InvGui
    data remove storage inv_gui:temp Contents
    data remove storage inv_gui:temp Content
    data remove storage inv_gui:temp Slot
    data remove storage inv_gui:temp ItemInfo
    data remove storage inv_gui:temp isGlobalItemInfo

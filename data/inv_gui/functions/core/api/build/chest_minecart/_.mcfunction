#> inv_gui:core/api/build/chest_minecart/_
#
# @input
#   storage inv_gui: in
#       id: any
#       contents: (string[] @ 9)[] @ 3
#
# @within function inv_gui:api/build/chest_minecart

## pre
    function inv_gui:core/common/api/build/pre


# 実行者を登録
    function inv_gui:api/register_chest_minecart

# メニューを作成
    function inv_gui:core/common/api/build/create_menu/_


## post
    function inv_gui:core/common/api/build/post


# OhMyDatにメニューの情報を設定
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.MenuId set from storage inv_gui: in.id
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.Contents set from block 10000 2 10000 Items

# メニューを設定
    function inv_gui:core/api/build/chest_minecart/set_menu


# Menü oturumunu kapatır; geçici konteyner yuvalarını ve storage verilerini temizler.
    function inv_gui:core/common/api/build/close_session

# Geçici veriyi temizle.
    data remove storage inv_gui: in

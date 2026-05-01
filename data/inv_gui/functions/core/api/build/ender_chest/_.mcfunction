#> inv_gui:core/api/build/ender_chest/_
#
# @input
#   storage inv_gui: in
#       id: any
#       contents: (string[] @ 9)[] @ 3
#
# @within function inv_gui:api/build/ender_chest

## pre
    function inv_gui:core/common/api/build/pre


# メニューを作成
    function inv_gui:core/common/api/build/create_menu/_


## post
    function inv_gui:core/common/api/build/post


# OhMyDatにメニューの情報を設定
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.MenuId set from storage inv_gui: in.id
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.Contents set from block 10000 2 10000 Items

# メニューを設定
    function inv_gui:core/api/build/ender_chest/set_menu


# Menü oturumunu kapatır; geçici konteyner yuvalarını ve storage verilerini temizler.
    function inv_gui:core/common/api/build/close_session

# Geçici veriyi temizle.
    data remove storage inv_gui: in

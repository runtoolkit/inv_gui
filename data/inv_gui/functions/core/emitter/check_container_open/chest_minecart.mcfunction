#> inv_gui:core/emitter/check_container_open/chest_minecart
#
# チェスト付きトロッコを開いた動作をイベントとして発火する
#
# @within advancement inv_gui:on_container_open

# イベントを発火
    function inv_gui:core/handler/on_container_open/chest_minecart/_

# Geçici veriyi temizle.
    advancement revoke @s only inv_gui:on_container_open

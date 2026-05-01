#> inv_gui:core/emitter/check_container_close/ender_chest
#
# エンダーチェストを閉じた動作をイベントとして発火する
#
# @within tag/function close_detector:on_closed

# 閉じたチェストがエンダーチェスト -> イベントを発火
    execute if predicate open:ender_chest run function inv_gui:core/handler/on_container_close/ender_chest

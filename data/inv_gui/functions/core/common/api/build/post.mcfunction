#> inv_gui:core/common/api/build/post
#
# Build API çalıştıktan sonra yedeklenen callback bağlamını geri yükler.
#
# @within function inv_gui:core/api/build/*/_

# Callback bağlamındaysa yedeklenen callback'i geri yükle.
    execute if data storage inv_gui:core {isInCallback:true} run data modify storage inv_gui: callback set from storage inv_gui:temp/build callback
    execute if data storage inv_gui:core {isInCallback:true} run data remove storage inv_gui:temp/build callback

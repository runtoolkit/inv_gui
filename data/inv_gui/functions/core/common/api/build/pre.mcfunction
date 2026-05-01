#> inv_gui:core/common/api/build/pre
#
# Build API çalışmadan önce callback bağlamını yedekler.
#
# @within function inv_gui:core/api/build/*/_

# Callback bağlamındaysa mevcut callback'i geçici depoya yedekle.
    execute if data storage inv_gui:core {isInCallback:true} run data modify storage inv_gui:temp/build callback set from storage inv_gui: callback
    execute if data storage inv_gui:core {isInCallback:true} run data remove storage inv_gui: callback

# on_select içinden çağrıldıysa Build API'nin kullanıldığını işaretle.
    execute if data storage inv_gui:core {CalledOnSelect:true} run data modify storage inv_gui:core CalledBuildApi set value true

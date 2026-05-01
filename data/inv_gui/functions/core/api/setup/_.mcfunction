#> inv_gui:core/api/setup/_
#
# inv_gui'nin çalışacağı boyutta forceload ve konteyner yapısını kurar.
# Kurulum yapılmadan menü sistemi çalışmaz.
# Bu fonksiyonu sunucu başlangıcında veya /reload sonrasında boyut içinde çalıştırın.
#
# Konteyner koordinatları (forceload bölgesi: 10000 10000):
#   10000  0  10000 → Giriş/Çıkış konteyneri (API parametreleri için)
#   10000  1  10000 → Yerel öğe deposu (register işlemleri için)
#   10000  2  10000 → Menü oluşturma konteyneri (build işlemleri için)
#
# @within function inv_gui:api/setup

# Konteyner bölgesini forceload ile her zaman yüklü tut
    forceload add 10000 10000

# Giriş/Çıkış konteynerini yerleştir ve InvGui kilidiyle kilitle
    setblock 10000 0 10000 minecraft:orange_shulker_box{Lock:"InvGui"}

# Yerel öğe deposu konteynerini yerleştir
    setblock 10000 1 10000 minecraft:orange_shulker_box{Lock:"InvGui"}

# Menü oluşturma konteynerini yerleştir
    setblock 10000 2 10000 minecraft:orange_shulker_box{Lock:"InvGui"}

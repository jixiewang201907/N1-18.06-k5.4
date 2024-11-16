#!/bin/bash
cd openwrt
# remove wireless
rm -rf files/etc/config/wireless
rm -rf files/etc/modules.d/wireless_enable

# geodata
wget -q -cP files/usr/share/v2ray https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
wget -q -cP files/usr/share/v2ray https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat

# Add luci-theme-opentomcat
git clone https://github.com/jixiewang201907/luci-theme-opentomcat.git feeds/luci/applications/luci-theme-opentomcat

# Add luci-theme-argon
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/applications/luci-theme-argon

# Add amlogic
git clone https://github.com/ophub/luci-app-amlogic.git feeds/luci/applications/luci-app-amlogic

# Add luci-app-passwall
#git clone -b main https://github.com/xiaorouji/openwrt-passwall.git feeds/luci/applications/luci-app-passwall
git clone -b main https://github.com/xiaorouji/openwrt-passwall2.git feeds/luci/applications/luci-app-passwall2

Add luci-app-bypass
git clone https://github.com/jixiewang201907/by-pass.git feeds/luci/applications/by-pass

# Add luci-app-smartdns
git clone https://github.com/pymumu/openwrt-smartdns.git feeds/packages/net/smartdns
git clone https://github.com/pymumu/luci-app-smartdns.git feeds/luci/applications/luci-app-smartdns

# Add luci-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git feeds/luci/applications/luci-app-adguardhome

./scripts/feeds update -a
./scripts/feeds install -a

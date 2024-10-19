#!/bin/bash
cd openwrt
# wireless
rm -rf files/etc/config/wireless
rm -rf files/etc/modules.d/wireless_enable
# geodata
wget -q -cP files/usr/share/v2ray https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
wget -q -cP files/usr/share/v2ray https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat
# Add nantayo packages
git clone https://github.com/nantayo/My-Pkg package/my-pkg
# Add amlogic
git clone https://github.com/ophub/luci-app-amlogic.git package/luci-app-amlogic
# Add luci-app-passwall
git clone -b main https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
# Add luci-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome

./scripts/feeds update -a
./scripts/feeds install -a

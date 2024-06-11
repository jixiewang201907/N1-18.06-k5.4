#!/bin/bash
cd openwrt
# wireless
#rm -rf files/etc/config/wireless
#rm -rf files/etc/modules.d/wireless_enable
# Add luci-theme-opentomcat
git clone https://github.com/jixiewang201907/luci-theme-opentomcat.git package/luci-theme-opentomcat
# Add luci-theme-argon
#rm -rf package/lean/luci-theme-argon
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
# Add amlogic
git clone https://github.com/ophub/luci-app-amlogic.git package/luci-app-amlogic
# Add luci-app-passwall
git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
git clone https://github.com/jixiewang201907/luci-app-bypass.git package/luci-app-bypass
# Add luci-app-smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
# Add luci-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome

./scripts/feeds update -a
./scripts/feeds install -a

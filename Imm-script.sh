#!/bin/bash
cd openwrt
# wireless
#rm -rf files/etc/config/wireless
#rm -rf files/etc/modules.d/wireless_enable
# Add luci-theme-kucat
git clone https://github.com/sirpdboy/luci-theme-kucat.git package/luci-theme-kucat
# Add luci-theme-argon
#rm -rf package/lean/luci-theme-argon
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
# Add amlogic
git clone https://github.com/ophub/luci-app-amlogic.git package/luci-app-amlogic
# Add luci-app-passwall
git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
svn co https://github.com/kiddin9/openwrt-packages/tree/master/luci-app-bypass/ package/luci-app-bypass
# Add luci-app-smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
# Add luci-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome

./scripts/feeds update -a
./scripts/feeds install -a

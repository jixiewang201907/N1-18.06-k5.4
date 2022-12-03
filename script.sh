#!/bin/bash
cd openwrt
# wireless
#rm -rf files/etc/config/wireless
#rm -rf files/etc/modules.d/wireless_enable
# Add luci-theme-opentomcat
svn co https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/lean/luci-theme-opentomcat
# Add luci-theme-argon
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
# Add amlogic
svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/lean/luci-app-amlogic
# Add luci-app-passwall
git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/lean/luci-app-passwall
#svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-bypass package/lean/luci-app-bypass
# Add luci-app-smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns
# Add luci-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/lean/luci-app-adguardhome

./scripts/feeds update -a
./scripts/feeds install -a

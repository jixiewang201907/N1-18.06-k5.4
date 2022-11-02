#!/bin/bash
cd openwrt
# wireless
#rm -rf files/etc/config/wireless
#rm -rf files/etc/modules.d/wireless_enable
# 设置密码为空
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' https://github.com/immortalwrt/immortalwrt/blob/openwrt-21.02/package/base-files/files/etc/shadow
# Add luci-theme-opentomcat
svn co https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
# Add luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
# Add amlogic绠＄悊
svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/luci-app-amlogic
# Add luci-app-passwall
#git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
# Add luci-app-smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
# Add luci-app-adguardhome
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome

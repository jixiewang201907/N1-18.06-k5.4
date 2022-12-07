#!/bin/bash
cd openwrt
# wireless
#rm -rf files/etc/config/wireless
#rm -rf files/etc/modules.d/wireless_enable
# Add luci-theme-opentomcat
#svn co https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/lean/luci-theme-opentomcat
# Add luci-theme-argon
#rm -rf package/lean/luci-theme-argon
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
# Add amlogic
svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/luci-app-amlogic
# Add luci-app-passwall
git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-bypass package/luci-app-bypass
# Add luci-app-smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
# Add luci-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome

# 调整 bypass 到 GFW 菜单
sed -i 's/services/vpn/g' package/luci-app-bypass/luasrc/controller/*.lua
sed -i 's/services/vpn/g' package/luci-app-bypass/luasrc/model/cbi/bypass/*.lua
sed -i 's/services/vpn/g' package/luci-app-bypass/luasrc/view/bypass/*.htm

# 调整 SSRP 到 GFW 菜单
sed -i 's/services/vpn/g' package/luci-app-ssr-plus/luasrc/controller/*.lua
sed -i 's/services/vpn/g' package/luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/*.lua
sed -i 's/services/vpn/g' package/luci-app-ssr-plus/luasrc/view/shadowsocksr/*.htm

# 调整 Pass Wall 到 GFW 菜单
sed -i 's/services/vpn/g' package/passwall/luci-app-passwall/luasrc/controller/*.lua
sed -i 's/services/vpn/g' package/passwall/luci-app-passwall/luasrc/model/cbi/passwall/api/*.lua
sed -i 's/services/vpn/g' package/passwall/luci-app-passwall/luasrc/model/cbi/passwall/client/*.lua
sed -i 's/services/vpn/g' package/passwall/luci-app-passwall/luasrc/model/cbi/passwall/server/*.lua
sed -i 's/services/vpn/g' package/passwall/luci-app-passwall/luasrc/model/cbi/passwall/server/api/*.lua
sed -i 's/services/vpn/g' package/passwall/luci-app-passwall/luasrc/view/passwall/app_update/*.htm
sed -i 's/services/vpn/g' package/passwall/luci-app-passwall/luasrc/view/passwall/auto_switch/*.htm
sed -i 's/services/vpn/g' package/passwall/luci-app-passwall/luasrc/view/passwall/global/*.htm
sed -i 's/services/vpn/g' package/passwall/luci-app-passwall/luasrc/view/passwall/haproxy/*.htm
sed -i 's/services/vpn/g' package/passwall/luci-app-passwall/luasrc/view/passwall/log/*.htm
sed -i 's/services/vpn/g' package/passwall/luci-app-passwall/luasrc/view/passwall/node_list/*.htm
sed -i 's/services/vpn/g' package/passwall/luci-app-passwall/luasrc/view/passwall/rule/*.htm
sed -i 's/services/vpn/g' package/passwall/luci-app-passwall/luasrc/view/passwall/server/*.htm

./scripts/feeds update -a
./scripts/feeds install -a

# N1 OpenWrt 轻量固件--旁路专用 每周五早8点自动更新

**集成**
- 晶晨宝盒：安装 OpenWrt 至 EMMC、在线下载更新——>完整更新全系统；
- 插件SSR+、passwall、passwall2、nps、zerotier、kms、timectrol、KMS、网易云音乐解锁，其它服务略。
- SSR+加入hysteria支持

**旁路网关模式**
- DHCP关、wireless关
- 默认IP 192.168.1.200 网关192.168.1.1，关闭桥接，开启IPV6，取消分配前缀

**参考设置**
- 6.13更新取消smartdns及AdgHome，推荐使用passwall2平替功能
- 分流模式一定选择xray分流，直接选择节点会出现国内走国外的现象
- 国内dns选择自动，dns调整/etc/config/passwall2
- 国外dns自由选择
* 源码来源： Lean 的 Openwrt 源码仓库 https://github.com/coolsnowwolf/lede
- 脚本参考： https://github.com/huangqian8/Cloud-N1-OpenWrt | https://github.com/P3TERX/Actions-OpenWrt

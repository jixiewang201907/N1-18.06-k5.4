#!/bin/bash
cd openwrt
# Add a feed source
echo 'src-git SSRplus https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git kiddin9 https://github.com/kiddin9/openwrt-packages' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

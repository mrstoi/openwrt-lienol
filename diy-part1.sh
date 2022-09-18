#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
 echo 'src-git kenzok https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
 echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# echo 'src-git openclash https://github.com/vernesong/OpenClash' >>feeds.conf.default
git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff
# git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-rebootschedule package/luci-app-rebootschedule
# svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash

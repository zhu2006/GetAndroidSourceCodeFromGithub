#!/bin/bash

# --------------------------------------------------------------------------
# Filename:		gitandroid.sh
# Revision:		1.1
# Date:			2013/09/01
# Author:		Geek_Soledad  & psycho
# Email:		msdx.android@qq.com 
# WebSite:		http://maosidiaoxian.iteye.com
# Description:	a shell to download android source form github.com/android
# Modify:
# Revision	Author		comment
# 1.1		Geek_Soledad	compelete percent
# --------------------------------------------------------------------------
# Copyright (c) 2013 CFuture09, Institute of Software, 
# Guangdong Ocean University, Zhanjiang, GuangDong, China.
# All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


#根本目录
ROOT_DIR=`pwd`

ALL_REPO=0
DONE_REPO=0

#$1为保存的地址，$2为下载地址
function cloneit()
{
	cd ${ROOT_DIR}
        ((ALL_REPO++))
	if [ -d $1 ]
	then
		echo -e "\033[0;38;40m $2 has been git clone \033[0m"
		echo "git pull --depth 1 $1"
		cd $1
		git pull --depth 1
	else 
		echo -e "\033[0;31;40m git clone --depth=1 $2 $1 \033[0m"
		git clone --depth=1 $2 $1 
	fi
	local rtnvalue=$?
        if [[ 0 = ${rtnvalue} ]]
	then
		((DONE_REPO++))
	else
		echo "the return value is ${rtnvalue}"
	fi
	echo finish $(date) $1
	echo "done ${DONE_REPO} / ${ALL_REPO}  repo"
}

#下载路径
function cloneall()
{




	cloneit platform/build  https://github.com/android/platform_build.git
cloneit platform/system/core  https://github.com/android/platform_system_core.git
cloneit platform/dalvik  https://github.com/android/platform_dalvik.git
cloneit platform/external/protobuf  https://github.com/android/platform_external_protobuf.git
cloneit platform/manifest  https://github.com/android/platform_manifest.git
cloneit platform/external/zlib  https://github.com/android/platform_external_zlib.git
cloneit platform/bionic  https://github.com/android/platform_bionic.git
cloneit platform/external/qemu  https://github.com/android/platform_external_qemu.git
cloneit platform/external/emma  https://github.com/android/platform_external_emma.git
cloneit platform/hardware/libhardware  https://github.com/android/platform_hardware_libhardware.git
cloneit platform/frameworks/base  https://github.com/android/platform_frameworks_base.git
cloneit kernel/common  https://github.com/android/kernel_common.git
cloneit platform/external/strace  https://github.com/android/platform_external_strace.git
cloneit platform/external/sqlite  https://github.com/android/platform_external_sqlite.git
cloneit platform/packages/apps/email  https://github.com/android/platform_packages_apps_email.git
cloneit platform/packages/providers/mediaprovider  https://github.com/android/platform_packages_providers_mediaprovider.git
cloneit platform/external/iptables  https://github.com/android/platform_external_iptables.git
cloneit platform/external/freetype  https://github.com/android/platform_external_freetype.git
cloneit platform/packages/providers/downloadprovider  https://github.com/android/platform_packages_providers_downloadprovider.git
cloneit platform/packages/apps/settings  https://github.com/android/platform_packages_apps_settings.git
cloneit platform/packages/apps/stk  https://github.com/android/platform_packages_apps_stk.git
cloneit platform/development  https://github.com/android/platform_development.git
cloneit platform/frameworks/support  https://github.com/android/platform_frameworks_support.git
cloneit platform/packages/providers/contactsprovider  https://github.com/android/platform_packages_providers_contactsprovider.git
cloneit platform/packages/apps/soundrecorder  https://github.com/android/platform_packages_apps_soundrecorder.git
cloneit platform/packages/providers/calendarprovider  https://github.com/android/platform_packages_providers_calendarprovider.git
cloneit platform/external/libxml2  https://github.com/android/platform_external_libxml2.git
cloneit platform/external/elfutils  https://github.com/android/platform_external_elfutils.git
cloneit platform/packages/apps/camera  https://github.com/android/platform_packages_apps_camera.git
cloneit platform/external/tcpdump  https://github.com/android/platform_external_tcpdump.git
cloneit platform/external/expat  https://github.com/android/platform_external_expat.git
cloneit platform/external/netperf  https://github.com/android/platform_external_netperf.git
cloneit platform/packages/apps/music  https://github.com/android/platform_packages_apps_music.git
cloneit platform/packages/apps/htmlviewer  https://github.com/android/platform_packages_apps_htmlviewer.git
cloneit platform/packages/apps/calendar  https://github.com/android/platform_packages_apps_calendar.git
cloneit platform/hardware/ril  https://github.com/android/platform_hardware_ril.git
cloneit platform/packages/apps/browser  https://github.com/android/platform_packages_apps_browser.git
cloneit platform/packages/apps/calculator  https://github.com/android/platform_packages_apps_calculator.git
cloneit platform/external/fdlibm  https://github.com/android/platform_external_fdlibm.git
cloneit platform/packages/apps/contacts  https://github.com/android/platform_packages_apps_contacts.git
cloneit platform/external/giflib  https://github.com/android/platform_external_giflib.git
cloneit platform/external/neven  https://github.com/android/platform_external_neven.git
cloneit platform/external/apache-http  https://github.com/android/platform_external_apache-http.git
cloneit platform/external/skia  https://github.com/android/platform_external_skia.git
cloneit platform/external/jdiff  https://github.com/android/platform_external_jdiff.git
cloneit platform/external/ppp  https://github.com/android/platform_external_ppp.git
cloneit platform/external/yaffs2  https://github.com/android/platform_external_yaffs2.git
cloneit platform/external/libpcap  https://github.com/android/platform_external_libpcap.git
cloneit platform/packages/providers/telephonyprovider  https://github.com/android/platform_packages_providers_telephonyprovider.git
cloneit platform/external/openssl  https://github.com/android/platform_external_openssl.git
cloneit platform/external/jhead  https://github.com/android/platform_external_jhead.git
cloneit platform/external/netcat  https://github.com/android/platform_external_netcat.git
cloneit platform/external/dhcpcd  https://github.com/android/platform_external_dhcpcd.git
cloneit platform/packages/apps/phone  https://github.com/android/platform_packages_apps_phone.git
cloneit platform/external/oprofile  https://github.com/android/platform_external_oprofile.git
cloneit platform/external/tagsoup  https://github.com/android/platform_external_tagsoup.git
cloneit platform/external/tinyxml  https://github.com/android/platform_external_tinyxml.git
cloneit platform/external/sonivox  https://github.com/android/platform_external_sonivox.git
cloneit platform/external/safe-iop  https://github.com/android/platform_external_safe-iop.git
cloneit platform/external/jpeg  https://github.com/android/platform_external_jpeg.git
cloneit platform/packages/apps/mms  https://github.com/android/platform_packages_apps_mms.git
cloneit platform/packages/apps/packageinstaller  https://github.com/android/platform_packages_apps_packageinstaller.git
cloneit platform/external/libpng  https://github.com/android/platform_external_libpng.git
cloneit platform/external/esd  https://github.com/android/platform_external_esd.git
cloneit kernel/msm  https://github.com/android/kernel_msm.git
cloneit platform/external/srec  https://github.com/android/platform_external_srec.git
cloneit platform/packages/apps/voicedialer  https://github.com/android/platform_packages_apps_voicedialer.git
cloneit tools/repo  https://github.com/android/tools_repo.git
cloneit art  https://github.com/android/art.git
cloneit platform/external/webkit  https://github.com/android/platform_external_webkit.git
cloneit platform/external/libffi  https://github.com/android/platform_external_libffi.git
cloneit platform/external/icu4c  https://github.com/android/platform_external_icu4c.git
cloneit platform/external/dropbear  https://github.com/android/platform_external_dropbear.git
cloneit platform/system/bluetooth  https://github.com/android/platform_system_bluetooth.git
cloneit platform/prebuilt  https://github.com/android/platform_prebuilt.git
cloneit platform/packages/providers/drmprovider  https://github.com/android/platform_packages_providers_drmprovider.git
cloneit platform/external/ping  https://github.com/android/platform_external_ping.git
cloneit platform/external/dbus  https://github.com/android/platform_external_dbus.git
cloneit android.github.io  https://github.com/android/android.github.io.git
cloneit platform/external/wpa/supplicant  https://github.com/android/platform_external_wpa_supplicant.git
cloneit platform/packages/apps/googlesearch  https://github.com/android/platform_packages_apps_googlesearch.git
cloneit platform/system/wlan/ti  https://github.com/android/platform_system_wlan_ti.git
cloneit platform/packages/providers/googlecontactsprovider  https://github.com/android/platform_packages_providers_googlecontactsprovider.git
cloneit platform/packages/apps/im  https://github.com/android/platform_packages_apps_im.git
cloneit platform/packages/providers/improvider  https://github.com/android/platform_packages_providers_improvider.git
cloneit platform/external/tremor  https://github.com/android/platform_external_tremor.git
cloneit platform/packages/apps/sync  https://github.com/android/platform_packages_apps_sync.git
cloneit platform/packages/apps/alarmclock  https://github.com/android/platform_packages_apps_alarmclock.git
cloneit platform/external/aes  https://github.com/android/platform_external_aes.git
cloneit platform/external/clearsilver  https://github.com/android/platform_external_clearsilver.git
cloneit platform/external/googleclient  https://github.com/android/platform_external_googleclient.git
cloneit platform/packages/apps/launcher  https://github.com/android/platform_packages_apps_launcher.git
cloneit platform/external/bluez  https://github.com/android/platform_external_bluez.git
cloneit platform/external/gdata  https://github.com/android/platform_external_gdata.git
cloneit platform/frameworks/opt/com.google.android  https://github.com/android/platform_frameworks_opt_com.google.android.git
cloneit platform/external/elfcopy  https://github.com/android/platform_external_elfcopy.git
cloneit platform/frameworks/policies/base  https://github.com/android/platform_frameworks_policies_base.git
cloneit platform/packages/apps/updater  https://github.com/android/platform_packages_apps_updater.git
cloneit platform/external/opencore  https://github.com/android/platform_external_opencore.git

}

LOGDIR=log
if [ ! -d "${LOGDIR}" ]
then
    mkdir ${LOGDIR}
fi
LOGFILE=${LOGDIR}/`date +%m%d%H%M%S`.log
cloneall | tee -a ${LOGFILE}


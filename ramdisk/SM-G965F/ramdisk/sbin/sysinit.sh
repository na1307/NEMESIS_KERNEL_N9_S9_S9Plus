#!/system/bin/sh
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

mount -o remount,rw /;
mount -o rw,remount /system

# Credits to Mwilky

if [ -f /data/magisk.apk ]; then
	pm install /data/magisk.apk
	rm /data/magisk.apk
elif [ -f /data/adb/magisk/magisk.apk ]; then
	mv /data/adb/magisk/magisk.apk /data/magisk.apk
	pm install -r /data/magisk.apk
	rm /data/magisk.apk
fi;

if [ -z "$(ls -A /data/dalvik-cache/arm64)" ]; then
   sleep 1
   reboot
fi;

# init.d support
if [ ! -e /system/etc/init.d ]; then
	mkdir /system/etc/init.d
	chown -R root.root /system/etc/init.d
	chmod -R 755 /system/etc/init.d
	rm -f /vendor/app/mcRegistry/ffffffffd00000000000000000000062.tlbin
	rm -f /system/bin/pa_daemon
fi

# start init.d
for FILE in /system/etc/init.d/*; do
	sh $FILE >/dev/null
done;

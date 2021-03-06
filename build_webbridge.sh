cd webbridge
mkdir -p build/debug
cd build/debug
rm CMakeCache.txt
cmake ../.. \
  -DCMAKE_BUILD_TYPE=Debug \
  -DCMAKE_INSTALL_PREFIX="/usr/local" \
  -DBUILD_SHARED_LIBS=ON \
  -DWEBBRIDGE_PLUGIN_BROWSER=OFF \
  -DWEBBRIDGE_PLUGIN_DEVICEINFO=ON \
  -DWEBBRIDGE_PLUGIN_DIALSERVER=OFF \
  -DWEBBRIDGE_PLUGIN_LOCATIONSYNC=ON \
  -DWEBBRIDGE_PLUGIN_MONITOR=ON \
  -DWEBBRIDGE_PLUGIN_NETFLIX=OFF \
  -DWEBBRIDGE_PLUGIN_OPENCDMI=OFF \
  -DWEBBRIDGE_PLUGIN_PROFILERCONTROL=ON \
  -DWEBBRIDGE_PLUGIN_PROVISIONING=OFF \
  -DWEBBRIDGE_PLUGIN_REMOTECONTROL=ON \
  -DWEBBRIDGE_PLUGIN_SKELETON_SOCKET_PLUGIN=ON \
  -DWEBBRIDGE_PLUGIN_SKELETON_WEB_PLUGIN=ON \
  -DWEBBRIDGE_PLUGIN_SNAPSHOT=OFF \
  -DWEBBRIDGE_PLUGIN_TIMESYNC=ON \
  -DWEBBRIDGE_PLUGIN_TRACECONTROL=ON \
  -DWEBBRIDGE_PLUGIN_VOICECONTROL=ON \
  -DWEBBRIDGE_PLUGIN_WEBKITBROWSER=OFF \
  -DWEBBRIDGE_PLUGIN_WEBPROXY=ON \
  -DWEBBRIDGE_PLUGIN_WEBSERVER=ON \
  -DWEBBRIDGE_IDLE_TIME=180 \
  -DWEBBRIDGE_WEB_UI=ON \
  -DWEBBRIDGE_PORT=8081 \
  -DWEBBRIDGE_BINDING="0.0.0.0" \
  -DWEBBRIDGE_IDLE_TIME=180 \
  -DWEBBRIDGE_PERSISTENT_PATH="/home/rene/workspace/metrological/persistentpath" \
  -DWEBBRIDGE_DATA_PATH="/usr/local/share/webbridge" \
  -DWEBBRIDGE_SYSTEM_PATH="/usr/local/lib/webbridge" \
  -DWEBBRIDGE_PROXYSTUB_PATH="/usr/local/lib/webbridge/proxystubs" \
  -DWEBBRIDGE_WEBSERVER_PATH="/home/rene/workspace/metrological/www" \
  -DWEBBRIDGE_CONFIG_INSTALL_PATH="/data/build_output/linux-x86_64/etc/webbridge" \
  -DLIBPROVISION_INCLUDE_DIR="/home/rene/workspace/metrological/libprovision/include" \
  -DLIBPROVISION_LIBRARY="/home/rene/workspace/metrological/libprovision/x86-64/libprovision.so" \
  -DCPPSDK_INCLUDE_DIRS="/home/rene/workspace/metrological" \
  -DCPPSDK_LIBDIR="/usr/local/lib"  -DWEBBRIDGE_PLUGIN_TRACECONTROL=ON
make
cd ../../..


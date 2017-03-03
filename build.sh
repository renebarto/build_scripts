./build_cppsdk_install.sh
cd cppsdk
mkdir -p build/debug
cd build/debug
rm CMakeCache.txt
cmake ../.. \
  -DCMAKE_BUILD_TYPE=Debug \
  -DCMAKE_INSTALL_PREFIX="/usr/local" \
  -DBUILD_SHARED_LIBS=ON \
  -DCPPSDK_PLATFORM=PC_UNIX \
  -DCPPSDK_GENERICS=ON \
  -DCPPSDK_CRYPTALGO=ON \
  -DCPPSDK_WEBSOCKET=ON \
  -DCPPSDK_TRACING=ON \
  -DCPPSDK_RPC=ON \
  -DCPPSDK_PROCESS=ON \
  -DINSTALL_HEADERS_TO_TARGET=ON
make
sudo make install
cd ../../..

# cd webbridge
# mkdir -p build/debug
# cd build/debug
# rm CMakeCache.txt
# cmake ../.. \
#   -DCMAKE_BUILD_TYPE=Debug \
#   -DCMAKE_INSTALL_PREFIX="/usr/local" \
#   -DBUILD_DOC=OFF \
#   -DBUILD_DOCS=OFF \
#   -DBUILD_EXAMPLE=OFF \
#   -DBUILD_EXAMPLES=OFF \
#   -DBUILD_TEST=OFF \
#   -DBUILD_TESTS=OFF \
#   -DBUILD_TESTING=OFF \
#   -DBUILD_SHARED_LIBS=ON \
#   -DLIBGENERICS_INCLUDE_DIR=../cppsdk \
#   -DLIBTRACING_INCLUDE_DIR=../cppsdk \
#   -DLIBCRYPTALGO_INCLUDE_DIR=../cppsdk \
#   -DLIBWEBSOCKET_INCLUDE_DIR=../cppsdk \
#   -DWEBBRIDGE_BUILD_VERSION=1.6.6 \
#   -DWEBBRIDGE_BUILD_HASH=3906ed4 \
#   -DWEBBRIDGE_BUILD_REF=3906ed43553cc55fc482b9ce3f1ebf04962b8bae \
#   -DWEBBRIDGE_BUILD_MAJOR=1 \
#   -DWEBBRIDGE_BUILD_MINOR=6 \
#   -DWEBBRIDGE_BUILD_REVISION=6 \
#   -DWEBBRIDGE_BUILD_TYPE=0 \
#   -DWEBBRIDGE_PLUGIN_TRACECONTROL=ON \
#   -DWEBBRIDGE_PLUGIN_MONITOR=ON \
#   -DWEBBRIDGE_PLUGIN_PROVISIONING=OFF \
#   -DWEBBRIDGE_PLUGIN_NETFLIX=OFF \
#   -DWEBBRIDGE_PLUGIN_WEBPROXY=ON \
#   -DWEBBRIDGE_PLUGIN_REMOTECONTROL=ON \
#   -DWEBBRIDGE_PLUGIN_DEVICEINFO=ON \
#   -DWEBBRIDGE_PLUGIN_SNAPSHOT=OFF \
#   -DWEBBRIDGE_PLUGIN_WEBKITBROWSER=OFF \
#   -DWEBBRIDGE_PLUGIN_WEBSERVER=ON \
#   -DWEBBRIDGE_PLUGIN_WEBSERVER_PORT=8080 \
#   -DWEBBRIDGE_PLUGIN_WEBSERVER_BINDING="0.0.0.0" \
#   -DWEBBRIDGE_PLUGIN_WEBSERVER_INTERFACE="" \
#   -DWEBBRIDGE_PLUGIN_DIALSERVER=OFF \
#   -DWEBBRIDGE_IDLE_TIME=180 \
#   -DWEBBRIDGE_WEB_UI=ON \
#   -DWEBBRIDGE_PORT=8080 \
#   -DWEBBRIDGE_BINDING="0.0.0.0" \
#   -DWEBBRIDGE_IDLE_TIME=180 \
#   -DWEBBRIDGE_PERSISTENT_PATH="~/workspace/metrological/persistentpath" \
#   -DWEBBRIDGE_DATA_PATH="/usr/local/share/webbridge" \
#   -DWEBBRIDGE_SYSTEM_PATH="/usr/local/lib/webbridge" \
#   -DWEBBRIDGE_PROXYSTUB_PATH="/usr/local/lib/webbridge/proxystubs" \
#   -DWEBBRIDGE_WEBSERVER_PATH="~/workspace/metrological/www"
# make
# sudo make install
# cd ../../..

  # -DWEBBRIDGE_PLUGIN_PROVISIONING_AUTOPROVISION=true \
  # -DWEBBRIDGE_PLUGIN_NETFLIX_VERSION="1.6.6-dev" \
  # -DWEBBRIDGE_PLUGIN_NETFLIX_AUTOSTART=false \
  # -DWEBBRIDGE_PLUGIN_NETFLIX_STARTSUSPENDED=false \
  # -DWEBBRIDGE_PLUGIN_NETFLIX_MODEL="Metrological Reference DPI Implementation" \
  # -DWEBBRIDGE_PLUGIN_NETFLIX_KEYREPEATDELAY=500 \
  # -DWEBBRIDGE_PLUGIN_NETFLIX_KEYREPEATINTERVAL=200 \
  # -DWEBBRIDGE_PLUGIN_WEBKITBROWSER_AUTOSTART=true \
  # -DWEBBRIDGE_PLUGIN_WEBKITBROWSER_STARTURL="file:///www/index.html" \
  # -DWEBBRIDGE_PLUGIN_WEBKITBROWSER_USERAGENT="Mozilla/5.0 (Macintosh, Intel Mac OS X 10_11_4) AppleWebKit/602.1.28+ (KHTML, like Gecko) Version/9.1 Safari/601.5.17 WPE-Reference" \
  # -DWEBBRIDGE_PLUGIN_WEBKITBROWSER_MEMORYPROFILE="128m" \
  # -DWEBBRIDGE_PLUGIN_WEBKITBROWSER_MEMORYPRESSURE="databaseprocess:30m,networkprocess:50m,webprocess:170m,rpcprocess:50m" \
  # -DWEBBRIDGE_PLUGIN_WEBKITBROWSER_DISKCACHE="90m" \
  # -DWEBBRIDGE_PLUGIN_WEBKITBROWSER_YOUTUBE=ON \
  # -DWEBBRIDGE_PLUGIN_DIALSERVER=ON \
  # -DWEBBRIDGE_PLUGIN_DIALSERVER_NAME="[TV] WebBridge" \
  # -DWEBBRIDGE_PLUGIN_DIALSERVER_AUTOSTART=false \

# cppsdk
# cmake . -DCMAKE_BUILD_TYPE=Debug \
#   -DCMAKE_INSTALL_PREFIX="/usr" \
#   -DCMAKE_COLOR_MAKEFILE=OFF \
#   -DBUILD_DOC=OFF \
#   -DBUILD_DOCS=OFF \
#   -DBUILD_EXAMPLE=OFF \
#   -DBUILD_EXAMPLES=OFF \
#   -DBUILD_TEST=OFF \
#   -DBUILD_TESTS=OFF \
#   -DBUILD_TESTING=OFF \
#   -DBUILD_SHARED_LIBS=ON  \
#   -DBUILDREF_CPPSDK=3906ed43553cc55fc482b9ce3f1ebf04962b8bae \
#   -DCPPSDK_PLATFORM=UNIX_PC \
#   -DCPPSDK_GENERICS=ON \
#   -DCPPSDK_CRYPTALGO=ON \
#   -DCPPSDK_WEBSOCKET=ON \
#   -DCPPSDK_TRACING=ON \
#   -DCPPSDK_RPC=ON \
#   -DCPPSDK_PROCESS=ON

# playready
# cmake . -DCMAKE_BUILD_TYPE=Debug \
#   -DCMAKE_INSTALL_PREFIX="/usr/local" \
#   -DCMAKE_COLOR_MAKEFILE=OFF \
#   -DBUILD_DOC=OFF \
#   -DBUILD_DOCS=OFF \
#   -DBUILD_EXAMPLE=OFF \
#   -DBUILD_EXAMPLES=OFF \
#   -DBUILD_TEST=OFF \
#   -DBUILD_TESTS=OFF \
#   -DBUILD_TESTING=OFF \
#   -DBUILD_SHARED_LIBS=ON \
#   -DCMAKE_C_FLAGS="-std=c99 -D_GNU_SOURCE" \
#   -DPLAYREADY_USE_PROVISION=ON

# netflix
# cmake . -DCMAKE_BUILD_TYPE=Debug \
#   -DCMAKE_INSTALL_PREFIX="/usr/local" \
#   -DCMAKE_COLOR_MAKEFILE=OFF \
#   -DBUILD_DOC=OFF \
#   -DBUILD_DOCS=OFF \
#   -DBUILD_EXAMPLE=OFF \
#   -DBUILD_EXAMPLES=OFF \
#   -DBUILD_TEST=OFF \
#   -DBUILD_TESTS=OFF \
#   -DBUILD_TESTING=OFF \
#   -DBUILD_SHARED_LIBS=ON \
#   -DBUILD_DPI_DIRECTORY=partner/dpi \
#   -DCMAKE_INSTALL_PREFIX=/home/rene/workspace/buildroot-wpe/output/build/netflix-73475ce7675828498e497c52a9ebdda7888cf566/release \
#   -DCMAKE_OBJCOPY="/home/rene/workspace/buildroot-wpe/output/host/usr/bin/arm-buildroot-linux-gnueabihf-objcopy" \
#   -DCMAKE_STRIP="/home/rene/workspace/buildroot-wpe/output/host/usr/bin/arm-buildroot-linux-gnueabihf-strip" \
#   -DBUILD_COMPILE_RESOURCES=ON \
#   -DBUILD_SYMBOLS=OFF \
#   -DBUILD_SHARED_LIBS=OFF \
#   -DGIBBON_SCRIPT_JSC_DYNAMIC=OFF \
#   -DGIBBON_SCRIPT_JSC_DEBUG=OFF \
#   -DGIBBON_INPUT=devinput \
#   -DNRDP_HAS_IPV6=ON \
#   -DNRDP_TOOLS="manufSSgenerator" \
#   -DBUILD_DEBUG=OFF \
#   -DBUILD_PRODUCTION=ON \
#   -DGIBBON_MODE=shared \
#   -DGIBBON_GRAPHICS=rpi-egl \
#   -DGIBBON_PLATFORM=rpi \
#   -DGST_VIDEO_RENDERING=gl \
#   -DDPI_IMPLEMENTATION=gstreamer \
#   -DDPI_REFERENCE_DRM=playready \
#   -DNETFLIX_USE_PROVISION=ON \
#   -DCMAKE_C_FLAGS="-fPIC" \
#   -DCMAKE_CXX_FLAGS="-fPIC"

# wpe
# cmake . \
#   -DCMAKE_BUILD_TYPE=Debug \
#   -DCMAKE_INSTALL_PREFIX="/usr/local" \
#   -DCMAKE_COLOR_MAKEFILE=OFF \
#   -DBUILD_DOC=OFF \
#   -DBUILD_DOCS=OFF \
#   -DBUILD_EXAMPLE=OFF \
#   -DBUILD_EXAMPLES=OFF \
#   -DBUILD_TEST=OFF \
#   -DBUILD_TESTS=OFF \
#   -DBUILD_TESTING=OFF \
#   -DBUILD_SHARED_LIBS=ON \
#   -DPORT=WPE \
#   -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
#   -G Ninja \
#   -DCMAKE_C_FLAGS_RELEASE="-O2 -DNDEBUG -Wno-cast-align " \
#   -DCMAKE_CXX_FLAGS_RELEASE="-O2 -DNDEBUG -Wno-cast-align " \
#   -DENABLE_ACCELERATED_2D_CANVAS=ON \
#   -DENABLE_GEOLOCATION=ON \
#   -DENABLE_DEVICE_ORIENTATION=ON \
#   -DENABLE_GAMEPAD=ON \
#   -DENABLE_SUBTLE_CRYPTO=ON \
#   -DENABLE_FULLSCREEN_API=ON \
#   -DENABLE_NOTIFICATIONS=ON \
#   -DENABLE_DATABASE_PROCESS=ON \
#   -DENABLE_INDEXED_DATABASE=ON \
#   -DENABLE_FETCH_API=ON \
#   -DENABLE_SAMPLING_PROFILER=ON \
#   -DUSE_WPE_BACKEND_BCM_RPI=ON \
#   -DENABLE_VIDEO=ON \
#   -DENABLE_VIDEO_TRACK=ON \
#   -DENABLE_WEB_AUDIO=ON \
#   -DENABLE_MEDIA_SOURCE=ON \
#   -DENABLE_ENCRYPTED_MEDIA=ON \
#   -DENABLE_PLAYREADY=ON \
#   -DUSE_GSTREAMER_GL=ON \
#   -DUSE_GSTREAMER_WEBKIT_HTTP_SRC=ON

# webbridge
# cmake . \
#   -DCMAKE_BUILD_TYPE=Debug \
#   -DCMAKE_INSTALL_PREFIX="/usr/local" \
#   -DCMAKE_COLOR_MAKEFILE=OFF \
#   -DBUILD_DOC=OFF \
#   -DBUILD_DOCS=OFF \
#   -DBUILD_EXAMPLE=OFF \
#   -DBUILD_EXAMPLES=OFF \
#   -DBUILD_TEST=OFF \
#   -DBUILD_TESTS=OFF \
#   -DBUILD_TESTING=OFF \
#   -DBUILD_SHARED_LIBS=ON \
#   -DWEBBRIDGE_BUILD_VERSION=1.6.6 \
#   -DWEBBRIDGE_BUILD_HASH=3906ed4 \
#   -DWEBBRIDGE_BUILD_REF=3906ed43553cc55fc482b9ce3f1ebf04962b8bae \
#   -DWEBBRIDGE_BUILD_MAJOR=1 \
#   -DWEBBRIDGE_BUILD_MINOR=6 \
#   -DWEBBRIDGE_BUILD_REVISION=6 \
#   -DWEBBRIDGE_BUILD_TYPE=0 \
#   -DWEBBRIDGE_PLUGIN_TRACECONTROL=ON \
#   -DWEBBRIDGE_PLUGIN_MONITOR=ON \
#   -DWEBBRIDGE_PLUGIN_PROVISIONING=ON \
#   -DWEBBRIDGE_PLUGIN_PROVISIONING_AUTOPROVISION=true \
#   -DWEBBRIDGE_PLUGIN_NETFLIX=ON \
#   -DWEBBRIDGE_PLUGIN_NETFLIX_VERSION="1.6.6-dev" \
#   -DWEBBRIDGE_PLUGIN_NETFLIX_AUTOSTART=false \
#   -DWEBBRIDGE_PLUGIN_NETFLIX_STARTSUSPENDED=false \
#   -DWEBBRIDGE_PLUGIN_NETFLIX_MODEL="Metrological Reference DPI Implementation" \
#   -DWEBBRIDGE_PLUGIN_NETFLIX_KEYREPEATDELAY=500 \
#   -DWEBBRIDGE_PLUGIN_NETFLIX_KEYREPEATINTERVAL=200 \
#   -DWEBBRIDGE_PLUGIN_WEBPROXY=ON \
#   -DWEBBRIDGE_PLUGIN_REMOTECONTROL=ON \
#   -DWEBBRIDGE_PLUGIN_DEVICEINFO=ON \
#   -DWEBBRIDGE_PLUGIN_WEBKITBROWSER=ON \
#   -DWEBBRIDGE_PLUGIN_WEBKITBROWSER_AUTOSTART=true \
#   -DWEBBRIDGE_PLUGIN_WEBKITBROWSER_STARTURL="file:///www/index.html" \
#   -DWEBBRIDGE_PLUGIN_WEBKITBROWSER_USERAGENT="Mozilla/5.0 (Macintosh, Intel Mac OS X 10_11_4) AppleWebKit/602.1.28+ (KHTML, like Gecko) Version/9.1 Safari/601.5.17 WPE-Reference" \
#   -DWEBBRIDGE_PLUGIN_WEBKITBROWSER_MEMORYPROFILE="128m" \
#   -DWEBBRIDGE_PLUGIN_WEBKITBROWSER_MEMORYPRESSURE="databaseprocess:30m,networkprocess:50m,webprocess:170m,rpcprocess:50m" \
#   -DWEBBRIDGE_PLUGIN_WEBKITBROWSER_DISKCACHE="90m" \
#   -DWEBBRIDGE_PLUGIN_WEBKITBROWSER_YOUTUBE=ON \
#   -DWEBBRIDGE_PLUGIN_DIALSERVER=ON \
#   -DWEBBRIDGE_PLUGIN_DIALSERVER_NAME="[TV] WebBridge" \
#   -DWEBBRIDGE_PLUGIN_DIALSERVER_AUTOSTART=false \
#   -DWEBBRIDGE_PLUGIN_WEBSERVER=ON \
#   -DWEBBRIDGE_PLUGIN_WEBSERVER_PORT=8080 \
#   -DWEBBRIDGE_PLUGIN_WEBSERVER_BINDING="0.0.0.0" \
#   -DWEBBRIDGE_PLUGIN_WEBSERVER_INTERFACE="" \
#   -DWEBBRIDGE_IDLE_TIME=180 \
#   -DWEBBRIDGE_PLUGIN_SNAPSHOT=ON \
#   -DWEBBRIDGE_WEB_UI=ON \
#   -DWEBBRIDGE_PORT=80 \
#   -DWEBBRIDGE_BINDING="0.0.0.0" \
#   -DWEBBRIDGE_IDLE_TIME=180 \
#   -DWEBBRIDGE_PERSISTENT_PATH="/root" \
#   -DWEBBRIDGE_DATA_PATH="/usr/share/webbridge" \
#   -DWEBBRIDGE_SYSTEM_PATH="/usr/lib/webbridge" \
#   -DWEBBRIDGE_PROXYSTUB_PATH="/usr/lib/webbridge/proxystubs"
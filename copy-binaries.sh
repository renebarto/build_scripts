for file in $( find webbridge/build/debug/WebBridgeSupport -name '*.so' ); do
  cp -uv $file persistentpath; 
done
for file in $( find webbridge/build/debug/ProxyStubs -name '*.so' ); do
  cp -uv $file persistentpath; 
done
for file in $( find webbridge/build/debug/Plugins -name '*.so' ); do
  cp -uv $file persistentpath/Plugins; 
done
for file in $( find webbridge/build -name webbridge ); do
  cp -uv $file persistentpath; 
done


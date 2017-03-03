log=cppcheck_log.txt
report=cppcheck_report.txt

cores=$(grep -c '^processor' /proc/cpuinfo)
jobs=$((cores))

cppcheck -j ${jobs} --enable=all --project=build/clion/compile_commands.json -i build -i cmake -i cfg --inline-suppr --xml-version=2 ./ >${log} 2>${report}

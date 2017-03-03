echo -e "Exports:\n"
nm -D $1 | grep " T "
echo -e "\n\nDemangled exports:\n"
nm -DC $1 | grep " T "

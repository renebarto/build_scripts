echo -e "Imports:\n"
nm -D $1 | grep " U "
echo -e "Demangled imports :\n"
nm -DC $1 | grep " U "

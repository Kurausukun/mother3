# input is name of the function to be mangled
# output is mangled name

function searchfor() {
    for file in `find ./build/mother3 -name "*.o"`
    do
        nm $file | cut -d' ' -f3 | sed 's/\(.*\)/\1\n/' | sed '/^$/d' | grep $1
    done
}

# special case: destructor
if [ "${1#*~}" != "$1" ]
then
    # get the string length of the symbol name
    tmp=${1#*~}
    len=${#tmp}

    searchfor _._$len$tmp
    exit 0
fi

# check if argument contains qualified name (::)
if [ ${1#*::} != $1 ]
then
    #if so, set class name and function name
    class=${1%::*}
    function=${1#*::}

    # special case: constructor
    # check class and function name are identical
    if [ $class == $function ]
    then
        searchfor ^__${#function}$function
        exit 0
    fi
else
    class=""
    function=$1
fi

if [ -z "$class" ]
then
    searchfor $function
else
    searchfor $function.*__${#class}$class # qual name
fi

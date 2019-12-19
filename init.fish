env RHASH_VERSION=`rhash --version 2>/dev/null`

if test -z "$RHASH_VERSION" ; then
    echo "Please install rhash first. See https://github.com/rhash/RHash"
end
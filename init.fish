set RHASH_VERSION (rhashxx --version 2>/dev/null)

if test -z "$RHASH_VERSION"
    echo "Please install rhash first. See https://github.com/rhash/RHash"
end
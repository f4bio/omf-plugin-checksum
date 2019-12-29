# according to: https://fishshell.com/docs/current/faq.html
if test rhash
    set -gx RHASH_VERSION (rhash --version)
else
     echo "Please install rhash first. See https://github.com/rhash/RHash"
     exit 1
end
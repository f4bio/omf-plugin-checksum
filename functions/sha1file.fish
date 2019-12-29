function md5file -d "Install specific package(s) from the repositories"
	set argCnt (count $argv)
	set argFile $argv[1]

	if $argCnt == 0 or $argCnt > 2 or not test -f "$argv[1]"
		echo "usage: sha1file [path to file] [given sha1sum]"
		return
	end

	if count $argv == 1
		echo "rhash --sha1 $argv[1] > $argv[1].sha1"
		rhash --sha1 "$argv[1]" > "$argv[1].sha1"
	else if $argCnt == 2 and not test -f "$argv[1]"
		echo "$argv[1]" (basename "$argv[1]") | tee "$argv[1].sha1"
	end
	rhash -c "$argv[1]".sha1
end

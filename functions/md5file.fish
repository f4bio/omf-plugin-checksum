function md5file -d "Install specific package(s) from the repositories"
	set argCnt (count $argv)
	set argFile $argv[1]

	if $argCnt == 0 or $argCnt > 2 or not test -f "$argv[1]"
		echo "usage: md5file [path to file] [given md5sum]"
		return
	end

	if count $argv == 1
		echo "rhash --md5 $argv[1] > $argv[1].md5"
		rhash --md5 "$argv[1]" > "$argv[1].md5"
	else if $argCnt == 2 and not test -f "$argv[1]"
		echo "$argv[1]" (basename "$argv[1]") | tee "$argv[1].md5"
	end
	rhash -c "$argv[1]".md5
end

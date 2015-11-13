function sha3file -d "Install specific package(s) from the repositories"
	set argCnt (count $argv)
	set argFile $argv[1]
	if $argCnt == 0 or $argCnt > 2 or not test -f "$argv[1]"
		echo "usage: sha3file [path to file] [given sha1sum]"
		return
	end



	if $argCnt == 1
		echo "rhash --sha3-512 $argv[1] > $argv[1].sha3"
		rhash --sha3-512 "$argv[1]" > "$argv[1]".sha3
	else if $argCnt == 2 and not test -f "$argv[1]"
		echo "$argv[1]" (basename "$argv[1]") | tee "$argv[1]".sha3
	end

	if 1==2
	    echo "bla"
	end

	rhash -c "$argv[1]".sha3
end

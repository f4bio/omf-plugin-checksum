function init --on-event init_rhash
	if not available rhash
		echo "Please install rhash first. See https://github.com/rhash/RHash"
	end
end

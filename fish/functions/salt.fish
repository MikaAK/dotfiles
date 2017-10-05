function salt
	head -c 500 /dev/urandom | env LC_ALL=C tr -dc 'a-zA-Z0-9~!@#$%^&*_-' | fold -w $argv | head -n 1
end

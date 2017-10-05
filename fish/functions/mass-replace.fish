function mass-replace --wrap sed --description 'Mass replace in file [glob] [regex] [replacement] [modifier]'
	for file in $argv[1..-2]
sed -i '' $argv[-1] $file
end
end

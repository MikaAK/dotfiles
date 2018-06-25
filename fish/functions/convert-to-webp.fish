function convert-to-webp
	cwebp  -q 80 -mt  -af $argv.png -o $argv.webp
end

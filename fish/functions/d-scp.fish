function d-scp
	pbpaste > .s-scp-temp
and scp .s-scp-temp $argv
and rm .s-scp-temp
end

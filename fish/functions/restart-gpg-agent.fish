function restart-gpg-agent
	killall gpg-agent
and eval (gpg-agent --pinentry-program /usr/local/bin/pinentry-mac  --default-cache-ttl 60 --daemon --verbose)
end

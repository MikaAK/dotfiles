function kill-on-port --description 'kills a pid running on a port'
	kill -9 (lsof -ti :$argv)
end

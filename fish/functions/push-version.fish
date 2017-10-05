function push-version
	commit "Update to $argv"
and git tag $argv
and push
and publish
end

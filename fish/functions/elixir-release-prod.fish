function elixir-release-prod
	env MIX_ENV=prod mix do release.clean, release --env=prod
end

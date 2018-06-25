function kube-deployment-status
	kubectl rollout status deploy/$argv
end

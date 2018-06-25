function kube-expose-deployment
	kubectl expose deploy/$argv --type="NodePort" --port 8080
end

# Makefile for applying Kubernetes manifests

# Set the default target
.DEFAULT_GOAL := apply

# Targets
apply:
	kubectl apply -f amp-credentials.local.yaml

	kubectl apply -f kpack/cluster-stack.yaml
	kubectl apply -f kpack/cluster-store.yaml
	kubectl apply -f kpack/cluster-builder.local.yaml

.PHONY: apply

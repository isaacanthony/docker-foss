base:
	@xhost +local:docker

krita-start: base
	@docker run \
		--name krita \
		--rm \
		-d \
		-e DISPLAY=$(DISPLAY) \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-v $(PWD)/krita:/root/saved \
		crsilva/krita:latest

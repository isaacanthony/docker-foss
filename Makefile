base:
	@xhost +local:docker

gimp-build: base
	@docker build -t gimp gimp/.

gimp-start:
	@docker run \
		--name gimp \
		--rm \
		-d \
		-e DISPLAY=$(DISPLAY) \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-v $(PWD)/gimp:/root/saved \
		gimp

krita-build: base

krita-start:
	@docker run \
		--name krita \
		--rm \
		-d \
		-e DISPLAY=$(DISPLAY) \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-v $(PWD)/krita:/root/saved \
		crsilva/krita:latest

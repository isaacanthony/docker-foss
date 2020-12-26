%.build:
	@xhost +local:docker
	@docker build -t $(*F) $(*F)/.

%.start:
	@docker run \
		--name $(*F) \
		--rm \
		-d \
		-e DISPLAY=$(DISPLAY) \
		-v /dev/snd:/dev/snd \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-v $(PWD)/$(*F):/saved \
		$(*F)

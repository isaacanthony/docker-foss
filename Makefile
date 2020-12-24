build:
	@xhost +local:docker
	@docker build -t $(name) $(name)/.

start:
	@docker run \
		--name $(name) \
		--rm \
		-d \
		-e DISPLAY=$(DISPLAY) \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-v $(PWD)/$(name):/root/saved \
		$(name)

gimp-build:
	@make -s build name=gimp

gimp-start:
	@make -s start name=gimp

librecad-build:
	@make -s build name=librecad

librecad-start:
	@make -s start name=librecad

krita-build:
	@make -s build name=krita

krita-start:
	@make -s start name=krita

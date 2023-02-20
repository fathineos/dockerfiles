build:
	docker build -t fathineos/dev .

example:
	docker run \
		-it \
		--name=dev \
		-v ~/.ssh:/root/.ssh:ro \
		--cap-add SYS_ADMIN \
		--device /dev/fuse \
	  fathineos/dev zsh

push:
	docker push fathineos/dev

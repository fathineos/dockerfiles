build:
	docker build -t fathineos/glances .

example:
	docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro --pid host --network host -it fathineos/glances

push:
	docker push fathineos/glances

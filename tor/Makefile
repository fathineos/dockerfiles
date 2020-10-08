build:
	docker build -t fathineos/tor .

example:
	docker run -e REDIRECT="some_service:80" --rm -it --name=tor --link=some_service fathineos/tor

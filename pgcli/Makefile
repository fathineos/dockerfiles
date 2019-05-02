container:
	docker build -t fathineos/pgcli .

example:
	# docker run -it --rm -v <pgcli_config_file>:/root/.config/pgcli/config fathineos/pgcli <postgres_uri>
	docker run -it --rm fathineos/pgcli

push:
	docker push fathineos/pgcli

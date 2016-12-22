container:
	docker build -t fathineos/kpcli .

example:
	# docker run -it --rm -v <keepass_database_file>:/data/keepass.kdbx -v <key_file>:/data/keepass.key --net=none fathineos/kpcli --kdb=/data/keepass.kdbx --key=/data/keepass.key
	docker run -it --rm --net=none fathineos/kpcli

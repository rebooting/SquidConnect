build:
	docker build -t squidtest .

run:
	
	docker run --rm -it --name squidtest -v ${PWD}/squid.conf:/etc/squid.conf -p 3128:3128 squidtest 

run_shell:
	docker exec -it   squidtest /bin/bash
kill:
	docker kill squidtest
reset:
	docker system reset
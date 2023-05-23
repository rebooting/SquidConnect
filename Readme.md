
Contains minimal setting for Squid to:

1. log to STDOUT
2. use CONNECT for tunnelling netcat proxy


# build container

    make

# run squid

    make run

#   run command prompt in running container

    make run_shell

the container comes with ssh, netcat and vim to test sftp via nc proxy

test this with an accessible sftp

substitute the relevant files

    sftp -o "ProxyCommand nc -X connect -x localhost:3128 %h %p" user@sftp_server
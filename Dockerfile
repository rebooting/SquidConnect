# get debian image from AWS public repository

FROM public.ecr.aws/debian/debian:latest

RUN apt-get update && apt-get install -y \
    squid \
    openssh-server \
    tmux \
    vim \
    curl \
    git \
    netcat \
    && apt-get clean

COPY start_svr.sh /start_svr.sh
ENTRYPOINT ["/start_svr.sh"]
# use command below to start squid
# ENTRYPOINT ["squid", "-N","-f /etc/squid.conf", "-d 1"]

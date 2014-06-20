FROM ubuntu:latest
MAINTAINER = Jason M. Mills <jmmills@cpan.org>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install build-essential -y
RUN apt-get install distcc -y 

EXPOSE 3632 
ENTRYPOINT ["/usr/bin/distccd"]
CMD ["--no-detach", "--log-stderr", "--verbose", "-a", "0.0.0.0/0"]

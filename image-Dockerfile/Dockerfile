FROM centos:7

COPY consul_1.3.0_linux_amd64.zip /
RUN yum install -y unzip
RUN unzip consul_1.3.0_linux_amd64.zip
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

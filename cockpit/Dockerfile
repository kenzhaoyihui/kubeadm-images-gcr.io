#FROM cockpit/kubernetes:latest
FROM fedora

MAINTAINER "kenzhaoyihui" \<2993614148@qq.com\>
ENV container docker

# Install packages without dependencies
RUN yum install -y cockpit-machines
RUN yum install -y cockpit-ws cockpit-bridge cockpit-dashboard

ADD kubectl /usr/bin/kubectl

RUN mkdir -p /usr/share/cockpit/machines/provider/
ADD provider/index.js /usr/share/cockpit/machines/provider/index.js

# FIXME generates a single cert for the IMAGE!!!!!
RUN remotectl certificate --ensure --user=root --group=cockpit-ws
# FIXME removes the root password for demo purpose
RUN sed -i "s/root:[^:]*:/root::/" /etc/shadow

CMD ["/usr/libexec/cockpit-ws"]

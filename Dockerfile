FROM centos:7.6.1810

MAINTAINER Vitaliy Skvortcov <vitaliyskvortcov@gmail.com>

RUN yum -y install epel-release \
&& yum install -y ppp pptp pptpd pptp-setup \
&& yum clean all

RUN echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf \
&& echo "net.core.wmem_max = 12582912" >> /etc/sysctl.conf \
&& echo "net.core.rmem_max = 12582912" >> /etc/sysctl.conf \
&& echo "net.ipv4.tcp_rmem = 10240 87380 12582912" >> /etc/sysctl.conf \
&& echo "net.ipv4.tcp_wmem = 10240 87380 12582912" >> /etc/sysctl.conf \
&& echo "net.core.wmem_max = 12582912" >> /etc/sysctl.conf \
&& echo "net.core.rmem_max = 12582912" >> /etc/sysctl.conf \
&& echo "net.ipv4.tcp_rmem = 10240 87380 12582912" >> /etc/sysctl.conf \
&& echo "net.ipv4.tcp_wmem = 10240 87380 12582912" >> /etc/sysctl.conf \
&& echo "net.core.wmem_max = 12582912" >> /etc/sysctl.conf \
&& echo "net.core.rmem_max = 12582912" >> /etc/sysctl.conf \
&& echo "net.ipv4.tcp_rmem = 10240 87380 12582912" >> /etc/sysctl.conf \
&& echo "net.ipv4.tcp_wmem = 10240 87380 12582912" >> /etc/sysctl.conf \
&& ln -s /etc/pptpd.conf /etc/ppp/pptpd.conf

VOLUME ["/etc/ppp"]

CMD ["/usr/sbin/pptpd", "-f"]

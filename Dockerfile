FROM centos:7

ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV PYTHONIOENCODING UTF-8

RUN yum update -y
RUN yum install -y python-setuptools gcc python-devel

RUN yum autoremove -y && \
    yum clean all && \
    rm -rf /var/cache/yum

RUN easy_install pip

RUN pip install --no-cache-dir requests[security]
RUN pip install --no-cache-dir pandas scipy scikit-learn matplotlib seaborn jupyter

EXPOSE 8888


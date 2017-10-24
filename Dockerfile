FROM centos:7

RUN yum update -y
RUN yum install -y python-setuptools gcc python-devel
RUN yum clean

RUN easy_install pip
RUN pip install --no-cache-dir pandas scipy scikit-learn matplotlib seaborn jupyter

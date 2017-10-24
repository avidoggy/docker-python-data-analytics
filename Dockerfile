FROM centos:7

RUN yum update -y
RUN yum install -y python-setuptools gcc python-devel
RUN easy_install pip
RUN pip install pandas scipy scikit-learn matplotlib seaborn jupyter

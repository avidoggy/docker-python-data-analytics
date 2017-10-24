FROM centos:7

RUN yum update -y
RUN yum install -y wget
RUN wget https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python get-pip.py
RUN pip install pandas scipy scikit-learn matplotlib seaborn jupyter

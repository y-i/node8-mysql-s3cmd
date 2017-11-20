FROM iwashi/docker-node8-mysql-client

# install s3cmd
RUN apt update && apt install -y \
  python-dev \
  python-pip \
  && pip install s3cmd \
  && apt-get -y autoremove \
  && apt-get clean \
  && apt-get autoclean
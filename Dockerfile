FROM python:3

ARG pip_installer="https://bootstrap.pypa.io/get-pip.py"
ARG awscli_version="1.18.8"

RUN apt-get update && apt-get install -y \
    less \
    groff-base && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

# Install awscli
RUN pip install awscli==${awscli_version}

# Install sam
RUN pip install --user --upgrade aws-sam-cli
RUN mkdir /data
RUN chmod -x /data

ENV PATH $PATH:/root/.local/bin


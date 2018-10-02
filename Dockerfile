FROM stellarity/atlassian-sdk
MAINTAINER Sergey Podobry <sergey.podobry@stellaritysoftware.com>
LABEL Description="atlassian sdk + pwsh"

# install packages
RUN curl https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -o /tmp/packages-microsoft-prod.deb &&\
    dpkg -i /tmp/packages-microsoft-prod.deb &&\
    rm /tmp/packages-microsoft-prod.deb &&\
    apt-get update &&\
    apt-get install -y --no-install-recommends powershell &&\
    rm -rf /var/lib/apt/lists/*

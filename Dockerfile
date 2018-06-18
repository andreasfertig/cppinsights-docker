FROM ubuntu:14.04

LABEL maintainer "Andreas Fertig"

RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates gnupg

RUN echo "deb http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu trusty main" >> /etc/apt/sources.list

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1E9377A2BA9EF27F

RUN apt-get update && apt-get install -y --no-install-recommends libstdc++-7-dev

RUN useradd insights \
    && mkdir /home/insights \
    && chown -R insights:insights /home/insights

COPY insights /usr/bin/insights
RUN chmod 0755 /usr/bin/insights

COPY run_in_docker.sh /
RUN chmod 0755 /run_in_docker.sh

USER insights

CMD ["/run_in_docker.sh"]

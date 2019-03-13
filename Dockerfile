FROM ubuntu:18.04

LABEL maintainer "Andreas Fertig"

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

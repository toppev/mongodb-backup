FROM mongo

RUN mkdir /backup
RUN apt-get update && \
apt-get install cron

ENV CRON_TIME="0 0 * * *"

ADD run.sh /run.sh
VOLUME ["/backup"]
CMD ["/run.sh"]

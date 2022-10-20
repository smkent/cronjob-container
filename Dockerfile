FROM alpine:latest
ENV CRON_SCHEDULE "* * * * *"

RUN apk add --no-cache tini cronie
COPY extras /smkent-extras
ENTRYPOINT ["/sbin/tini", "-g", "--"]
CMD ["/smkent-extras/entrypoint"]

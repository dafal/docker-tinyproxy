FROM alpine:3.14

RUN apk --no-cache add bash tinyproxy curl
RUN sed -i -e"s/^Allow /#Allow /" /etc/tinyproxy/tinyproxy.conf
RUN sed -i 's|^LogFile |# LogFile |' /etc/tinyproxy/tinyproxy.conf

ADD entrypoint.sh /

EXPOSE 8888

CMD ["/entrypoint.sh"]

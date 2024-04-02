FROM alpine:3.19.1

RUN apk update && apk add tor

COPY torrc /etc/tor/torrc
RUN chown -R tor /etc/tor

USER tor

ENTRYPOINT ["tor"]
CMD ["-f", "/etc/tor/torrc"]

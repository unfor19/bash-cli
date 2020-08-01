FROM alpine:3.12
RUN apk --no-cache add util-linux bash curl
WORKDIR /code
COPY . .
ARG BARGS_VERSION="1.0.8"
RUN \
    curl -sL -o scripts/bargs.sh bargs.link/${BARGS_VERSION}/bargs.sh && \
    chmod +x **/*.sh
ENTRYPOINT [ "./entrypoint.sh" ]
CMD [ "--help" ]

FROM alpine:3.12
RUN apk --no-cache add util-linux bash
WORKDIR /code
COPY . .
RUN chmod +x **/*.sh
ENTRYPOINT [ "./entrypoint.sh" ]
CMD [ "--help" ]

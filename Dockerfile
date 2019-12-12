FROM alpine
ENTRYPOINT /sbin/entrypoint
RUN adduser -D -u 1000 core
RUN apk --update --no-cache add openssh-server python
COPY entrypoint /sbin/entrypoint
COPY sshd_config /etc/ssh/

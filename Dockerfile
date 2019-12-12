FROM alpine
ENTRYPOINT /sbin/entrypoint
RUN adduser -D -s /bin/sh -u 1000 core && passwd -u core
RUN apk --update --no-cache add openssh-server python
COPY entrypoint /sbin/entrypoint
COPY sshd_config /etc/ssh/

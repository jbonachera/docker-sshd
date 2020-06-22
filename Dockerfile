FROM alpine
ENTRYPOINT /sbin/entrypoint
RUN adduser -D -s /bin/sh -u 500 core && passwd -u core
RUN apk --update --no-cache add openssh-server python3
COPY entrypoint /sbin/entrypoint
COPY sshd_config /etc/ssh/

FROM alpine
ENTRYPOINT /sbin/entrypoint
RUN passwd -u root
RUN apk --update --no-cache add openssh-server python
COPY entrypoint /sbin/entrypoint
COPY sshd_config /etc/ssh/

FROM alpine:latest
LABEL maintainer="Stephen Leahy (sleahy@redhat.com)"

RUN apk add python3 \
  && apk add ansible \
  && apk add git

WORKDIR /ansible
RUN echo -e '[local]\nlocalhost ansible_connection=local' > /ansible/hosts
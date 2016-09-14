FROM nginx:alpine

ENV HTPASSWD='foo:$apr1$odHl5EJN$KbxMfo86Qdve2FH4owePn.'
ENV FORWARD_PORT=80
ENV FORWARD_HOST=web

WORKDIR /opt

RUN apk add --no-cache gettext

COPY auth.conf auth.htpasswd launch.sh ./

CMD ["./launch.sh"]

FROM nginx

COPY container /
COPY build /usr/share/nginx/html

ENV API_KEY 'ae10be5019c78ab95e82dbb39dc73785'

CMD /bin/bash -c "envsubst '\$API_KEY' < /etc/nginx/nginx.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"


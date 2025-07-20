FROM nginxinc/nginx-unprivileged:stable-alpine3.21-perl

COPY src/ /app
COPY nginx/nekopsio.conf /etc/nginx/conf.d/nekopsio.conf

CMD [ "nginx", "-g", "daemon off;" ]
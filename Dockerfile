FROM alpine:3.4
RUN apk add --update nginx && rm -rf /var/cache/apk/*
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

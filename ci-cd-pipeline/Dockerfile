FROM nginx:alpine
RUN chmod g+rwx /var/cache/nginx/ /var/run /var/log/nginx
WORKDIR "/ci-cd-pipeline"
COPY ./html /var/www/
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 8000
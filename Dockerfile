FROM lipanski/docker-static-website:latest

COPY static /home/static
ENV PORT=8080

CMD ["/busybox", "sh", "-c", "/busybox httpd -f -v -p $PORT -c httpd.conf"]

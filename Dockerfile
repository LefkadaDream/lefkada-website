FROM nginx:1.27-alpine
# Railway sets PORT; 8080 is the fallback for local runs.
ENV PORT=8080
COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY *.html *.jpg *.png *.pdf /usr/share/nginx/html/

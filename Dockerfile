FROM swaggerapi/swagger-ui
COPY /api/*.json /usr/share/nginx/html/api/
EXPOSE 8080


FROM swaggerapi/swagger-ui
COPY /api/*.json /usr/share/nginx/html/api/
ENV SWAGGER_JSON /usr/share/nginx/html/api/openapi.json
EXPOSE 8080


FROM swaggerapi/swagger-ui
RUN mkdir /api/
VOLUME /api/
COPY /api/ /api/
ENV SWAGGER_JSON /api/openapi.json
EXPOSE 8080
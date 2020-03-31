FROM swaggerapi/swagger-ui
RUN mkdir /api/
VOLUME /api/
COPY /api/ /api/
ENV SWAGGER_JSON /api/openapi.json
EXPOSE 8080

RUN apk update && apk add curl && apk add npm && npm install -g @stoplight/prism-cli
EXPOSE 4010
CMD cd /api/ && prism mock -h 0.0.0.0 openapi.json
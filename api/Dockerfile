FROM alpine
RUN apk update && apk add curl && apk add npm && npm install -g @stoplight/prism-cli
COPY openapi.json /api/
EXPOSE 4010
CMD prism mock -h 0.0.0.0 /api/openapi.json

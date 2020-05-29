FROM alpine
RUN apk update && apk add curl && apk add npm && npm install -g @stoplight/prism-cli
COPY /api/ /api/
EXPOSE 4010 4011 4012 4013
CMD (prism mock -h 0.0.0.0 -p 4010 /api/openapi.json &) && (prism mock -h 0.0.0.0 -p 4011 /api/openapi-logs.json &) && (prism mock -h 0.0.0.0 -p 4012 /api/openapi-factura.json &) && ( prism mock -h 0.0.0.0 -p 4013 /api/openapi-productos.json)

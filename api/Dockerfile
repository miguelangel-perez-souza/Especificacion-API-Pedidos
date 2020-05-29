FROM alpine
RUN apk update && apk add curl && apk add npm && npm install -g @stoplight/prism-cli
COPY . /api/
EXPOSE 4010 4011 4012 4013
CMD prism mock -h 0.0.0.0:420 /api/openapi.json && prism mock -h 0.0.0.0:421 /api/openapi-logs.json && prism mock -h 0.0.0.0:422 /api/openapi-factura.json && prism mock -h 0.0.0.0:423 /api/openapi-productos.json
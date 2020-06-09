FROM prismagraphql/prisma:1.34

RUN apk add curl

COPY ./start.sh /app/start.sh

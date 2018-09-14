FROM node:8.10-alpine

WORKDIR /usr/src/app
RUN npm i -g dynamodb-admin

ENV DYNAMO_ENDPOINT=http://localhost:8000

ENTRYPOINT ["dynamodb-admin"]

EXPOSE 8001
CMD ["-p 8001"]

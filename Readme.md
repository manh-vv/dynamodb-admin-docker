# DynamoDb Admin Docker

I create simple docker of dynamodb admin so I can user any local dynamodb
docker such as `cnadiminti/dynamodb-local`

## Build local

`./build.sh`  

## Run

```bash
docker run --name dynamodb-admin-docker --rm \
  -e DYNAMO_ENDPOINT=http://host.docker.internal:8000 \
  -p 8001:8001 manhvu2507/dynamodb-admin-docker
```

Here in, I pass `http://host.docker.internal:8000` as dynamodb-endpoint for
[more info](https://stackoverflow.com/a/24326540/2505542).  
To stop: `docker stop -t 0 dynamodb-admin-docker`

access url: `http://localhost:8001`

## Sample docker-compose `docker-compose.yml`

To access dynamodb local: http://localhost:8000/shell

To access dynamodb admin: http://localhost:8001
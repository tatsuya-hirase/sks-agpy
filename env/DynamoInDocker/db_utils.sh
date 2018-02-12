docker stop agpy-local-db-container
docker rm agpy-local-db-container
docker run -d -p 8000:8000 --name=agpy-local-db-container -t sks-agpy-dynamo-local
aws --endpoint-url http://localhost:8000 dynamodb create-table --cli-input-json file://table_config.json 

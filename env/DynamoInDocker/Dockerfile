FROM ubuntu:16.04
RUN apt-get update \
 && apt-get install -y \
      default-jre \
      wget \
      unzip
RUN wget https://s3-ap-northeast-1.amazonaws.com/dynamodb-local-tokyo/dynamodb_local_latest.zip \
    && unzip dynamodb_local_latest.zip \
    && rm dynamodb_local_latest.zip 
EXPOSE 8000
CMD ["java", "-Djava.library.path=./DynamoDBLocal_lib", "-jar", "DynamoDBLocal.jar", "-sharedDb"]

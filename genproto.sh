# https://github.com/grpc/grpc-go
# https://dev.to/toransahu/part-1-building-a-basic-microservice-with-grpc-using-golang-304d

# --go_out=plugins=grpc:$DST_DIR
protoc --proto_path=./ --go_out=plugins=grpc:../ ./*.proto
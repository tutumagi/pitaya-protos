# https://github.com/grpc/grpc-go
# https://dev.to/toransahu/part-1-building-a-basic-microservice-with-grpc-using-golang-304d

# go get google.golang.org/protobuf/cmd/protoc-gen-go@latest
# go get -u google.golang.org/grpc
# go get -u github.com/golang/protobuf/{proto,protoc-gen-go}

# --go_out=plugins=grpc:$DST_DIR
protoc --proto_path=./ --go_out=plugins=grpc:../ ./*.proto
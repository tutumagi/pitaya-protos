# https://github.com/grpc/grpc-go
# https://dev.to/toransahu/part-1-building-a-basic-microservice-with-grpc-using-golang-304d

# go get google.golang.org/protobuf/cmd/protoc-gen-go@latest
# go get -u google.golang.org/grpc
# go get -u github.com/golang/protobuf/{proto,protoc-gen-go}

# protoc-gen-go1.22 是用来业务工程那边生成proto的，用的golang.org/protobuf地址的protoc-gen-go版本，不支持下面的plugins=grpc
# 所以这里先把文件重命名一下，用完之后再命名回去
mv ../../../bin/protoc-gen-go ../../../bin/protoc-gen-go1.22
mv ../../../bin/protoc-gen-go1.26 ../../../bin/protoc-gen-go

# --go_out=plugins=grpc:$DST_DIR
protoc --proto_path=./ --go_out=plugins=grpc:../ ./*.proto

mv ../../../bin/protoc-gen-go ../../../bin/protoc-gen-go1.26
mv ../../../bin/protoc-gen-go1.22 ../../../bin/protoc-gen-go
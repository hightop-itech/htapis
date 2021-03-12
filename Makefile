BUILD_DATE := `date +%Y-%m-%d\ %H:%M`
GIT_VERSION := `git --no-pager describe --tags --dirty --always`
GIT_BRANCH := `git symbolic-ref --short HEAD`
PACK_DATE := `date +%Y%m%d%H%M`

LDFLAGS := -s -w

proto_path := /Users/bingxu/Workspaces/go/src/github.com/hightop-itech/htapis/
proto_gen_path := /Users/bingxu/Workspaces/go/src/github.com/hightop-itech/go-genproto/

protos:
	protoc  --go_out=${proto_gen_path} --go_opt=paths=source_relative\
 		--go-grpc_out=${proto_gen_path}  --go_opt=paths=source_relative \
 		-I=${proto_path} hightop/ftu/v1/common.proto
	protoc  --go_out=${proto_gen_path} --go_opt=paths=source_relative \
		--go-grpc_out=${proto_gen_path} --go-grpc_opt=paths=source_relative \
		-I=${proto_path} hightop/ftu/v1/ftu.proto
	protoc  --go_out=${proto_gen_path} --go_opt=paths=source_relative \
		--go-grpc_out=${proto_gen_path} --go-grpc_opt=paths=source_relative \
		-I=${proto_path} hightop/helloworld/v1/helloworld.proto
clean:
	rm -rf ddmp zjdn101 iec104
	find ${proto_gen_path} -name *.pb.go |xargs rm -rf
	find ./ -name *_string.go |xargs rm -rf
	rm -rf *.log

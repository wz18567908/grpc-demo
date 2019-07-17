subdirs = controller
go_path = $(shell go env GOPATH)

all: protoc-gen-go protoc-go-tags protoc-gen-grpc-gateway protoc-gen-swagger code tidy

protoc-gen-go:
	command -v $@ >/dev/null || go install github.com/golang/protobuf/protoc-gen-go

protoc-go-tags:
	command -v $@ >/dev/null || go install github.com/dkfbasel/protobuf/protoc-go-tags

protoc-gen-grpc-gateway:
	command -v $@ >/dev/null || go install github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway

protoc-gen-swagger:
	command -v $@ >/dev/null || go install github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger

tidy:
	go mod tidy

code:
	@for dir in $(subdirs); do \
		$(MAKE) -C $$dir; \
	done

clean:
	@for dir in $(subdirs); do \
		$(MAKE) -C $$dir $@; \
	done

distclean: clean
	@for i in protoc-gen-grpc-gateway protoc-gen-swagger \
		protoc-gen-go protoc-go-tags; do \
		rm -f $$(which $$i); \
		rm -f $(go_path)/bin/$$i; \
	done

.PHONY: all protoc-gen-go protoc-go-tags protoc-gen-grpc-gateway protoc-gen-swagger tidy code clean

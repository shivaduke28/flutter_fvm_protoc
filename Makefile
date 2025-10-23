.PHONY: protogen
protogen:
	@echo "Generating Dart code from proto files..."
	@mkdir -p lib/gen
	protoc --plugin=protoc-gen-dart=./scripts/protoc-gen-dart --dart_out=grpc:lib/gen -I proto $(wildcard proto/*.proto)
	@echo "Done!"

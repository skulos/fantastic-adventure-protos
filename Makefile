proto: storage metrics

storage:
	rm -rf storagegate
	mkdir storagegate
	protoc -I ./proto/ --go_out=plugins=grpc:./storagegate ./proto/storagegate.proto

metrics:
	rm -rf storagemetrics
	mkdir storagemetrics
	protoc -I ./proto/ --go_out=plugins=grpc:./storagemetrics ./proto/storagemetrics.proto

clear:
	rm -rf storagegate



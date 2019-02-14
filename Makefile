FORMAT=yaml

generate: generate_client generate_server deps

deps:
	go get -u -f ./...

generate_client:
				swagger generate client -f swagger_pet_store.${FORMAT} -o logs/swagger_pet_store_client.log

generate_server:
				swagger generate server -f swagger_pet_store.${FORMAT} -o logs/swagger_pet_store_server.log

clean:
	rm -rf client models restapi logs/*


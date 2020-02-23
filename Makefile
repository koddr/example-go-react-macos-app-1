.PHONY: clean

clean:
	@rm -rf ./helloworld.app
	@rm -rf ./ui/build
	@echo "[✔️] Clean complete!"

.PHONY: run

run:
	@open ./helloworld.app
	@echo "[✔️] App is running!"

.PHONY: build

build: clean
	@cd ./ui && npm install
	@cd ./ui && npm run build
	@mkdir -p ./helloworld.app/Contents/MacOS
	@go build -o ./helloworld.app/Contents/MacOS/helloworld
	@echo "[✔️] Build complete!"

.PHONY: all

all: clean build run

.PHONY: clean

clean:
	@rm -rf ./helloworld.app ./ui/build
	@echo "[✔️] Clean complete!"

.PHONY: build

build:
	@cd ./ui && npm install
	@cd ./ui && npm run build
	@mkdir -p ./helloworld.app/Contents/MacOS
	@go build -o ./helloworld.app/Contents/MacOS/helloworld
	@echo "[✔️] Build complete!"

.PHONY: run

run:
	@open ./helloworld.app
	@echo "[✔️] App is running!"

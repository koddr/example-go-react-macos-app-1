.PHONY: build

build:
	cd ui \
	&& npm install \
	&& npm run build \
	&& cd .. \
	&& mkdir -p ./helloworld.app/Contents/MacOS \
	&& go build -o ./helloworld.app/Contents/MacOS/helloworld
	@echo "[✔️] Build complete!"

clean:
	rm -rf ./helloworld.app \
	&& rm -rf ./ui/build
	@echo "[✔️] Clean complete!"

run:
	open ./helloworld.app
	@echo "[✔️] App is running!"
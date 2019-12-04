# Example native macOS app on Go (Golang) and React.js

This is full code example for **Part 1** of article [How to create a native macOS app on Go (Golang) and React.js with full code protection (without magic)](https://medium.com/@koddr/how-to-create-a-native-macos-app-on-golang-and-react-js-with-full-code-protection-9162b8c25be5). Published on Medium @ 04 Dec 2019.

Part 2 is coming soon.

## Requirements

- Go `1.11+`
  - dep `0.5+`
- Node.js `10+`
  - npm `6+`

## Quick demo

```console
# Clone this repository:
git clone https://github.com/koddr/example-go-react-macos-app-1.git

# Go to folder:
cd example-go-react-macos-app-1

# Install packr utility, which should be available for calling
# from the console in $GOPATH/bin/packr:
go get -u github.com/gobuffalo/packr/packr

# Install Golang packages:
dep ensure -add github.com/gobuffalo/packr
dep ensure -add github.com/zserge/webview

# Build frontend, compile backend and run app:
make && make run

# (Optional) For cleaning:
make clean
```

## Author

- [Vic Shóstak](https://github.com/koddr) (aka Koddr).

## Article assistance

If you want to say «thank you»:

1. Twit about article [on your Twitter](<https://twitter.com/intent/tweet?text=How%20to%20create%20a%20native%20macOS%20app%20on%20@Golang%20and%20@reactjs%20with%20full%20code%20protection%20(without%C2%A0magic)%20%F0%9F%98%89%20https://medium.com/@koddr/how-to-create-a-native-macos-app-on-golang-and-react-js-with-full-code-protection-9162b8c25be5>).
2. Add a GitHub Star and make Fork to this repository.
3. If you want, send me some money via PayPal: [@paypal.me/koddr](https://paypal.me/koddr?locale.x=en_EN).

## License

MIT

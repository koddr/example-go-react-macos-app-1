# Example native macOS app on Go (Golang) and React.js

This is full code example for **Part 1** of article [**How to create a native macOS app on Go (Golang) and React.js with full code protection (without magic)**](https://dev.to/koddr/how-to-create-a-native-macos-app-on-go-golang-and-react-js-with-full-code-protection-part-1-463k).

Published on [Medium](https://link.medium.com/F5aFjvld91) @ 04 Dec 2019 and re-published on [Dev.to](https://dev.to/koddr/how-to-create-a-native-macos-app-on-go-golang-and-react-js-with-full-code-protection-part-1-463k) @ 12 Jan 2020.

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
make

# (Optional) For cleaning:
make clean
```

## Author

- [Vic Shóstak](https://github.com/koddr) (aka Koddr).

## Article assistance

If you want to say «thank you»:

1. Twit about article [on your Twitter](<https://twitter.com/intent/tweet?text=How%20to%20create%20a%20native%20macOS%20app%20on%20@Golang%20and%20@reactjs%20with%20full%20code%20protection%20(Part%201)%20%F0%9F%98%89%20https://dev.to/koddr/how-to-create-a-native-macos-app-on-go-golang-and-react-js-with-full-code-protection-part-1-463k>).
2. Add a GitHub Star and make Fork to this repository.
3. Donate some money to project author via PayPal: [@paypal.me/koddr](https://paypal.me/koddr?locale.x=en_EN).
4. Join DigitalOcean at our [referral link](https://m.do.co/c/b41859fa9b6e) (your profit is **\$100** and we get \$25).

Thanks for your support! 😘

## License

MIT

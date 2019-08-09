# Google-Login
Implementation of Google SDK(Example)
## Getting Started
### Installation or Setup
1. Just download the repo or clone the repo
2. Open Terminal and go inside the folder,e.g cd [path to inside the repo folder]
3. Type pod install
4. Go to the folder,Just open the .xcworkspace 
5. Open Info.plist from project navigator 
6. Open the LSApplicationQueriesSchemes and replace with your own reveresed Client id(Please follow the link: https://developers.google.com/identity/sign-in/ios/start).For example 
```swift
  	<key>LSApplicationQueriesSchemes</key>
	<array>
		<string>com.example.foo</string>
		<string><"your reveresed Client id"></string>
		<string>com-google-gidconsent-google</string>
		<string>com-google-gidconsent-youtube</string>
		<string>com-google-gidconsent</string>
		<string>com.google.gppconsent.2.4.1</string>
		<string>com.google.gppconsent.2.4.0</string>
		<string>googlechrome</string>
		<string>googlechrome-x-callback</string>
	</array>

```

7. Change the url type with your own reversed client ID(Flow the google instruction carefully) or
```swift
  <key>CFBundleURLTypes</key>
	<array>
		<dict>
			<key>CFBundleTypeRole</key>
			<string>Editor</string>
			<key>CFBundleURLSchemes</key>
			<array>
				<string>< reversed client ID></string>
			</array>
		</dict>
	</array>
```
8. Open Appdelegate.swift,replace your client-ID
``` swift
  GIDSignIn.sharedInstance().clientID = "your client ID"
```
7. Run the project

### Basic Usage
 All the lines of code are properly commented if any issues free feel to open a issue will solve it
 
## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* https://github.com/googlesamples/google-services/tree/master/ios/signin
* https://developers.google.com/identity/
* https://developers.google.com/identity/sign-in/ios/start


### Happy Coding

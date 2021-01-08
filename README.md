# iosSwiftProjectTemplate #

My personal iOS bootstrapped project template. Lots of time/efforts invested to create a truly get-go iOS app project template.

## Battery-included
- Targeting Swift 5 and iOS 12
- Scaffolded by liftoff
- Brewfile to install toolings
- Opinionated Podfile
- Swiftlint and its Build phase script
- Ackack and its Build phase script
- R.swift and its Build phase script
- Target schemas setup from local dev to production
- Environment read from xcconfig file
- Few base classes
- No Main Storyboard and Launcherscreen XIB to prefer programmatical UI

## Setup ##

First, run `bin/setup`

This will:

 - Install the brew dependencies
 - Initiate `pod install`

Second, you need to rename this Xcode. Follow this [link](https://programmingwithswift.com/how-to-rename-an-xcode-project/)

Third, you need to rename R.swift paths after you renamed this Xcode project:

1. Go to .xcodeproj -> Build Phases -> R.swift run section. Change `iosSwiftProjectTemplate` to your new project name.
2. Change .swiftlint file to exclude R.generated.swift file correctly under your new project name.
3. Build your project to generate R.swift artifact file

Fourth, Rename build schemes to replace `iosSwiftProjectTemplate`

Fifth, Replace `iosSwiftProjectTemplate` in `bin/test`

Run build and now your Xcode project is now ready to be developed!

## Testing ##

Run `bin/test`

This will run the tests from the command line, and pipe the result through
[XCPretty][].

[XCPretty]: https://github.com/supermarin/xcpretty

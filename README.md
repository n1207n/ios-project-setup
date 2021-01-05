# iosSwiftProjectTemplate #

My personal iOS bootstrapped project template.

You'll need to copy this repo and rename this xcode project with new name. Afterwards, you can follow below setup.

## Battery-included
- Scaffolded by liftoff
- Opinionated Podfile
- Brewfile
- Swiftlint and its Build phase script
- Ackack and its Build phase script
- R.swift and its Build phase script
- Target schemas setup from local dev to production
- No Main Storyboard and Launcherscreen XIB to prefer programmatical UI

## Setup ##

Run `bin/setup`

This will:

 - Install the gem dependencies

Then you need to rename this Xcode. Follow this [link](https://programmingwithswift.com/how-to-rename-an-xcode-project/)

After you renamed this Xcode project, you still need to rename R.swift paths:
1. Go to .xcodeproj -> Build Phases -> R.swift run section. Change iosSwiftProjectTemplate to your new project name.
2. Change .swiftlint file to exclude R.generated.swift file correctly under your new project name.
3. Build your project to generate R.swift artifact file

Now your Xcode project is now ready to be developed!

## Testing ##

Run `bin/test`

This will run the tests from the command line, and pipe the result through
[XCPretty][].

[XCPretty]: https://github.com/supermarin/xcpretty

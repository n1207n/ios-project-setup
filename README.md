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

## Setup ##

Run `bin/setup`

This will:

 - Install the gem dependencies
 - Install the pod dependencies

## Testing ##

Run `bin/test`

This will run the tests from the command line, and pipe the result through
[XCPretty][].

[XCPretty]: https://github.com/supermarin/xcpretty

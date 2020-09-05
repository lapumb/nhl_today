# NHL Today #
NHL Today gives users a snapshot of the NHL scoreboard in the comfort of their own terminal.

## Installation ##
If you do not have `dart` installed, install `dart` using 

Windows:
```
choco install dart-sdk
```

>Or, to upgrade: use `choco upgrade dart-sdk`


iOS:
```
brew tap dart-lang/dart
brew install dart
```

>Or, to upgrade: use `brew upgrade dart`

### Import Dependencies ###
To use this repository, install the dependencies using: 

```
pub get
```

## Running ##
```
dart Main.dart
```

## Shoutouts ##

The URL to obtain the NHL information was found at [https://github.com/dword4/nhlapi](https://github.com/dword4/nhlapi), where contributors
graciously used their time to figure out the public, non-documented NHL API. 

The JSON parsing logic used was generated using [https://github.com/javiercbk/json_to_dart](https://github.com/javiercbk/json_to_dart).
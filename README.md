# UV-AMSE-DWM

UV AMSE Dev Web Mobile course - [LINK](https://ceri-num.gitbook.io/uv-amse/introduction)

Dans ce cours, nous allons découvrir comment développer des applications mobiles à l'aide du framework Flutter basé sur les technologies Web et le langage Dart.

![Flutter](./doc/root/flutter.png)

# list of built flutter app:
- [first app](./first_app/README.md) following this 2 tutorial :  [tutorial1](https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1#3); [tutorial1](https://codelabs.developers.google.com/codelabs/first-flutter-app-pt2/#0)
- [tp1 app](./tp2/README.md) - TP2
- [tp1 app](./tp1/README.md) - building a beer catalogue
## Run app on chrome

We will use `flutter run -d chrome` at the root of the flutter project

## Run app on chrome

Run the following command to generate a release build: `flutter build web`

## Workflow :

- [![semantic-versionning](https://img.shields.io/github/workflow/status/LazyKeru/UV-AMSE-DWM/Semantic-versionning?style=plastic&label=Versionning)](https://github.com/LazyKeru/UV-AMSE-DWM/actions/workflows/semantic_versioning.yml)
    - access [CHANGELOG.md](./docs/CHANGELOG.md)

## Commit convention :
- BREAKING CHANGE: 
- build: Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)
- ci: Changes to our CI configuration files and scripts (examples: CircleCi, SauceLabs)
- docs: Documentation only changes
- feat: A new feature
- fix: A bug fix
- perf: A code change that improves performance
- refactor: A code change that neither fixes a bug nor adds a feature
- test: Adding missing tests or correcting existing tests
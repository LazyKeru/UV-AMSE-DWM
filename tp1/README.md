# Beer Lover

This web mobile app is inspired by my first_app. It will be for my TP1. It is supposed to be a media management app, nevertheless. I love beer and would prefer a beer management app.

## app Structure:
- Home page
    - Beers
    - Beers that you've tasted
    - Beers that you've loved

## project structure
- `./assets/` : Static assets for the app - [README.md](./lib/widgets/README.md)
- `./cloud_functions/` : Cloud functions used in the app. - NotUsed
- `./lib/screens/` : Screens and UI of the app - [README.md](./lib/screens/README.md)
- `./lib/providers/` : Interactions to components outside the app (ex: fetch data from api) - [README.md](./lib/utilities/README.md)
- `./lib/utilities/` : Function or logic used in the app - [README.md](./lib/utilities/README.md)
- `./lib/widgets/` : Widgets and Layouts used in the app - [README.md](./lib/widgets/README.md)
- `./lib/models/` : Models for the data loaded - [README.md](./lib/models/README.md)

## [database](https://public.opendatasoft.com/explore/dataset/open-beer-database)

- id of the database : `open-beer-database`
- licence : [Open Database License (ODbL)](https://opendatacommons.org/licenses/odbl/1-0/)

## [database](https://punkapi.com/)

- to be used
- limit : 3600 requests per hour

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
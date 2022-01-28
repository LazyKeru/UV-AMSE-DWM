# first_app

A flutter project to follow the [first tutorial](https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1#2)

## What we can observe at first :
- This example creates a [Material](https://material.io/design/) app. Material is a visual-design language that's standard on mobile and the web. Flutter offers a rich set of Material widgets.
- The app extends `StatelessWidget`, which makes the app itself a widget. In Flutter, almost everything is a widget, including alignment, padding, and layout.
- The `Scaffold` widget, from the Material library, provides a default app bar, a title, and a body property that holds the widget tree for the home screen. The widget subtree can be quite complex.
- A widget's main job is to provide a `build` method that describes how to display the widget in terms of other, lower-level widgets.
- The body for this example consists of a `Center` widget containing a `Text` child widget. The `Center` widget aligns its widget subtree to the center of the screen.

## Adding our first package (list of packages at pub.dev):

- Add the english_words package as a dependency of this app: `$ flutter pub add english_words`
- In `lib/main.dart`, import the new package: `import 'package:english_words/english_words.dart';  // Add this line.`
- We can now use english_words in our hello world

## Create boilerplate code for a stateful widget:
- type `stful` and press `enter` :

```
class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

## We learned a lot of things:
- Making a list
- Favorite button
- Adding a Navigator
- etc...

*For more detail do the tutorial <3*

## Next step:

- [Layouts in Flutter](https://flutter.dev/docs/development/ui/layout)
- [Add interactivity to your Flutter app](https://flutter.dev/docs/development/ui/interactive)
- [Introduction to widgets](https://flutter.dev/docs/development/ui/widgets-intro)
- [Flutter for Android developers](https://flutter.dev/docs/get-started/flutter-for/android-devs)
- [Flutter for React Native developers](https://flutter.dev/docs/get-started/flutter-for/react-native-devs)
- [Flutter for web developers](https://flutter.dev/docs/get-started/flutter-for/web-devs)
- [Flutter's YouTube channel](https://www.youtube.com/flutterdev)
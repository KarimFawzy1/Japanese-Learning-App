# toku_new_look

A new Flutter project.

## Project Structure

- **lib/**  
  Contains the main application code.
  - `main.dart`: The application entry point.
  - **models/**: Contains data models (e.g. [`item_model.dart`](d:\vscode\Flutter_Course\toku_new_look\lib\models\item_model.dart)).
  - **pages/**: Contains screen definitions such as:
    - [`home_page.dart`](d:\vscode\Flutter_Course\toku_new_look\lib\pages\home_page.dart)
    - [`colors_page.dart`](d:\vscode\Flutter_Course\toku_new_look\lib\pages\colors_page.dart)
    - [`family_page.dart`](d:\vscode\Flutter_Course\toku_new_look\lib\pages\family_page.dart)
    - [`numbers_page.dart`](d:\vscode\Flutter_Course\toku_new_look\lib\pages\numbers_page.dart)
    - [`phrases_page.dart`](d:\vscode\Flutter_Course\toku_new_look\lib\pages\phrases_page.dart)
  - **widgets/**: Contains reusable widgets such as:
    - [`category.dart`](d:\vscode\Flutter_Course\toku_new_look\lib\widgets\category.dart)
    - [`item.dart`](d:\vscode\Flutter_Course\toku_new_look\lib\widgets\item.dart)
    - [`item_phrase.dart`](d:\vscode\Flutter_Course\toku_new_look\lib\widgets\item_phrase.dart)

- **assets/**  
  Contains design assets used in the application.
  - **images/**:
    - `colors/`: Contains color images (e.g. `black.png`, `brown.png`, etc.)
    - `family/`: Contains family-related images (e.g. `daughter.png`, `father.png`, etc.)
    - `logos/`: Contains logo images.
    - `numbers/`: Contains numeral images.
  - **sounds/**:
    - `colors/`, `family/`, `numbers/`, `phrases/`: Audio files for various sections.

## Dependencies

Key dependencies specified in [pubspec.yaml](d:\vscode\Flutter_Course\toku_new_look\pubspec.yaml) include:
- Flutter SDK.
- [`cupertino_icons`](https://pub.dev/packages/cupertino_icons) for iOS style icons.
- [`audioplayers`](https://pub.dev/packages/audioplayers) for audio functionality.

## Getting Started

1. Ensure that [Flutter](https://flutter.dev/) is installed.
2. Run `flutter pub get` to install dependencies.
3. Start the application with `flutter run`.

For more information on assets and configuration, refer to:
- [pubspec.yaml](d:\vscode\Flutter_Course\toku_new_look\pubspec.yaml)
- [lib folder](d:\vscode\Flutter_Course\toku_new_look\lib)
- [assets folder](d:\vscode\Flutter_Course\toku_new_look\assets)

Happy Coding!

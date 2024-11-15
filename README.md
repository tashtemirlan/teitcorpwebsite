# 🌐 Flutter Web Project

This project is built using **Flutter 3.24.2** and **Dart SDK 3.5.2**. Follow the instructions below to build and deploy the correct version of the website.

---

## 📋 Requirements

Ensure you have the following installed:
- Flutter `3.24.2`
- Dart SDK `3.5.2`

### `pubspec.yaml`
```yaml
environment:
  sdk: '>=3.2.6 <4.0.0'

dependencies:
  cupertino_icons: ^1.0.8
  font_awesome_flutter: ^10.8.0
  dotted_border: ^2.1.0
  url_launcher: ^6.3.1
  seo: ^0.0.7
  web: ^1.1.0
  flutter:
    sdk: flutter

dev_dependencies:
  flutter_lints: ^5.0.0
  flutter_launcher_icons: ^0.13.1
  flutter_test:
    sdk: flutter
```
---
## 🛠️ Build Commands
### `In Terminal`
```dart
flutter clean
flutter pub get
flutter build web
```
---
## 🚀 Deploying to GitHub Pages
Follow these steps to deploy the website on GitHub Pages:

1. Prepare the Build Files  
   After running `flutter build web`, navigate to the `build/web` directory.

2. Push to GitHub  
   Upload the **contents** of the `build/web` directory (not the directory itself) to the root of your GitHub repository.

3. Update Base URL  
   - Open `index.html` in `build/web`.
   - Modify the `<base>` tag to match your repository name:
     ```
     <base href="/your-repository-name/">
     ```
     
4. Enable GitHub Pages  
   - Go to **Settings > Pages** in your repository.
   - Select the branch (e.g., `main`) and the root directory as the source.
   - Save the settings, and your site will be live at:  
     `https://your-username.github.io/your-repository-name/`

5. Check Your Website  
   - Open the provided GitHub Pages URL in your browser.
   - Ensure the site is loading properly and all routes work as expected.

---

# JustSwoosh — Nike Landing Page (Flutter)

> A clean, responsive Nike-style landing page built with Flutter — focused on layout, reusable widgets, and pixel-perfect UI (no animations).

---

## Project overview

JustSwoosh is a small Flutter project that recreates a modern Nike-style landing page. It demonstrates responsive layouts, custom widgets, and component reuse so you can show UI skill in your portfolio or use it as a starting template for product pages.

---

## Features

* Responsive layout for mobile / tablet / desktop
* Clean, modular widget structure (header, hero, product cards, footer)
* Reusable components and theming for quick customization
* Light weight — no animations (as requested)
* Easy to adapt for web, Android, and iOS

---

## Tech stack

* Flutter (>= 3.0)
* Dart
* Simple state management with `Provider` (replaceable)
* Uses asset images & Google Fonts

---

## Screenshots

*(replace these with actual images in `/assets/screenshots`)*

* `screenshots/hero.png` — Hero section
* `screenshots/product_grid.png` — Product cards
* `screenshots/mobile_view.png` — Mobile layout

---

## Getting started

### Prerequisites

* Flutter SDK installed: [https://flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install)
* An emulator, device, or Chrome for web testing

### Install & run

```bash
# get packages
flutter pub get

# run on a connected device or emulator
flutter run

# run for web (Chrome)
flutter run -d chrome

# build release (Android)
flutter build apk --release
```

---

## Project structure

```
lib/
├─ main.dart            # app entry
├─ src/
│  ├─ widgets/          # reusable widgets (NavBar, Hero, ProductCard, Footer)
│  ├─ models/           # simple models (Product)
│  ├─ screens/          # page screens (LandingPage)
│  ├─ theme/            # ThemeData, typography, color palette
│  └─ utils/            # helpers (responsive breakpoints, asset loader)
assets/
├─ images/
├─ fonts/
screenshots/
README.md
```

---

## Key components

* `NavBar` — responsive top navigation with brand and links
* `HeroSection` — headline, tagline, CTA, and hero image (no animation)
* `ProductGrid` — adaptive grid of `ProductCard` widgets
* `Footer` — contact links and legal

---

## State management

This starter uses a minimal `Provider` setup for pure UI state (e.g., menu open/close, simple filters). You can remove or replace it with `Riverpod`, `Bloc`, or plain `setState` depending on your preference.

---

## Customization guide

* Replace brand/logo: `assets/images/logo.png`
* Change primary colors: edit `lib/src/theme/app_theme.dart`
* Add fonts: put fonts in `assets/fonts` and update `pubspec.yaml`
* Swap product data: `lib/src/models/product.dart` / dummy data file

---

## Accessibility & Responsiveness

* Uses semantic widgets (TextButton, Image with alt text in comments)
* Breakpoints defined in `lib/src/utils/responsive.dart` for mobile/tablet/desktop

---

## Tests & linting

* Add unit/widget tests in `test/`
* Run analyzer:

```bash
flutter analyze
```

---

## Resume bullets (ready-to-copy)

* Built a **Nike landing page (JustSwoosh)** in Flutter with responsive UI and custom widgets.
* Used reusable components and basic Provider state management to improve maintainability.

---

## Contributing

1. Fork the repo
2. Create a feature branch `feature/your-change`
3. Open a PR with a short description of changes

---

## License

MIT — feel free to reuse and adapt for your portfolio.

---

## Author / Contact

Made by you — add your name, GitHub and portfolio links here.

---

*If you want, I can embed screenshots, generate a one-page portfolio README, or produce a LinkedIn blurb using the resume bullets. Which would you prefer?*

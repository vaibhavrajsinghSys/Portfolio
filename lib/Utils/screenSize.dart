// ignore_for_file: file_names

enum ScreenTypes { desktop, tablet, mobile, noscreen }

class ScreenSize {
  ScreenTypes getScreenSize(double screen) {
    if (screen >= 1000) {
      return ScreenTypes.desktop;
    } else if (screen < 1000 && screen > 650) {
      return ScreenTypes.tablet;
    } else if (screen <= 650 && screen > 250) {
      return ScreenTypes.mobile;
    } else {
      return ScreenTypes.noscreen;
    }
  }
}

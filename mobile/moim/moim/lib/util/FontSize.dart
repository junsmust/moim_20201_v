enum FontSize {
  small10   ,
  small13   ,
  small15   ,
  medium17  ,
  medium19  ,
  medium21  ,
  large23   ,
  large25
}
extension GetFontSize on FontSize {
  double getFontSize() {
    switch(this) {
      case FontSize.small10:
        return 10;
      case FontSize.small13:
        return 13;
      case FontSize.small15:
        return 15;
      case FontSize.medium17:
        return 17;
      case FontSize.medium19:
        return 19;
      case FontSize.medium21:
        return 21;
      case FontSize.large23:
        return 23;
      case FontSize.large25:
        return 25;
    }
  }
}
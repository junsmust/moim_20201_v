
import 'dart:ffi';

enum SizeCollector{
   leftAndRightMargin ,
   topMargin ,
   bottomMargin
}

extension SizeControllerExtension on SizeCollector {
  double getSize() {
    switch (this) {
      case SizeCollector.bottomMargin:
        return 15.0;
      case SizeCollector.leftAndRightMargin:
        return 25.0;
      case SizeCollector.topMargin:
        return 15.0;
    }
  }
}
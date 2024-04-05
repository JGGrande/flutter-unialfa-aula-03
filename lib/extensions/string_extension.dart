extension StringExtension on String {
  int toInt({ int defaultValue = 0 }) {
    try{
      return int.parse(this);
    } on Exception catch(_){
      return defaultValue;
    }
  }

  double toDouble({ double defaultValue = 0 })  {
    try{
      return  double.parse(this);
    } on Exception catch(_){
      return defaultValue;
    }
  }
}
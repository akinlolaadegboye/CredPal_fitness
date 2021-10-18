import 'dart:ui';

class DialogListViewModel{
  final String _dateMonth;
  final String _dateDay;
  final String _exerciseNo;
  final String _exerciseType;
  final Color _color;

  DialogListViewModel(this._dateMonth, this._dateDay, this._exerciseNo,
      this._exerciseType, this._color);

  Color get color => _color;

  String get exerciseType => _exerciseType;

  String get exerciseNo => _exerciseNo;

  String get dateDay => _dateDay;

  String get dateMonth => _dateMonth;
}
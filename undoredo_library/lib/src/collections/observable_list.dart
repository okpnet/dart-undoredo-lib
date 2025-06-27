import 'dart:collection';

typedef ListObserver<T>=void Function(List<T> oldValues,List<T> newValues);

class ObservableList<T> extends ListBase<T>{
  final List<T> _source=[];
  ListObserver<T>? _onChanged;

  void set setOnChange(ListObserver<T> value)=>_onChanged=value;

  ListObserver<T>? get getOnChange =>_onChanged;

  ObservableList({ListObserver<T>? onChanged})
    : _onChanged = onChanged;

  void _notify() {
    _onChanged?.call(List.unmodifiable(_source), List.unmodifiable(_source));
  }

  @override
  int get length => _source.length;

  @override
  set length(int newLength) {
    _source.length = newLength;
    _notify();
  }

  @override
  T operator [](int index) => _source[index];

  @override
  void operator []=(int index, T value) {
    _source[index] = value;
    _notify();
  }

  @override
  void add(T value) {
    _source.add(value);
    _notify();
  }

  @override
  bool remove(Object? value){
    var result=_source.remove(value);
    _notify();
    return result;
  }
}
///スタック
class Stack<T>{
  final List<T> _list=[];
  ///スタックが空のときTrue
  bool get isEmpty => _list.isEmpty;
  ///スタックが空のときFalse
  bool get isNotEmpty => _list.isNotEmpty;
  ///スタックの長さ
  int get length => _list.length;
  ///スタック追加
  void push(T value)=>_list.add(value);
  ///スタックから取り出し
  T? pop(){
    if(_list.isEmpty)return null;
    return _list.removeLast();
  }
  ///スタックから取り出しいを試みる
  ///スタックが空のときはFalse、Nullを返す
  (bool success, T? value) tryPop() {
    final value = pop();
    return (value != null, value);
  }
}
import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';
///state model interface
class IStateModel{
  void execute(){}
}
///state model
class StateModelCore<T> implements IStateModel{
  ///command
  final Function _excute;

  StateModelCore(this._excute);

  @override
  void execute()=> _excute.call();
}
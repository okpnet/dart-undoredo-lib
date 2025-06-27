/**
 *state model interface
 */
class IStateModel{
  void execute(){}
}
/**
 *state model
 */
class StateModelCore<T> implements IStateModel{
  /**
   *command
   */
  final Function _excute;

  StateModelCore(this._excute);

  @override
  void execute()=> _excute.call();
}
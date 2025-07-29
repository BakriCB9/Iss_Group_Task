sealed class BaseState {}

class BaseLoadingState extends BaseState{
  
}
class BaseSuccessState<T>extends BaseState{
  T data;
  BaseSuccessState(this.data);
}
class BaseFailureState extends BaseState{
  String message;
  BaseFailureState(this.message);
}
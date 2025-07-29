part of 'home_cubit.dart';

class HomeState extends Equatable {
  final BaseState? getDataState;
  const HomeState({this.getDataState});
  HomeState copyWith({BaseState? getDataState}) {
    return HomeState(getDataState: getDataState ?? this.getDataState);
  }

  @override
  List<Object?> get props => [getDataState];
}

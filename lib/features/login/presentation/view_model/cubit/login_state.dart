part of 'login_cubit.dart';

class LoginState extends Equatable {
  final Status? status;
  const LoginState({this.status});
  LoginState copyWith({Status? status}) {
    return LoginState(status: status ?? this.status);
  }

  @override
  List<Object?> get props => [status];

}

import 'package:flareline_uikit/core/mvvm/bloc/bloc_base_state.dart';

class SignInState extends BlocBaseState {
  final String? userName;

  final String? password;

  final bool? loginStatus;

  SignInState({this.userName = 'admin', this.password = '123456', this.loginStatus});

  @override
  // TODO: implement props
  List<Object?> get props => [loginStatus];


}

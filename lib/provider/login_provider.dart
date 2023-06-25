import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginProvider = StateNotifierProvider<LoginNotifier, UserInfo>((ref){
  return LoginNotifier();
});

@immutable
class UserInfo{
  final String userName;
  final String password;

  const UserInfo({required this.userName, required this.password});

  UserInfo copyWith({String? userName, String? password}){
    return UserInfo(
      userName: userName ?? this.userName,
      password: password ?? this.password,
    );
  }
}

class LoginNotifier extends StateNotifier<UserInfo>{
  LoginNotifier() :super(const UserInfo(userName: "", password: ""));

  void setUserName(content){
    state = state.copyWith(userName: content);
  }

  void setPassword(content){
    state = state.copyWith(password: content);
  }

}

import 'dart:async';
import 'package:lfg_mobile/modules/core/repositories/user/models/user.dart';
import 'package:lfg_mobile/modules/core/repositories/user/providers/user.dart';


class UserRespotitory {
  UserApiProvider provider = UserApiProvider();

  Future<UserProfileData> updateUser(UserProfileData userProfileData) async {
    final response = await provider.updateUser(userProfileData);

    return UserProfileData.fromJson(response);
  }
}
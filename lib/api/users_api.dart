import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_futurewidget/model/user.dart';
import 'package:http/http.dart' as http;

class UsersApi {
  static Future<List<User>> getUsersLocally(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/users.json');
    final body = json.decode(data);

    return body.map<User>(User.fromJson).toList();
  }
}

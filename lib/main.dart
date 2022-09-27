import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() {

  String weburl = "https://jsonplaceholder.typicode.com/todos";

  getUsers(weburl);

}

getUsers(var apiURL) async{
  var res = await http.get(Uri.https('jsonplaceholder.typicode.com','todos'));
  var users = jsonDecode(res.body);

  for(var u in users)
  {
    User user = User(u["id"],u["title"],u["completed"]);
    print(user.id);
    print(user.title);
    print(user.completed);
  }


}

class User{
  String id,title,completed;
  User(this.id,this.title,this.completed);
}
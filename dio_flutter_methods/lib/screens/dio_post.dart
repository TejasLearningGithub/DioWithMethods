import 'dart:async';

import 'package:dio/dio.dart';
import 'package:dio_flutter_methods/model/posts.dart';
import 'package:flutter/material.dart';

class DioPostMethod extends StatefulWidget {
  const DioPostMethod({super.key});

  @override
  State<DioPostMethod> createState() => _DioPostMethodState();
}

class _DioPostMethodState extends State<DioPostMethod> {
  var pathUrl = 'https://jsonplaceholder.typicode.com/posts/1';
  // late Future myInitFuture;
  //var myList;
  var myListOfData;

  Future myPostsMethod() async {
    dynamic data = {
      'title': 'my post title',
      'body': 'my post body',
      'userId': 1,
    };
    // try {
    var response = await Dio().post(
      pathUrl,
      data: data,
      options: Options(
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
      ),
    );
    //  if (response.statusCode == 200) {
    // List myList = response.data;
    // myList.map((e) => Posts.fromJson(e));
    // return myList;
    //var myList = response.data as List;
    //myListOfData = myList.map((e) => Posts.fromJson(e)).toList();
    //print('$myListOfData');
    print('====${response.statusCode}====');
    //return response.data;

    //  } else {
    //    print('Failed to retrive data');
    //  }
    //  } catch (e) {
    //print(e.toString());
    //   }
    //   throw Exception();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dio with post'),
        ),
        body: ListView(
          children: [
            ElevatedButton(
              onPressed: () async {
                await myPostsMethod().then(
                  (value) => {
                    print(value),
                  },
                );
              },
              child: Text('Send Data'),
            )
          ],
        ));
  }
}

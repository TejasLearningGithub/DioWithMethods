import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PatchDataWithDio extends StatefulWidget {
  const PatchDataWithDio({super.key});

  @override
  State<PatchDataWithDio> createState() => _PatchDataWithDioState();
}

class _PatchDataWithDioState extends State<PatchDataWithDio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              patchDataDio();
            },
            child: Text(
              'Patch Method',
            ),
          ),
        ));
  }

  void patchDataDio() async {
    try {
      var _dio = Dio();

      var response = await _dio
          .patch('https://jsonplaceholder.typicode.com/posts/1', data: {
        'userId': 1001,
        'id': 1001,
        'title': 'My Title',
        'body': 'My Body',
        'name': 'My Name',
      });
      var defaultResponse = await _dio.get(
        'https://jsonplaceholder.typicode.com/posts/1',
      );
      print('default response = ${defaultResponse.toString()}');
      print('patch response =  ${response.toString()}');
    } catch (e) {
      print(e.toString());
    }
  }
}

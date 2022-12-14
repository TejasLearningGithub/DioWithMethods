import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PutMethodDio extends StatefulWidget {
  const PutMethodDio({super.key});

  @override
  State<PutMethodDio> createState() => _PutMethodDioState();
}

class _PutMethodDioState extends State<PutMethodDio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Put Method'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            updateData();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Data Updated',
                ),
              ),
            );
          },
          child: Text(
            'Put Method',
          ),
        ),
      ),
    );
  }

  void updateData() async {
    try {
      var _dio = Dio();

      // var response =
      //    await _dio.put('https://jsonplaceholder.typicode.com/posts/');
      var response = await _dio
          .put('https://jsonplaceholder.typicode.com/posts/11', data: {
        'userId': 1111,
        'id': 101,
        'title': 'My Title',
        'body': 'My Body',
      });

      print(response.toString());
    } catch (e) {
      print(e.toString());
    }
  }
}

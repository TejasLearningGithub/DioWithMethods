import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DeletePostWithDio extends StatefulWidget {
  const DeletePostWithDio({super.key});

  @override
  State<DeletePostWithDio> createState() => _DeletePostWithDioState();
}

class _DeletePostWithDioState extends State<DeletePostWithDio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Data with dio'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            deleteData();
          },
          child: Text(
            'Delete Data',
          ),
        ),
      ),
    );
  }

  void deleteData() async {
    var dio = Dio();
    var response =
        await dio.get('https://jsonplaceholder.typicode.com/posts/1');
    print(response.toString());

    var deleteResponse =
        await dio.delete('https://jsonplaceholder.typicode.com/posts/1');
    print(deleteResponse.toString());
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RetriveAllData extends StatefulWidget {
  const RetriveAllData({super.key});

  @override
  State<RetriveAllData> createState() => _RetriveAllDataState();
}

class _RetriveAllDataState extends State<RetriveAllData> {
  List<String> myString = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrive Data'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => fetchData(),
                child: Text('Retrive Data'),
              )
            ],
          ),
        ),
      ),
    );
  }

  void fetchData() async {
    var dio = Dio();
    var response = await dio.get('https://jsonplaceholder.typicode.com/posts/');

    print(response.statusCode);
    print(response.data.toString());
  }
}

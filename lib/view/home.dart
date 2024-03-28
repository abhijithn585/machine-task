import 'package:flutter/material.dart';
import 'package:flutter_application_1/apiservice/apiservice.dart';
import 'package:flutter_application_1/model/model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(
          future: ApiService().getData(),
          builder: (context, snapshot) {
            final datas = snapshot.data;
            return ListView.builder(
              itemBuilder: (context, index) {
                if (snapshot.data != null) {
                  DataMOdel? data = datas?[index];
                  return ListTile(
                    title: Text(data?.title ?? ''),
                  );
                }
              },
              itemCount: datas?.length,
            );
          },
        ));
  }
}

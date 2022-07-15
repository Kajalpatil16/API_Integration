import 'package:apiintegrationfirsttry/JsonDataofAPI.dart';
import 'package:apiintegrationfirsttry/ServiceFileOFAPI.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<DataOfApi> Postlist=[];
   getAPiData() async{
     Postlist= await APIService().getApiData();
     setState(() {});
   }
   @override
  void initState() {
    super.initState();
    getAPiData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('API Demo'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView.builder(
            itemCount: Postlist.length,
            itemBuilder: (context,index){
              return Padding(
               padding: EdgeInsets.all(8.0),
                child:Card(
                  child: ListTile(
                    leading: Text(Postlist[index].rank.toString()),
                    title: Text(Postlist[index].personName.toString()),
                    subtitle: Text(Postlist[index].lastName.toString()),
                    trailing: Text(Postlist[index].source.toString()),
                  ),
                ) ,
              );
            }),
      ),
    );
  }
}

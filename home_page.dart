import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_project/list_model.dart';
import 'package:flutter_project/model.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
ListModel listmodel = ListModel();
bool circular =true;
  
@override
void initState(){
  super.initState();
  getData();
}
 void getData() async{
  var res=await http.get(Uri.parse("http://globalgps.in:8089/api/v1/Vehicle/ExpiredVehicles/18/2025-12-31"));
  var r=json.decode(res.body);
  setState((){
    listmodel = ListModel.fromJson({"data":r});
    circular= false;
  });
 }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: circular
        ?CircularProgressIndicator()
       :ListView.builder(
                    itemCount: listmodel.data!.length,
                    itemBuilder: (BuildContext context, int index) =>
                        dataShow(listmodel.data![index])
                        )
                        ),
    );
    
  }

  Widget dataShow(Model obj) {
    return Container(
      // height: 120,
      // width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Username:${obj.userName}",
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Vehicle_no :${obj.vehicleNo}",
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Vehicle :${obj.vehicle}",
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "DuePayment :${obj.duePayment}",
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "RenewalDays :${obj.renewalDays}",
            ),
             ],
        
        ),
      ),
    );
  }

      
  }

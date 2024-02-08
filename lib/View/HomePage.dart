import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/getXcontroller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GetXcontroller data = Get.put(GetXcontroller());

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blueAccent,
              child: Obx(() => Text(data.count.toString())),
            ),
            Row(
              children: [
                MaterialButton(
                  onPressed: (){
                    data.add();
                  },
                  color: Colors.amber,
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 20,),
                MaterialButton(
                    onPressed: (){
                      if(data.count>0)
                        data.subtract();
                    },
                  color: Colors.amber,
                  child: Icon(Icons.minimize),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

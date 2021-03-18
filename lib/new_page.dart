import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/newpage2.dart';
import 'package:providers/provider/fetch_data_provider.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pstModel = Provider.of<FetchDataProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: pstModel.loading
          ? Container(
              color: Colors.blue,
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(pstModel.randomJson[0].title),
                ),
                InkWell(
                    onTap: () {
                      pstModel.increaseIndex();
                    },
                    child: Text('Increase index ')),
                Text(
                  '${pstModel.index} ',
                  textScaleFactor: 2,
                ),
                InkWell(
                    onTap: () {
                      pstModel.decreaseIndex();
                    },
                    child: Text('Decrease Index ')),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.all(
                      Radius.elliptical(20, 50),
                    ),
                    color: Colors.green,
                  ),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewPage2(),
                            ));
                      },
                      child: Text('Change to new Screen')),
                )
              ],
            )),
    );
  }
}

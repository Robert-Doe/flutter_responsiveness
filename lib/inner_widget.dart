import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scalable_ui/scaler.dart';

class InnerWidget extends StatelessWidget {
  final double width;
  final double height;
  const InnerWidget({Key? key, required this.width, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: width,
      height: height,
      color: Colors.green,
      child: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          Sizer size = Sizer(context: ctx);
          print(constraints);
          print(constraints.minHeight);
          print(MediaQuery.of(ctx));
          return Row(
            children: [
              Container(width:constraints.minWidth*0.5,color: Colors.yellow,),
              Container(width:constraints.minWidth*0.5,color: Colors.blue,),
              //Text(size.parentWidth().toString()),
            ],
          );
        }),
    );


    return Builder(
      builder: (ctx) {
        Sizer size=Sizer( context: ctx);
        return Container(

            child: Text(size.vSafeBlock().toString()),
        );
      }
    );
  }
}

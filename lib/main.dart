import 'package:flutter/material.dart';
import 'package:scalable_ui/inner_widget.dart';
import 'package:scalable_ui/scaler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('This is Bob');
    print('Print This is bob');
    //SizeConfig().init(context);

    Sizer size = Sizer(context: context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bob Cumulus'),
      ),
      body: Center(
        child: Container(
          /*width: 30 * SizeConfig.blockSizeHorizontal!,
          height: 10 * SizeConfig.blockSizeVertical!,*/
          color: Colors.lightBlue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Screen Width ' +size.parentWidth().toString()),
              Text('Screen Height ' + size.parentHeight().toString()),
              Text('Status bar Height ' + size.vSafeArea().toString()),
              Text('Height - Status ' + (size.vSafeBlock()*100).toString()),
              InnerWidget(
                width: size.hSafeBlock()* 70,
                height: size.vSafeBlock()* 50,
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

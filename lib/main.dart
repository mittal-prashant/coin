import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:coin/routes/app_routes.dart';
import 'package:tflite_flutter/tflite_flutter.dart' as tfl;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    runModel(1);
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'coin',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.visualSearchScreen,
      routes: AppRoutes.routes,
    );
  }

  runModel(double no) async {
    //create interpreter for you model
    final interpreter = await tfl.Interpreter.fromAsset('assets/no.tflite');
    //prepare input as required by your model
    //in my case it required a single number and i am requiring it from user
    //passing user entered number to model as input
    final input = [
      [no]
    ];
    //Prepare output set and use reshape method from the plugin.
    //Input and output preparing guide comes with the model documentation.
    var output = List.filled(1, 0).reshape([1, 1]);
    //run the inpterpreter on prepared input and output.
    interpreter.run(input, output);
    //model process the input and updates the output
    //Result variable to show output to user
    // result = output[0][0];
    print(output);
    // setState(() {});
  }
}

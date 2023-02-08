import 'package:flutter/material.dart';
import 'package:flutter_application_myapp/pages/widgets/drawer.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        body: Center(
          child: Container(
            child: Text("welcome to UOH"),
          ),
        ),
        drawer: Mydrawer());
  }
}

import 'dart:async';

import 'package:flutter/material.dart';

class Loading_page extends StatefulWidget {
  final String destination;
  final Duration delay;
  Loading_page({
    required this.destination,
    this.delay = const Duration(seconds: 3)
});

  @override
  State<Loading_page> createState() => _Loading_pageState();
}

class _Loading_pageState extends State<Loading_page> {
  @override
  void initState() {
    super.initState();
    Timer(widget.delay,(){
      Navigator.pushReplacementNamed(context, widget.destination);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

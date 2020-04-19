import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/blocs/home/home_bloc.dart';

class NewSeriesPage extends StatefulWidget {
  @override
  _NewSeriesPageState createState() => _NewSeriesPageState();
}

class _NewSeriesPageState extends State<NewSeriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: Colors.transparent,
          brightness: Brightness.light,
          elevation: 0.0,
        ),
        preferredSize: Size.fromHeight(0),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 42.5,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          child: Icon(Icons.arrow_back),
                          onTap: () {
                            BlocProvider.of<HomeBloc>(context)
                              ..add(EVTOnCloseCreateSeries());
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'MY ACCOUNT',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 2.0)),
                  ),
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

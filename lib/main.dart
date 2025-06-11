import 'package:basketball_pointscounter/cubit/cubit_counter.dart';
import 'package:basketball_pointscounter/cubit/state_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Home()),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
 @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text(
              "POINTS COUNTER",
              style: TextStyle(
                color: Colors.white,
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // backgroundColor: Colors.black,
          body: Column(
            children: [
              Divider(
                color: Colors.green[400],
                thickness: .2,
                height: 2,
                indent: 25,
                endIndent: 25,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 500,
                          child: Column(
                            children: [
                              Text(
                                "TEAM A",
                                style: TextStyle(
                                  fontSize: 32,
                                  color: Colors.tealAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "${BlocProvider.of<CounterCubit>(context).teamApoints}",
                                style: TextStyle(
                                  fontSize: 140,
                                  color: Colors.tealAccent,
                                ),
                              ),
                              SizedBox(height: 7),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  minimumSize: Size(160, 60),
                                  elevation: 1,
                                  shadowColor: Colors.lightGreen,
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(
                                    context,
                                  ).teamIncrement(team: 'A', buttonNumber: 1);
                                },
                                child: Text(
                                  " Add 1 Point",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  minimumSize: Size(160, 60),
                                  elevation: 1,
                                  shadowColor: Colors.lightGreen,
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(
                                    context,
                                  ).teamIncrement(team: 'A', buttonNumber: 2);
                                },
                                child: Text(
                                  " Add 2 Point",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  minimumSize: Size(160, 60),
                                  elevation: 1,
                                  shadowColor: Colors.lightGreen,
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(
                                    context,
                                  ).teamIncrement(team: 'A', buttonNumber: 3);
                                },
                                child: Text(
                                  " Add 3 Point",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 450,
                          child: VerticalDivider(
                            color: Colors.tealAccent,
                            thickness: 1,
                          ),
                        ),
                        SizedBox(
                          height: 500,
                          child: Column(
                            children: [
                              Text(
                                "TEAM B",
                                style: TextStyle(
                                  fontSize: 32,
                                  color: Colors.tealAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "${BlocProvider.of<CounterCubit>(context).teamBpoints}",
                                style: TextStyle(
                                  fontSize: 140,
                                  color: Colors.tealAccent,
                                ),
                              ),
                              SizedBox(height: 7),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  minimumSize: Size(160, 60),
                                  elevation: 1,
                                  shadowColor: Colors.lightGreen,
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(
                                    context,
                                  ).teamIncrement(team: 'B', buttonNumber: 1);
                                },
                                child: Text(
                                  " Add 1 Point",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  minimumSize: Size(160, 60),
                                  elevation: 1,
                                  shadowColor: Colors.lightGreen,
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(
                                    context,
                                  ).teamIncrement(team: 'B', buttonNumber: 2);
                                },
                                child: Text(
                                  " Add 2 Point",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  minimumSize: Size(160, 60),
                                  elevation: 1,
                                  shadowColor: Colors.lightGreen,
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(
                                    context,
                                  ).teamIncrement(team: 'B', buttonNumber: 3);
                                },
                                child: Text(
                                  " Add 3 Point",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.tealAccent,
                        minimumSize: Size(160, 60),
                        elevation: 1,
                        shadowColor: Colors.lightGreen,
                      ),
                      onPressed: () {
                        
                      },
                      child: Text(
                        "RESET",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      listener: (context, state) {
        if (state is CounterAincrement) {
       } else {

         //no
        }
      },
    );
  }
}

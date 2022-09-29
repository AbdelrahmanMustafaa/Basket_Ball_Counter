import 'package:basketball_counter/cubit/basket_ball_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/basket_ball_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BasketBallCubit(),
      child: BlocConsumer<BasketBallCubit, BasketBallState>(
        listener: (context, state) {},
        builder: (context, state) {
          BasketBallCubit cubit = BlocProvider.of<BasketBallCubit>(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: const Text('Points Counter'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${cubit.teamA}',
                            style: const TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(8),
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              cubit.increasePoints('A',1);
                            },
                            child: const Text(
                              'Add 1 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              cubit.increasePoints('A',2);

                            },
                            child: const Text(
                              'Add 2 Point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              cubit.increasePoints('A',3);

                            },
                            child: const Text(
                              'Add 3 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 500,
                      child: VerticalDivider(
                        indent: 50,
                        endIndent: 50,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${cubit.teamB}',
                            style: const TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(8),
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              cubit.increasePoints('B',1);

                            },
                            child: const Text(
                              'Add 1 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              cubit.increasePoints('B',2);
                            },
                            child: const Text(
                              'Add 2 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              cubit.increasePoints('B',3);

                            },
                            child: const Text(
                              'Add 3 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(8),
                    primary: Colors.orange,
                    minimumSize: const Size(150, 50),
                  ),
                  onPressed: () {
                    cubit.resetPoints();
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

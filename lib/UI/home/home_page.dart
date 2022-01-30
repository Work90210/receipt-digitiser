import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_saver/UI/home/cubit/home_page_cubit.dart';

class HomePage extends StatefulWidget {
  static const routeName = "HomePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageCubit, HomePageState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return state.map(
          initial: (value) {
            return Scaffold(
              body: Container(
                child: value.body,
              ),
              bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Stores',
                  ),
                ],
                currentIndex: value.index,
                selectedItemColor: Colors.blue,
                onTap: (i) =>
                    BlocProvider.of<HomePageCubit>(context).onItemTapped(i),
              ),
            );
          },
        );
      },
    );
  }
}

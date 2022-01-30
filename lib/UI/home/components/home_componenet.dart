// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_saver/UI/home/components/list_receipts.dart';
import 'package:receipt_saver/UI/home/cubit/home_page_cubit.dart';
import 'package:receipt_saver/UI/home/cubit/list_receipts_cubit.dart';
import 'package:receipt_saver/repositories/receipt_repository.dart';

class HomeComponent extends StatefulWidget {
  const HomeComponent({Key? key}) : super(key: key);

  @override
  _HomeComponentState createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  _onTap() {
    setState(() {
      print("This was tapped");
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListReceiptsCubit(receiptRepository: ReceiptRepository()),
      child: BlocConsumer<ListReceiptsCubit, ListReceiptsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return state.map(initial: (value) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Home"),
                centerTitle: true,
                automaticallyImplyLeading: false,
              ),
              body: Column(
                children: [
                  Text("This is working"),
                  ListReceipts(
                    receipt: value.receipts,
                  ),
                ],
              ),
              // floatingActionButton: FloatingActionButton(
              //   onPressed: _onTap(),
              //   tooltip: 'Increment',
              //   child: const Icon(Icons.add),
              // ),
            );
          });
        },
      ),
    );
  }
}

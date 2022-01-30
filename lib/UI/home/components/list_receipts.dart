import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_saver/UI/home/cubit/list_receipts_cubit.dart';
import 'package:receipt_saver/model/user_model/receipt.dart';

class ListReceipts extends StatefulWidget {
  final List<Receipt> receipt;
  const ListReceipts({
    Key? key,
    required this.receipt,
  }) : super(key: key);

  @override
  _ListReceiptsState createState() => _ListReceiptsState();
}

class _ListReceiptsState extends State<ListReceipts> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListReceiptsCubit, ListReceiptsState>(
      builder: (context, state) {
        return Column(
          children: [
            ...List.generate(
              state.receipts.length,
              (index) => Text(widget.receipt[index].storeName!),
            )
          ],
        );
      },
    );
  }
}

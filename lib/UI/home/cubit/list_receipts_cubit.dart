// ignore_for_file: prefer_const_constructors

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:receipt_saver/model/user_model/receipt.dart';
import 'package:receipt_saver/repositories/receipt_repository.dart';

part 'list_receipts_state.dart';
part 'list_receipts_cubit.freezed.dart';

class ListReceiptsCubit extends Cubit<ListReceiptsState> {
  final ReceiptRepository receiptRepository;
  ListReceiptsCubit({
    required this.receiptRepository,
  }) : super(ListReceiptsState.initial(receipts: [])) {
    _init();
  }
  _init() {
    receiptRepository.getReceipts();
  }
}

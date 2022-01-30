import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipts_page_state.dart';
part 'receipts_page_cubit.freezed.dart';

class ReceiptsPageCubit extends Cubit<ReceiptsPageState> {
  ReceiptsPageCubit() : super(ReceiptsPageState.initial()) {
    _init();
  }

  _init() {}
}

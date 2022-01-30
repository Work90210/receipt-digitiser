import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_page_state.dart';
part 'store_page_cubit.freezed.dart';

class StorePageCubit extends Cubit<StorePageState> {
  StorePageCubit() : super(StorePageState.initial());
}

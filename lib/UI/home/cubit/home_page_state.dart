part of 'home_page_cubit.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.initial({
    required Widget body,
    required int index,
  }) = _Initial;
}

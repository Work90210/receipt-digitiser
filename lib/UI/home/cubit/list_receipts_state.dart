part of 'list_receipts_cubit.dart';

@freezed
class ListReceiptsState with _$ListReceiptsState {
  const factory ListReceiptsState.initial({
    required List<Receipt> receipts,
  }) = _Initial;
}

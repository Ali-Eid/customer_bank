part of 'chequebook_bloc.dart';

@freezed
class ChequebookState with _$ChequebookState {
  const factory ChequebookState.initial({
    //my chequebook
    @Default(false) bool isLoadingMyChequebook,
    @Default(false) bool isLoadingPaginationMyChequebook,
    @Default(false) bool hasErrorMyChequebook,
    @Default("") String errorMessageMyChequebook,
    @Default([]) List<ChequebookModel> cheques,
    //pages chequebook
    @Default(false) bool isLoadingPagesChequebook,
    @Default(false) bool hasErrorPagesChequebook,
    @Default("") String errorMessagePagesChequebook,
    @Default([]) List<PageChequebookModel> pagesChequebook,
    //RequestChequebook
    @Default(false) bool isLoadingRequestChequebook,
    @Default(false) bool hasErrorRequestChequebook,
    @Default("") String errorMessageRequestChequebook,
    @Default(false) bool successRequestChequebook,
    //Report StolenChequebook
    @Default(false) bool isLoadingReportStolenChequebook,
    @Default(false) bool hasErrorReportStolenChequebook,
    @Default("") String errorMessageReportStolenChequebook,
    @Default(false) bool successReportStolenChequebook,
  }) = _Initial;
}

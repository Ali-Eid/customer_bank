part of 'chequebook_bloc.dart';

@freezed
class ChequebookEvent with _$ChequebookEvent {
  const factory ChequebookEvent.getPagesChequebook() = _GetPagesChequebook;
  const factory ChequebookEvent.getMyChequebook() = _GetMyChequebook;
  const factory ChequebookEvent.getMyChequebookPagination() =
      _GetMyChequebookPagination;
  const factory ChequebookEvent.requestChequebook(
      {required int accountId, required int pageId}) = _RequestChequebook;
  const factory ChequebookEvent.reportStolenChequebook(
      {required int chequebookId}) = _ReportStolenChequebook;
}

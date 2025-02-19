import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/features/chequebook/domain/usecase/chequebook_usecase.dart';

import '../../../domain/models/chequebook_model/chequebook_model.dart';
import '../../../domain/models/page_chequebook_model/page_chequebook_model.dart';

part 'chequebook_event.dart';
part 'chequebook_state.dart';
part 'chequebook_bloc.freezed.dart';

class ChequebookBloc extends Bloc<ChequebookEvent, ChequebookState> {
  final GetMyChequebookUsecase getMyChequebookUsecase;
  final GetPagesChequebookUsecase getPagesChequebookUsecase;
  final ReportStolenChequebookUsecase reportStolenChequebookUsecase;
  final CreateChequebookUsecase createChequebookUsecase;
  int currentPage = 1;
  int totalPages = 1;
  List<ChequebookModel> cheques = [];
  ChequebookBloc(
      {required this.getMyChequebookUsecase,
      required this.getPagesChequebookUsecase,
      required this.reportStolenChequebookUsecase,
      required this.createChequebookUsecase})
      : super(const _Initial()) {
    on<ChequebookEvent>((event, emit) async {
      await event.map(
        getPagesChequebook: (value) async {
          emit(state.copyWith(
              isLoadingPagesChequebook: true,
              hasErrorPagesChequebook: false,
              pagesChequebook: []));
          final failureOrPages = await getPagesChequebookUsecase.execute();
          failureOrPages.when(
            (success) {
              emit(state.copyWith(
                  isLoadingPagesChequebook: false,
                  hasErrorPagesChequebook: false,
                  pagesChequebook: success.data));
            },
            (error) {
              emit(state.copyWith(
                isLoadingPagesChequebook: false,
                hasErrorPagesChequebook: true,
                errorMessagePagesChequebook: error.message,
              ));
            },
          );
        },
        getMyChequebook: (value) async {
          cheques.clear();
          emit(state.copyWith(
              isLoadingPaginationMyChequebook: false,
              isLoadingMyChequebook: true,
              hasErrorMyChequebook: false,
              cheques: cheques));
          final failureOrPages =
              await getMyChequebookUsecase.execute((page: currentPage));
          failureOrPages.when(
            (success) {
              cheques.addAll(success.data);
              currentPage = success.meta.currentPage;
              totalPages = success.meta.totalPages;
              emit(state.copyWith(
                  isLoadingPaginationMyChequebook: false,
                  isLoadingMyChequebook: false,
                  hasErrorMyChequebook: false,
                  cheques: cheques));
            },
            (error) {
              emit(state.copyWith(
                  isLoadingMyChequebook: false,
                  hasErrorMyChequebook: true,
                  errorMessageMyChequebook: error.message,
                  cheques: cheques));
            },
          );
        },
        getMyChequebookPagination: (value) async {
          emit(state.copyWith(
              isLoadingPaginationMyChequebook: true,
              isLoadingMyChequebook: false,
              hasErrorMyChequebook: false,
              cheques: cheques));
          final failureOrPages =
              await getMyChequebookUsecase.execute((page: (currentPage + 1)));
          failureOrPages.when(
            (success) {
              cheques.addAll(success.data);
              currentPage = success.meta.currentPage;
              totalPages = success.meta.totalPages;
              emit(state.copyWith(
                  isLoadingPaginationMyChequebook: false,
                  isLoadingMyChequebook: false,
                  hasErrorMyChequebook: false,
                  cheques: cheques));
            },
            (error) {
              emit(state.copyWith(
                  isLoadingPaginationMyChequebook: false,
                  isLoadingMyChequebook: false,
                  hasErrorMyChequebook: true,
                  errorMessageMyChequebook: error.message,
                  cheques: cheques));
            },
          );
        },
        requestChequebook: (value) async {
          emit(state.copyWith(
              isLoadingRequestChequebook: true,
              hasErrorRequestChequebook: false,
              successRequestChequebook: false));
          final failureOrPages = await createChequebookUsecase.execute((
            accountId: value.accountId,
            pageId: value.pageId,
          ));
          failureOrPages.when(
            (success) {
              emit(state.copyWith(
                  isLoadingRequestChequebook: false,
                  hasErrorRequestChequebook: false,
                  successRequestChequebook: true));
            },
            (error) {
              emit(state.copyWith(
                isLoadingRequestChequebook: false,
                successRequestChequebook: false,
                hasErrorRequestChequebook: true,
                errorMessageRequestChequebook: error.message,
              ));
            },
          );
        },
        reportStolenChequebook: (value) async {
          emit(state.copyWith(
              isLoadingReportStolenChequebook: true,
              hasErrorReportStolenChequebook: false,
              successReportStolenChequebook: false));
          final failureOrPages = await reportStolenChequebookUsecase
              .execute((chequebookId: value.chequebookId));
          failureOrPages.when(
            (success) {
              emit(state.copyWith(
                  isLoadingReportStolenChequebook: false,
                  hasErrorReportStolenChequebook: false,
                  successReportStolenChequebook: true));
            },
            (error) {
              emit(state.copyWith(
                isLoadingReportStolenChequebook: false,
                successReportStolenChequebook: false,
                hasErrorReportStolenChequebook: true,
                errorMessageReportStolenChequebook: error.message,
              ));
            },
          );
        },
      );
    });
  }
}

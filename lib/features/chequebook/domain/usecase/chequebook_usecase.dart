import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/usecases/base_usecase.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/bases/models/response_model/response_model.dart';
import '../models/chequebook_model/chequebook_model.dart';
import '../models/page_chequebook_model/page_chequebook_model.dart';
import '../repository/chequebook_repository.dart';

class GetMyChequebookUsecase
    implements
        BaseUseCase<({int page}),
            ResponsePaginationModel<List<ChequebookModel>>> {
  final ChequebookRepository repository;

  GetMyChequebookUsecase({required this.repository});
  @override
  Future<Result<ResponsePaginationModel<List<ChequebookModel>>, FailureModel>>
      execute(({int page}) input) async {
    return await repository.getMyChequebook(page: input.page);
  }
}

class GetPagesChequebookUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<PageChequebookModel>>> {
  final ChequebookRepository repository;

  GetPagesChequebookUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<PageChequebookModel>>, FailureModel>>
      execute() async {
    return await repository.getPagesChequebook();
  }
}

class CreateChequebookUsecase
    implements
        BaseUseCase<({int accountId, int pageId}),
            ResponseModel<ChequebookModel>> {
  final ChequebookRepository repository;

  CreateChequebookUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<ChequebookModel>, FailureModel>> execute(
      ({int accountId, int pageId}) input) async {
    return await repository.createChequebook(
        accountId: input.accountId, pageId: input.pageId);
  }
}

class ReportStolenChequebookUsecase
    implements BaseUseCase<({int chequebookId}), ResponseModel> {
  final ChequebookRepository repository;

  ReportStolenChequebookUsecase({required this.repository});
  @override
  Future<Result<ResponseModel, FailureModel>> execute(
      ({int chequebookId}) input) async {
    return await repository.requestStolenChequebook(
        chequebookId: input.chequebookId);
  }
}

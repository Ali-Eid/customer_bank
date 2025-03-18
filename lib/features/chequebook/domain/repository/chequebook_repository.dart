import 'package:fs_bank/core/bases/models/failure_model/failure_model.dart';
import 'package:fs_bank/core/bases/models/response_model/response_model.dart';
import 'package:fs_bank/features/chequebook/domain/models/chequebook_model/chequebook_model.dart';
import 'package:multiple_result/multiple_result.dart';

import '../models/page_chequebook_model/page_chequebook_model.dart';

abstract class ChequebookRepository {
  Future<Result<ResponsePaginationModel<List<ChequebookModel>>, FailureModel>>
      getMyChequebook({required int page});
  Future<Result<ResponseModel<List<PageChequebookModel>>, FailureModel>>
      getPagesChequebook();
  Future<Result<ResponseModel<ChequebookModel>, FailureModel>> createChequebook(
      {required int accountId, required int pageId});
  Future<Result<ResponseModel, FailureModel>> requestStolenChequebook(
      {required int chequebookId});
}

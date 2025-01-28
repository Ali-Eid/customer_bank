import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/features/beneficiary/domain/models/beneficiary_model/beneficiary_model.dart';
import 'package:fs_bank/features/beneficiary/domain/usecases/beneficiary_usecase.dart';

import '../../../domain/models/input_beneficiary_model/input_beneficiary_model.dart';

part 'beneficiary_event.dart';
part 'beneficiary_state.dart';
part 'beneficiary_bloc.freezed.dart';

class BeneficiaryBloc extends Bloc<BeneficiaryEvent, BeneficiaryState> {
  final GetBeneficiaryUsecase getBeneficiaryUsecase;
  final CreateBeneficiaryUsecase createBeneficiaryUsecase;
  final GetRelationshipsUsecase getRelationshipsUsecase;
  final DeleteBeneficiaryUsecase deleteBeneficiaryUsecase;
  final UpdateBeneficiaryUsecase updateBeneficiaryUsecase;
  List<BeneficiaryModel> beneficiaries = [];
  BeneficiaryBloc(
      {required this.getBeneficiaryUsecase,
      required this.createBeneficiaryUsecase,
      required this.getRelationshipsUsecase,
      required this.deleteBeneficiaryUsecase,
      required this.updateBeneficiaryUsecase})
      : super(const _Initial()) {
    on<BeneficiaryEvent>((event, emit) async {
      await event.map(
        getBeneficiaries: (value) async {
          beneficiaries.clear();
          emit(state.copyWith(
            isLoadingGetBeneficiaries: true,
            hasError: false,
            successCreateBeneficiary: false,
          ));
          final failureOrBeneficiaries = await getBeneficiaryUsecase.execute();
          failureOrBeneficiaries.when(
            (success) {
              beneficiaries.addAll(success.data);
              emit(state.copyWith(
                  isLoadingGetBeneficiaries: false,
                  beneficiaries: beneficiaries));
            },
            (error) {
              emit(state.copyWith(
                hasError: true,
                messageError: error.message,
                isLoadingGetBeneficiaries: false,
              ));
            },
          );
        },
        createBeneficiary: (value) async {
          emit(state.copyWith(
            isLoadingCreateBeneficiary: true,
            hasError: false,
            successCreateBeneficiary: false,
          ));
          final failureOrBeneficiaries =
              await createBeneficiaryUsecase.execute(value.beneficiary);
          failureOrBeneficiaries.when(
            (success) {
              beneficiaries.add(success.data);
              emit(state.copyWith(
                  isLoadingCreateBeneficiary: false,
                  messageSuccess: success.message,
                  successCreateBeneficiary: true,
                  beneficiaries: beneficiaries));
            },
            (error) {
              emit(state.copyWith(
                hasError: true,
                messageError: error.message,
                isLoadingCreateBeneficiary: false,
              ));
            },
          );
        },
        getRelationships: (value) async {
          emit(state.copyWith(
            isLoadingGetRelationships: true,
            hasError: false,
            successCreateBeneficiary: false,
          ));
          final failureOrBeneficiaries =
              await getRelationshipsUsecase.execute();
          failureOrBeneficiaries.when(
            (success) {
              emit(state.copyWith(
                  isLoadingGetRelationships: false,
                  relationships: success.data));
            },
            (error) {
              emit(state.copyWith(
                hasError: true,
                messageError: error.message,
                isLoadingGetRelationships: false,
              ));
            },
          );
        },
        updateBeneficiary: (value) async {
          int index =
              beneficiaries.indexWhere((element) => element.id == value.id);
          BeneficiaryModel temp = beneficiaries[index];
          beneficiaries[index] = beneficiaries[index].copyWith(
            accountNumber: value.beneficiary.accountNumber,
            fullName: value.beneficiary.fullName,
            title: value.beneficiary.title,
          );
          emit(state.copyWith(
            isLoadingCreateBeneficiary: true,
            hasError: false,
            successCreateBeneficiary: false,
          ));
          final failureOrBeneficiaries = await updateBeneficiaryUsecase
              .execute((id: value.id, model: value.beneficiary));
          failureOrBeneficiaries.when(
            (success) {
              // beneficiaries.add(success.data);
              beneficiaries[index] = success.data;
              emit(state.copyWith(
                  isLoadingCreateBeneficiary: false,
                  messageSuccess: success.message,
                  successCreateBeneficiary: true,
                  beneficiaries: beneficiaries));
            },
            (error) {
              beneficiaries[index] = temp;
              emit(state.copyWith(
                hasError: true,
                messageError: error.message,
                isLoadingCreateBeneficiary: false,
              ));
            },
          );
        },
        deleteBeneficiary: (value) async {
          int index =
              beneficiaries.indexWhere((element) => element.id == value.id);
          BeneficiaryModel temp = beneficiaries[index];
          beneficiaries.removeAt(index);
          emit(state.copyWith(
            isLoadingCreateBeneficiary: true,
            hasError: false,
            successDeleteBeneficiary: false,
            successCreateBeneficiary: false,
          ));
          final failureOrBeneficiaries =
              await deleteBeneficiaryUsecase.execute(value.id);
          failureOrBeneficiaries.when(
            (success) {
              emit(state.copyWith(
                  isLoadingCreateBeneficiary: false,
                  messageSuccess: success.message,
                  successDeleteBeneficiary: true,
                  beneficiaries: beneficiaries));
            },
            (error) {
              beneficiaries.insert(index, temp);
              emit(state.copyWith(
                hasError: true,
                messageError: error.message,
                isLoadingCreateBeneficiary: false,
              ));
            },
          );
        },
      );
    });
  }
}

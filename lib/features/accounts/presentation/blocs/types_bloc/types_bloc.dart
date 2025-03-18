import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/core/cache/app_preferences.dart';
import 'package:fs_bank/core/cache/keys_preferences.dart';
import 'package:fs_bank/features/cards/domain/usecases/card_usecases.dart';

import '../../../../../core/bases/models/static_model/static_model.dart';

part 'types_event.dart';
part 'types_state.dart';
part 'types_bloc.freezed.dart';

class TypesBloc extends Bloc<TypesEvent, TypesState> {
  final GetBeneficiaryTypesUsecase getBeneficiaryTypes;
  final GetCardTypesUsecase getCardTypesUsecase;
  final AppPreferences appPreferences;
  TypesBloc(
      {required this.getBeneficiaryTypes,
      required this.getCardTypesUsecase,
      required this.appPreferences})
      : super(const TypesState.initial()) {
    on<TypesEvent>((event, emit) async {
      await event.map(
        getCardTypes: (value) async {
          emit(state.copyWith(
              isLoadingCardTypes: true,
              hasErrorCardTypes: false,
              cardTypes: appPreferences.getList<StaticTextModel>(
                  KeysPreferences.PREFS_KEY_CARDS_TYPE,
                  StaticTextModel.fromJson)));
          final failureOrTypes = await getCardTypesUsecase.execute();
          await failureOrTypes.when(
            (success) async {
              await appPreferences.saveList<StaticTextModel>(
                  KeysPreferences.PREFS_KEY_CARDS_TYPE,
                  success.data.map((e) => e.toJson()).toList());
              emit(state.copyWith(
                  isLoadingCardTypes: false,
                  hasErrorCardTypes: false,
                  cardTypes: success.data));
            },
            (error) {
              emit(state.copyWith(
                  isLoadingCardTypes: false,
                  hasErrorCardTypes: true,
                  messageErrorCardTypes: error.message));
            },
          );
        },
        getBeneficiaryType: (value) async {
          emit(state.copyWith(
              isLoadingBeneficiaryType: true,
              hasErrorBeneficiaryType: false,
              beneficiaryType: appPreferences.getList<StaticTextModel>(
                  KeysPreferences.PREFS_KEY_BENEFICARY_TYPE,
                  StaticTextModel.fromJson)));
          final failureOrTypes = await getBeneficiaryTypes.execute();
          await failureOrTypes.when(
            (success) async {
              await appPreferences.saveList<StaticTextModel>(
                  KeysPreferences.PREFS_KEY_BENEFICARY_TYPE,
                  success.data.map((e) => e.toJson()).toList());
              emit(state.copyWith(
                  isLoadingBeneficiaryType: false,
                  hasErrorBeneficiaryType: false,
                  beneficiaryType: success.data));
            },
            (error) {
              emit(state.copyWith(
                  isLoadingBeneficiaryType: false,
                  hasErrorBeneficiaryType: true,
                  messageErrorBeneficiaryType: error.message));
            },
          );
        },
      );
    });
  }
}

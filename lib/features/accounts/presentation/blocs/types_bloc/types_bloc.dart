import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fs_bank/features/cards/domain/usecases/card_usecases.dart';

import '../../../../../core/bases/models/static_model/static_model.dart';

part 'types_event.dart';
part 'types_state.dart';
part 'types_bloc.freezed.dart';

class TypesBloc extends Bloc<TypesEvent, TypesState> {
  final GetBeneficiaryTypesUsecase getBeneficiaryTypes;
  final GetCardTypesUsecase getCardTypesUsecase;
  List<StaticTextModel> cardsTypes = [];
  List<StaticTextModel> beneficiaryTypes = [];
  TypesBloc(
      {required this.getBeneficiaryTypes, required this.getCardTypesUsecase})
      : super(const TypesState.loading()) {
    on<TypesEvent>((event, emit) async {
      await event.map(
        getCardTypes: (value) async {
          cardsTypes.clear();
          emit(const TypesState.loading());
          final failureOrTypes = await getCardTypesUsecase.execute();
          failureOrTypes.when(
            (success) {
              cardsTypes.addAll(success.data);
              emit(TypesState.loaded(types: success.data));
            },
            (error) {
              emit(TypesState.error(message: error.message));
            },
          );
        },
        getBeneficiaryType: (value) async {
          beneficiaryTypes.clear();
          emit(const TypesState.loading());
          final failureOrTypes = await getBeneficiaryTypes.execute();
          failureOrTypes.when(
            (success) {
              beneficiaryTypes.addAll(success.data);
              emit(TypesState.loaded(types: success.data));
            },
            (error) {
              emit(TypesState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}

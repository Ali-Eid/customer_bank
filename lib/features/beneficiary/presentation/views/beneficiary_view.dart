import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/core/bases/models/static_model/static_model.dart';
import 'package:fs_bank/core/constants/string_manager.dart';
import 'package:fs_bank/core/widgets/generic_drop_down_widget.dart';
import 'package:fs_bank/features/beneficiary/domain/models/input_beneficiary_model/input_beneficiary_model.dart';
import 'package:fs_bank/features/transfer/presentation/blocs/input_transfer_cubit/input_transfer_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../../../../core/constants/assets_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../../../core/widgets/bottom_sheet_base_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/widgets/toast_widget.dart';
import '../../domain/models/beneficiary_model/beneficiary_model.dart';
import '../blocs/bloc/beneficiary_bloc.dart';

class BeneficiaryView extends StatelessWidget {
  const BeneficiaryView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings().favorite),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showMyBottomSheet(
            context,
            CreateBeneficiaryWidget(
              beneficiaryBloc: context.read<BeneficiaryBloc>(),
            ),
          );
        },
        backgroundColor: ColorManager.primary,
        child: Icon(
          Icons.add,
          color: ColorManager.secondary,
        ),
      ),
      body: BlocConsumer(
        listener: (context, BeneficiaryState state) {
          if (state.successCreateBeneficiary) {
            showToast(
              context: context,
              message: state.messageSuccess,
            );
            context.pop();
          }
          if (state.hasError) {
            showToast(
                context: context,
                message: state.messageError,
                color: ColorManager.persimmon);
          }
        },
        bloc: context.read<BeneficiaryBloc>(),
        builder: (context, state) {
          return getBeneficiaryWidgetState(
              state: context.watch<BeneficiaryBloc>().state);
        },
      ),
    );
  }
}

class CreateBeneficiaryWidget extends StatefulWidget {
  final BeneficiaryBloc beneficiaryBloc;
  final BeneficiaryModel? model;
  const CreateBeneficiaryWidget({
    super.key,
    required this.beneficiaryBloc,
    this.model,
  });

  @override
  State<CreateBeneficiaryWidget> createState() =>
      _CreateBeneficiaryWidgetState();
}

class _CreateBeneficiaryWidgetState extends State<CreateBeneficiaryWidget> {
  final titleController = TextEditingController();
  final fullNameController = TextEditingController();
  final accountNumberController = TextEditingController();
  int relationId = 0;
  final relationController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    widget.beneficiaryBloc.state.relationships.isEmpty
        ? widget.beneficiaryBloc.add(const BeneficiaryEvent.getRelationships())
        : null;
    if (widget.model != null) {
      titleController.text = widget.model?.title ?? "";
      fullNameController.text = widget.model?.fullName ?? "";
      accountNumberController.text = widget.model?.accountNumber ?? "";
      relationController.text = widget.model?.relationship.text ?? "";
      relationId = widget.model?.relationship.id ?? 0;
    }
    super.initState();
  }

  @override
  void dispose() {
    titleController;
    fullNameController.dispose();
    accountNumberController.dispose();
    relationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: AppSizeW.s16, vertical: AppSizeH.s16),
        child: SingleChildScrollView(
          child: Column(
            spacing: AppSizeH.s12,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Create Beneficiary",
                  style: Theme.of(context).textTheme.headlineSmall),
              TextFormField(
                controller: titleController,
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.headlineLarge,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter title';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(hintText: "Title"),
              ),
              TextFormField(
                controller: fullNameController,
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.headlineLarge,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter full name';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(hintText: "Full name"),
              ),
              TextFormField(
                controller: accountNumberController,
                keyboardType: TextInputType.number,
                style: Theme.of(context).textTheme.headlineLarge,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter account number';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(hintText: "Account number"),
              ),
              BlocBuilder(
                bloc: widget.beneficiaryBloc,
                builder: (context, state) {
                  return GenericDropdownField<StaticTextModel>(
                    items: widget.beneficiaryBloc.state.relationships,
                    itemToString: (value) => value.text,
                    hintText: "Relations",
                    selectedValue: widget.model?.relationship,
                    onChanged: (value) {
                      setState(
                        () {
                          relationId = value?.id ?? 0;
                        },
                      );
                    },
                  );
                },
              ),
              Visibility(
                  visible: relationId == 1,
                  replacement: SizedBox(height: AppSizeH.s35),
                  child: TextFormField(
                    controller: relationController,
                    keyboardType: TextInputType.number,
                    style: Theme.of(context).textTheme.headlineLarge,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter other relation';
                      }
                      return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration:
                        const InputDecoration(hintText: "Relation note"),
                  )),
              BlocBuilder(
                bloc: widget.beneficiaryBloc,
                builder: (context, BeneficiaryState state) {
                  if (state.isLoadingCreateBeneficiary) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: AppSizeH.s12),
                      child: const LinearProgressIndicator(),
                    );
                  }
                  return Row(
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(ColorManager.white),
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(AppSizeR.s8),
                                    side: BorderSide(
                                        color: ColorManager.persimmon)))),
                        onPressed: () {
                          context.pop();
                        },
                        child: Text(
                          "Back",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(color: ColorManager.persimmon),
                        ),
                      ),
                      SizedBox(width: AppSizeW.s8),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState?.validate() ?? false) {
                                widget.model != null
                                    ? widget.beneficiaryBloc.add(
                                        BeneficiaryEvent.updateBeneficiary(
                                            id: widget.model?.id ?? 0,
                                            beneficiary: InputBeneficiaryModel(
                                                title: titleController.text,
                                                fullName:
                                                    fullNameController.text,
                                                accountNumber:
                                                    accountNumberController
                                                        .text,
                                                relationshipId: relationId,
                                                relationshipOther:
                                                    relationController.text)))
                                    : widget.beneficiaryBloc.add(
                                        BeneficiaryEvent.createBeneficiary(
                                            beneficiary: InputBeneficiaryModel(
                                                title: titleController.text,
                                                fullName:
                                                    fullNameController.text,
                                                accountNumber:
                                                    accountNumberController
                                                        .text,
                                                relationshipId: relationId,
                                                relationshipOther:
                                                    relationController.text)));
                              }
                            },
                            child: const Text("Save")),
                      )
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget getBeneficiaryWidgetState({required BeneficiaryState state}) {
  if (state.isLoadingGetBeneficiaries) {
    return Center(child: LoadingWidget(height: AppSizeH.s100));
  }
  return state.beneficiaries.isEmpty
      ? const Center(
          child: Text("no data"),
        )
      : ListView.builder(
          itemBuilder: (context, index) {
            return BeneficiaryItemWidget(
                key: UniqueKey(), model: state.beneficiaries[index]);
          },
          itemCount: state.beneficiaries.length);
}

class BeneficiaryItemWidget extends StatelessWidget {
  final BeneficiaryModel model;
  const BeneficiaryItemWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizeW.s4),
      child: Card(
        elevation: 2,
        shadowColor: ColorManager.secondary,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizeW.s16,
                ),
                child: Row(
                  spacing: AppSizeW.s16,
                  children: [
                    const Icon(Icons.person),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            model.fullName,
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          SizedBox(width: AppSizeW.s20),
                          Text(
                            model.relationship.text,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Account No:",
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                              Text(
                                model.accountNumber,
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: AppSizeW.s12),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      showMyBottomSheet(
                        context,
                        CreateBeneficiaryWidget(
                          beneficiaryBloc: context.read<BeneficiaryBloc>(),
                          model: model,
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.edit,
                      size: AppSizeSp.s22,
                      color: ColorManager.secondary,
                    )),
                IconButton(
                    onPressed: () {
                      context.read<BeneficiaryBloc>().add(
                          BeneficiaryEvent.deleteBeneficiary(id: model.id));
                    },
                    icon: Icon(
                      Icons.delete_outline_rounded,
                      size: AppSizeSp.s22,
                      color: ColorManager.persimmon,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

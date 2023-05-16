// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'payment_service_judgments_notarial_acts_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactivePaymentServiceJudgmentsNotarialActsModelFormConsumer
    extends StatelessWidget {
  const ReactivePaymentServiceJudgmentsNotarialActsModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context,
      PaymentServiceJudgmentsNotarialActsModelForm formModel,
      Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactivePaymentServiceJudgmentsNotarialActsModelForm.of(context);

    if (formModel is! PaymentServiceJudgmentsNotarialActsModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class PaymentServiceJudgmentsNotarialActsModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const PaymentServiceJudgmentsNotarialActsModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final PaymentServiceJudgmentsNotarialActsModelForm form;
}

class ReactivePaymentServiceJudgmentsNotarialActsModelForm
    extends StatelessWidget {
  const ReactivePaymentServiceJudgmentsNotarialActsModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final PaymentServiceJudgmentsNotarialActsModelForm form;

  final WillPopCallback? onWillPop;

  static PaymentServiceJudgmentsNotarialActsModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              PaymentServiceJudgmentsNotarialActsModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        PaymentServiceJudgmentsNotarialActsModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget
                as PaymentServiceJudgmentsNotarialActsModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return PaymentServiceJudgmentsNotarialActsModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class PaymentServiceJudgmentsNotarialActsModelFormBuilder
    extends StatefulWidget {
  const PaymentServiceJudgmentsNotarialActsModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final PaymentServiceJudgmentsNotarialActsModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context,
      PaymentServiceJudgmentsNotarialActsModelForm formModel,
      Widget? child) builder;

  final void Function(BuildContext context,
      PaymentServiceJudgmentsNotarialActsModelForm formModel)? initState;

  @override
  _PaymentServiceJudgmentsNotarialActsModelFormBuilderState createState() =>
      _PaymentServiceJudgmentsNotarialActsModelFormBuilderState();
}

class _PaymentServiceJudgmentsNotarialActsModelFormBuilderState
    extends State<PaymentServiceJudgmentsNotarialActsModelFormBuilder> {
  late PaymentServiceJudgmentsNotarialActsModelForm _formModel;

  @override
  void initState() {
    _formModel = PaymentServiceJudgmentsNotarialActsModelForm(
        widget.model,
        PaymentServiceJudgmentsNotarialActsModelForm.formElements(widget.model),
        null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(
      covariant PaymentServiceJudgmentsNotarialActsModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = PaymentServiceJudgmentsNotarialActsModelForm(
          widget.model,
          PaymentServiceJudgmentsNotarialActsModelForm.formElements(
              widget.model),
          null);

      if (_formModel.form.disabled) {
        _formModel.form.markAsDisabled();
      }

      widget.initState?.call(context, _formModel);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactivePaymentServiceJudgmentsNotarialActsModelForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class PaymentServiceJudgmentsNotarialActsModelForm
    implements FormModel<PaymentServiceJudgmentsNotarialActsModel> {
  PaymentServiceJudgmentsNotarialActsModelForm(
    this.paymentServiceJudgmentsNotarialActsModel,
    this.form,
    this.path,
  ) {}

  static const String typesControlName = "types";

  static const String provinceControlName = "province";

  static const String agencyControlName = "agency";

  final PaymentServiceJudgmentsNotarialActsModel?
      paymentServiceJudgmentsNotarialActsModel;

  final FormGroup form;

  final String? path;

  String provinceControlPath() => pathBuilder(provinceControlName);
  String agencyControlPath() => pathBuilder(agencyControlName);
  String typesControlPath() => pathBuilder(typesControlName);
  LocationModel get _provinceValue => provinceControl.value as LocationModel;
  AgencyModel get _agencyValue => agencyControl.value as AgencyModel;
  List<bool> get _typesValue =>
      typesControl.value?.whereType<bool>().toList() ?? [];
  bool get containsProvince {
    try {
      form.control(provinceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAgency {
    try {
      form.control(agencyControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsTypes {
    try {
      form.control(typesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get provinceErrors => provinceControl.errors;
  Object? get agencyErrors => agencyControl.errors;
  Object? get typesErrors => typesControl.errors;
  void get provinceFocus => form.focus(provinceControlPath());
  void get agencyFocus => form.focus(agencyControlPath());
  void get typesFocus => form.focus(typesControlPath());
  void provinceValueUpdate(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    provinceControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void agencyValueUpdate(
    AgencyModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    agencyControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void typesValueUpdate(
    List<bool> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    typesControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void provinceValuePatch(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    provinceControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void agencyValuePatch(
    AgencyModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    agencyControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void typesValuePatch(
    List<bool> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    typesControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void provinceValueReset(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      provinceControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void agencyValueReset(
    AgencyModel value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      agencyControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void typesValueReset(
    List<bool> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      typesControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<LocationModel> get provinceControl =>
      form.control(provinceControlPath()) as FormControl<LocationModel>;
  FormControl<AgencyModel> get agencyControl =>
      form.control(agencyControlPath()) as FormControl<AgencyModel>;
  FormArray<bool> get typesControl =>
      form.control(typesControlPath()) as FormArray<bool>;
  void provinceSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      provinceControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      provinceControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void agencySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      agencyControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      agencyControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void typesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      typesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      typesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addTypesItem(
    bool value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    typesControl.add(FormControl<bool>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  @override
  PaymentServiceJudgmentsNotarialActsModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return PaymentServiceJudgmentsNotarialActsModel(
        types: _typesValue, province: _provinceValue, agency: _agencyValue);
  }

  PaymentServiceJudgmentsNotarialActsModelForm copyWithPath(String? path) {
    return PaymentServiceJudgmentsNotarialActsModelForm(
        paymentServiceJudgmentsNotarialActsModel, form, path);
  }

  @override
  void updateValue(
    PaymentServiceJudgmentsNotarialActsModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          PaymentServiceJudgmentsNotarialActsModelForm.formElements(value)
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void reset({
    PaymentServiceJudgmentsNotarialActsModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(
          PaymentServiceJudgmentsNotarialActsModel?
              paymentServiceJudgmentsNotarialActsModel) =>
      FormGroup({
        typesControlName: FormArray<bool>(
            (paymentServiceJudgmentsNotarialActsModel?.types ?? [])
                .map((e) => FormControl<bool>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [
              (control) =>
                  atLeastOneElementValidator(control as FormArray<bool>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        provinceControlName: FormControl<LocationModel>(
            value: paymentServiceJudgmentsNotarialActsModel?.province,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        agencyControlName: FormControl<AgencyModel>(
            value: paymentServiceJudgmentsNotarialActsModel?.agency,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactivePaymentServiceJudgmentsNotarialActsModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactivePaymentServiceJudgmentsNotarialActsModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(
      PaymentServiceJudgmentsNotarialActsModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PaymentServiceJudgmentsNotarialActsModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      PaymentServiceJudgmentsNotarialActsModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactivePaymentServiceJudgmentsNotarialActsModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final itemList = (formArray.value ?? [])
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactivePaymentServiceJudgmentsNotarialActsModelFormFormGroupArrayBuilder<
    V> extends StatelessWidget {
  const ReactivePaymentServiceJudgmentsNotarialActsModelFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<V>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<V>> Function(
      PaymentServiceJudgmentsNotarialActsModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PaymentServiceJudgmentsNotarialActsModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      PaymentServiceJudgmentsNotarialActsModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactivePaymentServiceJudgmentsNotarialActsModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <V>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

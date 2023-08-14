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

  static const String serviceControlName = "service";

  static const String provinceControlName = "province";

  static const String agencyControlName = "agency";

  final PaymentServiceJudgmentsNotarialActsModel?
      paymentServiceJudgmentsNotarialActsModel;

  final FormGroup form;

  final String? path;

  String serviceControlPath() => pathBuilder(serviceControlName);
  String provinceControlPath() => pathBuilder(provinceControlName);
  String agencyControlPath() => pathBuilder(agencyControlName);
  PaymentofservicesModel get _serviceValue =>
      serviceControl.value as PaymentofservicesModel;
  LocationModel get _provinceValue => provinceControl.value as LocationModel;
  AgencyModel get _agencyValue => agencyControl.value as AgencyModel;
  bool get containsService {
    try {
      form.control(serviceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

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

  Object? get serviceErrors => serviceControl.errors;
  Object? get provinceErrors => provinceControl.errors;
  Object? get agencyErrors => agencyControl.errors;
  void get serviceFocus => form.focus(serviceControlPath());
  void get provinceFocus => form.focus(provinceControlPath());
  void get agencyFocus => form.focus(agencyControlPath());
  void serviceValueUpdate(
    PaymentofservicesModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    serviceControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

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

  void serviceValuePatch(
    PaymentofservicesModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    serviceControl.patchValue(value,
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

  void serviceValueReset(
    PaymentofservicesModel value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      serviceControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
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
  FormControl<PaymentofservicesModel> get serviceControl =>
      form.control(serviceControlPath()) as FormControl<PaymentofservicesModel>;
  FormControl<LocationModel> get provinceControl =>
      form.control(provinceControlPath()) as FormControl<LocationModel>;
  FormControl<AgencyModel> get agencyControl =>
      form.control(agencyControlPath()) as FormControl<AgencyModel>;
  void serviceSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      serviceControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      serviceControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

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

  @override
  PaymentServiceJudgmentsNotarialActsModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'PaymentServiceJudgmentsNotarialActsModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return PaymentServiceJudgmentsNotarialActsModel(
        service: _serviceValue, province: _provinceValue, agency: _agencyValue);
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
        serviceControlName: FormControl<PaymentofservicesModel>(
            value: paymentServiceJudgmentsNotarialActsModel?.service,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
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

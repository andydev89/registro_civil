// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'schedule_turn_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveScheduleTurnFirstStepPersonalModelFormConsumer
    extends StatelessWidget {
  const ReactiveScheduleTurnFirstStepPersonalModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ScheduleTurnFirstStepPersonalModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveScheduleTurnFirstStepPersonalModelForm.of(context);

    if (formModel is! ScheduleTurnFirstStepPersonalModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ScheduleTurnFirstStepPersonalModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ScheduleTurnFirstStepPersonalModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ScheduleTurnFirstStepPersonalModelForm form;
}

class ReactiveScheduleTurnFirstStepPersonalModelForm extends StatelessWidget {
  const ReactiveScheduleTurnFirstStepPersonalModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ScheduleTurnFirstStepPersonalModelForm form;

  final WillPopCallback? onWillPop;

  static ScheduleTurnFirstStepPersonalModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ScheduleTurnFirstStepPersonalModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ScheduleTurnFirstStepPersonalModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget
                as ScheduleTurnFirstStepPersonalModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return ScheduleTurnFirstStepPersonalModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ScheduleTurnFirstStepPersonalModelFormBuilder extends StatefulWidget {
  const ScheduleTurnFirstStepPersonalModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ScheduleTurnFirstStepPersonalModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ScheduleTurnFirstStepPersonalModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context,
      ScheduleTurnFirstStepPersonalModelForm formModel)? initState;

  @override
  _ScheduleTurnFirstStepPersonalModelFormBuilderState createState() =>
      _ScheduleTurnFirstStepPersonalModelFormBuilderState();
}

class _ScheduleTurnFirstStepPersonalModelFormBuilderState
    extends State<ScheduleTurnFirstStepPersonalModelFormBuilder> {
  late FormGroup _form;

  late ScheduleTurnFirstStepPersonalModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel =
        ScheduleTurnFirstStepPersonalModelForm(widget.model, _form, null);

    final elements = _formModel.formElements();
    _form.setValidators(elements.validators);
    _form.setAsyncValidators(elements.asyncValidators);

    if (elements.disabled) {
      _form.markAsDisabled();
    }

    _form.addAll(elements.controls);

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(
      covariant ScheduleTurnFirstStepPersonalModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel =
          ScheduleTurnFirstStepPersonalModelForm(widget.model, _form, null);
      final elements = _formModel.formElements();

      _form.updateValue(elements.rawValue);
      _form.setValidators(elements.validators);
      _form.setAsyncValidators(elements.asyncValidators);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveScheduleTurnFirstStepPersonalModelForm(
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _form,
        onWillPop: widget.onWillPop,
        builder: (BuildContext context, FormGroup formGroup, Widget? child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class ScheduleTurnFirstStepPersonalModelForm
    implements FormModel<ScheduleTurnFirstStepPersonalModel> {
  ScheduleTurnFirstStepPersonalModelForm(
    this.scheduleTurnFirstStepPersonalModel,
    this.form,
    this.path,
  ) {}

  static String serviceControlName = "service";

  static String paymentMethodControlName = "paymentMethod";

  final ScheduleTurnFirstStepPersonalModel? scheduleTurnFirstStepPersonalModel;

  final FormGroup form;

  final String? path;

  String serviceControlPath() => pathBuilder(serviceControlName);
  String paymentMethodControlPath() => pathBuilder(paymentMethodControlName);
  ServiceType get _serviceValue => serviceControl.value as ServiceType;
  PaymentMethodType get _paymentMethodValue =>
      paymentMethodControl.value as PaymentMethodType;
  bool get containsService {
    try {
      form.control(serviceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPaymentMethod {
    try {
      form.control(paymentMethodControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get serviceErrors => serviceControl.errors;
  Object? get paymentMethodErrors => paymentMethodControl.errors;
  void get serviceFocus => form.focus(serviceControlPath());
  void get paymentMethodFocus => form.focus(paymentMethodControlPath());
  void serviceValueUpdate(
    ServiceType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    serviceControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void paymentMethodValueUpdate(
    PaymentMethodType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    paymentMethodControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void serviceValuePatch(
    ServiceType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    serviceControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void paymentMethodValuePatch(
    PaymentMethodType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    paymentMethodControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void serviceValueReset(
    ServiceType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      serviceControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void paymentMethodValueReset(
    PaymentMethodType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      paymentMethodControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<ServiceType> get serviceControl =>
      form.control(serviceControlPath()) as FormControl<ServiceType>;
  FormControl<PaymentMethodType> get paymentMethodControl =>
      form.control(paymentMethodControlPath())
          as FormControl<PaymentMethodType>;
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

  void paymentMethodSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      paymentMethodControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      paymentMethodControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ScheduleTurnFirstStepPersonalModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ScheduleTurnFirstStepPersonalModel(
        service: _serviceValue, paymentMethod: _paymentMethodValue);
  }

  ScheduleTurnFirstStepPersonalModelForm copyWithPath(String? path) {
    return ScheduleTurnFirstStepPersonalModelForm(
        scheduleTurnFirstStepPersonalModel, form, path);
  }

  @override
  void updateValue(
    ScheduleTurnFirstStepPersonalModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ScheduleTurnFirstStepPersonalModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ScheduleTurnFirstStepPersonalModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value:
              ScheduleTurnFirstStepPersonalModelForm(value, FormGroup({}), null)
                  .formElements()
                  .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void reset({
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  FormGroup formElements() => FormGroup({
        serviceControlName: FormControl<ServiceType>(
            value: scheduleTurnFirstStepPersonalModel?.service,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        paymentMethodControlName: FormControl<PaymentMethodType>(
            value: scheduleTurnFirstStepPersonalModel?.paymentMethod,
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

class ReactiveScheduleTurnFirstStepPersonalModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveScheduleTurnFirstStepPersonalModelFormArrayBuilder({
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
      ScheduleTurnFirstStepPersonalModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ScheduleTurnFirstStepPersonalModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ScheduleTurnFirstStepPersonalModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveScheduleTurnFirstStepPersonalModelForm.of(context);

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

class ReactiveScheduleTurnFirstStepPersonalModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveScheduleTurnFirstStepPersonalModelFormFormGroupArrayBuilder({
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
      ScheduleTurnFirstStepPersonalModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ScheduleTurnFirstStepPersonalModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ScheduleTurnFirstStepPersonalModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveScheduleTurnFirstStepPersonalModelForm.of(context);

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

class ReactiveScheduleTurnFirstStepFamiliarModelFormConsumer
    extends StatelessWidget {
  const ReactiveScheduleTurnFirstStepFamiliarModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ScheduleTurnFirstStepFamiliarModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveScheduleTurnFirstStepFamiliarModelForm.of(context);

    if (formModel is! ScheduleTurnFirstStepFamiliarModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ScheduleTurnFirstStepFamiliarModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ScheduleTurnFirstStepFamiliarModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ScheduleTurnFirstStepFamiliarModelForm form;
}

class ReactiveScheduleTurnFirstStepFamiliarModelForm extends StatelessWidget {
  const ReactiveScheduleTurnFirstStepFamiliarModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ScheduleTurnFirstStepFamiliarModelForm form;

  final WillPopCallback? onWillPop;

  static ScheduleTurnFirstStepFamiliarModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ScheduleTurnFirstStepFamiliarModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ScheduleTurnFirstStepFamiliarModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget
                as ScheduleTurnFirstStepFamiliarModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return ScheduleTurnFirstStepFamiliarModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ScheduleTurnFirstStepFamiliarModelFormBuilder extends StatefulWidget {
  const ScheduleTurnFirstStepFamiliarModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ScheduleTurnFirstStepFamiliarModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ScheduleTurnFirstStepFamiliarModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context,
      ScheduleTurnFirstStepFamiliarModelForm formModel)? initState;

  @override
  _ScheduleTurnFirstStepFamiliarModelFormBuilderState createState() =>
      _ScheduleTurnFirstStepFamiliarModelFormBuilderState();
}

class _ScheduleTurnFirstStepFamiliarModelFormBuilderState
    extends State<ScheduleTurnFirstStepFamiliarModelFormBuilder> {
  late FormGroup _form;

  late ScheduleTurnFirstStepFamiliarModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel =
        ScheduleTurnFirstStepFamiliarModelForm(widget.model, _form, null);

    final elements = _formModel.formElements();
    _form.setValidators(elements.validators);
    _form.setAsyncValidators(elements.asyncValidators);

    if (elements.disabled) {
      _form.markAsDisabled();
    }

    _form.addAll(elements.controls);

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(
      covariant ScheduleTurnFirstStepFamiliarModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel =
          ScheduleTurnFirstStepFamiliarModelForm(widget.model, _form, null);
      final elements = _formModel.formElements();

      _form.updateValue(elements.rawValue);
      _form.setValidators(elements.validators);
      _form.setAsyncValidators(elements.asyncValidators);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveScheduleTurnFirstStepFamiliarModelForm(
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _form,
        onWillPop: widget.onWillPop,
        builder: (BuildContext context, FormGroup formGroup, Widget? child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class ScheduleTurnFirstStepFamiliarModelForm
    implements FormModel<ScheduleTurnFirstStepFamiliarModel> {
  ScheduleTurnFirstStepFamiliarModelForm(
    this.scheduleTurnFirstStepFamiliarModel,
    this.form,
    this.path,
  ) {
    familyFamiliarFormModelForm =
        (scheduleTurnFirstStepFamiliarModel?.family ?? [])
            .asMap()
            .map((k, v) => MapEntry(
                k, FamiliarFormModelForm(v, form, pathBuilder("family.$k"))))
            .values
            .toList();
  }

  static String paymentMethodControlName = "paymentMethod";

  static String scheduleForMeControlName = "scheduleForMe";

  static String familyControlName = "family";

  final ScheduleTurnFirstStepFamiliarModel? scheduleTurnFirstStepFamiliarModel;

  final FormGroup form;

  final String? path;

  late List<FamiliarFormModelForm> familyFamiliarFormModelForm;

  String paymentMethodControlPath() => pathBuilder(paymentMethodControlName);
  String scheduleForMeControlPath() => pathBuilder(scheduleForMeControlName);
  String familyControlPath() => pathBuilder(familyControlName);
  PaymentMethodType get _paymentMethodValue =>
      paymentMethodControl.value as PaymentMethodType;
  bool get _scheduleForMeValue => scheduleForMeControl.value as bool;
  List<FamiliarFormModel> get _familyValue => familyFamiliarFormModelForm
      .asMap()
      .map(
        (k, v) => MapEntry(
          k,
          v
              .copyWithPath(
                pathBuilder("family.$k"),
              )
              .model,
        ),
      )
      .values
      .toList();
  bool get containsPaymentMethod {
    try {
      form.control(paymentMethodControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsScheduleForMe {
    try {
      form.control(scheduleForMeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsFamily {
    try {
      form.control(familyControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get paymentMethodErrors => paymentMethodControl.errors;
  Object? get scheduleForMeErrors => scheduleForMeControl.errors;
  Object? get familyErrors => familyControl.errors;
  void get paymentMethodFocus => form.focus(paymentMethodControlPath());
  void get scheduleForMeFocus => form.focus(scheduleForMeControlPath());
  void get familyFocus => form.focus(familyControlPath());
  void paymentMethodValueUpdate(
    PaymentMethodType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    paymentMethodControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void scheduleForMeValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    scheduleForMeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void familyValueUpdate(
    List<FamiliarFormModel> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if ((value).isEmpty) {
      familyClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final updateList = (value)
        .asMap()
        .map(
          (k, v) => MapEntry(
            k,
            FamiliarFormModelForm(v, form, pathBuilder("family.$k")),
          ),
        )
        .values
        .toList();

    familyFamiliarFormModelForm.clear();
    familyFamiliarFormModelForm.addAll(updateList);

    final toUpdate = <FamiliarFormModelForm>[];
    final toAdd = <FamiliarFormModelForm>[];

    updateList.asMap().forEach((k, v) {
      if (familyFamiliarFormModelForm.asMap().containsKey(k) &&
          (familyControl.value ?? []).asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      familyControl.updateValue(
          toUpdate.map((e) => e.formElements().rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        familyControl.add(e.formElements(),
            updateParent: updateParent, emitEvent: emitEvent);
      });
    }
  }

  void familyInsert(
    int i,
    FamiliarFormModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (familyFamiliarFormModelForm.length < i) {
      addFamilyItem(value);
      return;
    }

    final item = FamiliarFormModelForm(
      value,
      form,
      pathBuilder('family.$i'),
    );

    familyFamiliarFormModelForm.insert(i, item);

    familyFamiliarFormModelForm.asMap().forEach((k, v) {
      if (k > i) {
        familyFamiliarFormModelForm[k] = v.copyWithPath(
          pathBuilder("family.$k"),
        );
      }
    });

    familyControl.insert(
      i,
      item.formElements(),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void familyClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    familyFamiliarFormModelForm.clear();
    familyControl.clear(updateParent: updateParent, emitEvent: emitEvent);
  }

  void paymentMethodValuePatch(
    PaymentMethodType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    paymentMethodControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void scheduleForMeValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    scheduleForMeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void familyValuePatch(
    List<FamiliarFormModel> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = familyFamiliarFormModelForm.asMap().keys;

    final toPatch = <FamiliarFormModelForm>[];
    (value).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          final patch =
              FamiliarFormModelForm(v, form, pathBuilder("family.$k"));
          familyFamiliarFormModelForm[k] = patch;
          toPatch.add(patch);
        }
      },
    );

    familyControl.patchValue(
        toPatch.map((e) => e.formElements().rawValue).toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void paymentMethodValueReset(
    PaymentMethodType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      paymentMethodControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void scheduleForMeValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      scheduleForMeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void familyValueReset(
    List<FamiliarFormModel> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      familyControl.reset(
          value: value
              .map((e) => FamiliarFormModelForm(e, FormGroup({}), null)
                  .formElements()
                  .rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormControl<PaymentMethodType> get paymentMethodControl =>
      form.control(paymentMethodControlPath())
          as FormControl<PaymentMethodType>;
  FormControl<bool> get scheduleForMeControl =>
      form.control(scheduleForMeControlPath()) as FormControl<bool>;
  FormArray<Map<String, Object?>> get familyControl =>
      form.control(familyControlPath()) as FormArray<Map<String, Object?>>;
  void paymentMethodSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      paymentMethodControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      paymentMethodControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void scheduleForMeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      scheduleForMeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      scheduleForMeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void familySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      familyControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      familyControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  ExtendedControl<List<Map<String, Object?>?>, List<FamiliarFormModelForm>>
      get familyExtendedControl => ExtendedControl<List<Map<String, Object?>?>,
              List<FamiliarFormModelForm>>(
          form.control(familyControlPath()) as FormArray<Map<String, Object?>>,
          () => familyFamiliarFormModelForm);
  void addFamilyItem(FamiliarFormModel value) {
    final formClass = FamiliarFormModelForm(value, form,
        pathBuilder('family.${familyFamiliarFormModelForm.length}'));

    familyFamiliarFormModelForm.add(formClass);
    familyControl.add(formClass.formElements());
  }

  void removeFamilyItemAtIndex(int i) {
    if (familyFamiliarFormModelForm.asMap().containsKey(i) &&
        (familyControl.value ?? []).asMap().containsKey(i)) {
      familyFamiliarFormModelForm.removeAt(i);

      familyFamiliarFormModelForm.asMap().forEach((k, v) {
        familyFamiliarFormModelForm[k] =
            v.copyWithPath(pathBuilder("family.$k"));
      });

      familyControl.removeAt(i);
    }
  }

  void addFamilyItemList(List<FamiliarFormModel> value) {
    value.map((e) => addFamilyItem(e));
  }

  @override
  ScheduleTurnFirstStepFamiliarModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ScheduleTurnFirstStepFamiliarModel(
        paymentMethod: _paymentMethodValue,
        scheduleForMe: _scheduleForMeValue,
        family: _familyValue);
  }

  ScheduleTurnFirstStepFamiliarModelForm copyWithPath(String? path) {
    return ScheduleTurnFirstStepFamiliarModelForm(
        scheduleTurnFirstStepFamiliarModel, form, path);
  }

  @override
  void updateValue(
    ScheduleTurnFirstStepFamiliarModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ScheduleTurnFirstStepFamiliarModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ScheduleTurnFirstStepFamiliarModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value:
              ScheduleTurnFirstStepFamiliarModelForm(value, FormGroup({}), null)
                  .formElements()
                  .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void reset({
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  FormGroup formElements() => FormGroup({
        paymentMethodControlName: FormControl<PaymentMethodType>(
            value: scheduleTurnFirstStepFamiliarModel?.paymentMethod,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        scheduleForMeControlName: FormControl<bool>(
            value: scheduleTurnFirstStepFamiliarModel?.scheduleForMe,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        familyControlName: FormArray(
            familyFamiliarFormModelForm.map((e) => e.formElements()).toList(),
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class FamiliarFormModelForm implements FormModel<FamiliarFormModel> {
  FamiliarFormModelForm(
    this.familiarFormModel,
    this.form,
    this.path,
  ) {}

  static String identificationNumberControlName = "identificationNumber";

  static String serviceControlName = "service";

  static String relationshipControlName = "relationship";

  final FamiliarFormModel? familiarFormModel;

  final FormGroup form;

  final String? path;

  String identificationNumberControlPath() =>
      pathBuilder(identificationNumberControlName);
  String serviceControlPath() => pathBuilder(serviceControlName);
  String relationshipControlPath() => pathBuilder(relationshipControlName);
  String? get _identificationNumberValue => identificationNumberControl?.value;
  ServiceType? get _serviceValue => serviceControl?.value;
  RelationshipType? get _relationshipValue => relationshipControl?.value;
  bool get containsIdentificationNumber {
    try {
      form.control(identificationNumberControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsService {
    try {
      form.control(serviceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsRelationship {
    try {
      form.control(relationshipControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get identificationNumberErrors => identificationNumberControl?.errors;
  Object? get serviceErrors => serviceControl?.errors;
  Object? get relationshipErrors => relationshipControl?.errors;
  void get identificationNumberFocus =>
      form.focus(identificationNumberControlPath());
  void get serviceFocus => form.focus(serviceControlPath());
  void get relationshipFocus => form.focus(relationshipControlPath());
  void identificationNumberRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsIdentificationNumber) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          identificationNumberControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            identificationNumberControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void serviceRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsService) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          serviceControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            serviceControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void relationshipRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsRelationship) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          relationshipControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            relationshipControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void identificationNumberValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    identificationNumberControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void serviceValueUpdate(
    ServiceType? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    serviceControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void relationshipValueUpdate(
    RelationshipType? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    relationshipControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void identificationNumberValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    identificationNumberControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void serviceValuePatch(
    ServiceType? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    serviceControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void relationshipValuePatch(
    RelationshipType? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    relationshipControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void identificationNumberValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      identificationNumberControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void serviceValueReset(
    ServiceType? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      serviceControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void relationshipValueReset(
    RelationshipType? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      relationshipControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String>? get identificationNumberControl =>
      containsIdentificationNumber
          ? form.control(identificationNumberControlPath())
              as FormControl<String>?
          : null;
  FormControl<ServiceType>? get serviceControl => containsService
      ? form.control(serviceControlPath()) as FormControl<ServiceType>?
      : null;
  FormControl<RelationshipType>? get relationshipControl => containsRelationship
      ? form.control(relationshipControlPath())
          as FormControl<RelationshipType>?
      : null;
  void identificationNumberSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      identificationNumberControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      identificationNumberControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void serviceSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      serviceControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      serviceControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void relationshipSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      relationshipControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      relationshipControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  FamiliarFormModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return FamiliarFormModel(
        identificationNumber: _identificationNumberValue,
        service: _serviceValue,
        relationship: _relationshipValue);
  }

  FamiliarFormModelForm copyWithPath(String? path) {
    return FamiliarFormModelForm(familiarFormModel, form, path);
  }

  @override
  void updateValue(
    FamiliarFormModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          FamiliarFormModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    FamiliarFormModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: FamiliarFormModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void reset({
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  FormGroup formElements() => FormGroup({
        identificationNumberControlName: FormControl<String>(
            value: familiarFormModel?.identificationNumber,
            validators: [
              requiredValidator,
              ecuadorDniValidator,
              length10Validator
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        serviceControlName: FormControl<ServiceType>(
            value: familiarFormModel?.service,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        relationshipControlName: FormControl<RelationshipType>(
            value: familiarFormModel?.relationship,
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

class ReactiveScheduleTurnFirstStepFamiliarModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveScheduleTurnFirstStepFamiliarModelFormArrayBuilder({
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
      ScheduleTurnFirstStepFamiliarModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ScheduleTurnFirstStepFamiliarModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ScheduleTurnFirstStepFamiliarModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveScheduleTurnFirstStepFamiliarModelForm.of(context);

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

class ReactiveScheduleTurnFirstStepFamiliarModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveScheduleTurnFirstStepFamiliarModelFormFormGroupArrayBuilder({
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
      ScheduleTurnFirstStepFamiliarModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ScheduleTurnFirstStepFamiliarModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ScheduleTurnFirstStepFamiliarModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveScheduleTurnFirstStepFamiliarModelForm.of(context);

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

class ReactiveScheduleTurnSecondStepModelFormConsumer extends StatelessWidget {
  const ReactiveScheduleTurnSecondStepModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ScheduleTurnSecondStepModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveScheduleTurnSecondStepModelForm.of(context);

    if (formModel is! ScheduleTurnSecondStepModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ScheduleTurnSecondStepModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ScheduleTurnSecondStepModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ScheduleTurnSecondStepModelForm form;
}

class ReactiveScheduleTurnSecondStepModelForm extends StatelessWidget {
  const ReactiveScheduleTurnSecondStepModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ScheduleTurnSecondStepModelForm form;

  final WillPopCallback? onWillPop;

  static ScheduleTurnSecondStepModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ScheduleTurnSecondStepModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ScheduleTurnSecondStepModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ScheduleTurnSecondStepModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return ScheduleTurnSecondStepModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ScheduleTurnSecondStepModelFormBuilder extends StatefulWidget {
  const ScheduleTurnSecondStepModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ScheduleTurnSecondStepModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ScheduleTurnSecondStepModelForm formModel, Widget? child) builder;

  final void Function(
          BuildContext context, ScheduleTurnSecondStepModelForm formModel)?
      initState;

  @override
  _ScheduleTurnSecondStepModelFormBuilderState createState() =>
      _ScheduleTurnSecondStepModelFormBuilderState();
}

class _ScheduleTurnSecondStepModelFormBuilderState
    extends State<ScheduleTurnSecondStepModelFormBuilder> {
  late FormGroup _form;

  late ScheduleTurnSecondStepModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = ScheduleTurnSecondStepModelForm(widget.model, _form, null);

    final elements = _formModel.formElements();
    _form.setValidators(elements.validators);
    _form.setAsyncValidators(elements.asyncValidators);

    if (elements.disabled) {
      _form.markAsDisabled();
    }

    _form.addAll(elements.controls);

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(
      covariant ScheduleTurnSecondStepModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ScheduleTurnSecondStepModelForm(widget.model, _form, null);
      final elements = _formModel.formElements();

      _form.updateValue(elements.rawValue);
      _form.setValidators(elements.validators);
      _form.setAsyncValidators(elements.asyncValidators);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveScheduleTurnSecondStepModelForm(
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _form,
        onWillPop: widget.onWillPop,
        builder: (BuildContext context, FormGroup formGroup, Widget? child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class ScheduleTurnSecondStepModelForm
    implements FormModel<ScheduleTurnSecondStepModel> {
  ScheduleTurnSecondStepModelForm(
    this.scheduleTurnSecondStepModel,
    this.form,
    this.path,
  ) {}

  static String provinceControlName = "province";

  static String agencyControlName = "agency";

  static String dateControlName = "date";

  static String timeControlName = "time";

  final ScheduleTurnSecondStepModel? scheduleTurnSecondStepModel;

  final FormGroup form;

  final String? path;

  String provinceControlPath() => pathBuilder(provinceControlName);
  String agencyControlPath() => pathBuilder(agencyControlName);
  String dateControlPath() => pathBuilder(dateControlName);
  String timeControlPath() => pathBuilder(timeControlName);
  LocationModel get _provinceValue => provinceControl.value as LocationModel;
  AgencyModel get _agencyValue => agencyControl.value as AgencyModel;
  DateTime get _dateValue => dateControl.value as DateTime;
  TimeOfDay get _timeValue => timeControl.value as TimeOfDay;
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

  bool get containsDate {
    try {
      form.control(dateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsTime {
    try {
      form.control(timeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get provinceErrors => provinceControl.errors;
  Object? get agencyErrors => agencyControl.errors;
  Object? get dateErrors => dateControl.errors;
  Object? get timeErrors => timeControl.errors;
  void get provinceFocus => form.focus(provinceControlPath());
  void get agencyFocus => form.focus(agencyControlPath());
  void get dateFocus => form.focus(dateControlPath());
  void get timeFocus => form.focus(timeControlPath());
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

  void dateValueUpdate(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void timeValueUpdate(
    TimeOfDay value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    timeControl.updateValue(value,
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

  void dateValuePatch(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void timeValuePatch(
    TimeOfDay value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    timeControl.patchValue(value,
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
  void dateValueReset(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      dateControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void timeValueReset(
    TimeOfDay value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      timeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<LocationModel> get provinceControl =>
      form.control(provinceControlPath()) as FormControl<LocationModel>;
  FormControl<AgencyModel> get agencyControl =>
      form.control(agencyControlPath()) as FormControl<AgencyModel>;
  FormControl<DateTime> get dateControl =>
      form.control(dateControlPath()) as FormControl<DateTime>;
  FormControl<TimeOfDay> get timeControl =>
      form.control(timeControlPath()) as FormControl<TimeOfDay>;
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

  void dateSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      dateControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      dateControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void timeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      timeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      timeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ScheduleTurnSecondStepModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ScheduleTurnSecondStepModel(
        province: _provinceValue,
        agency: _agencyValue,
        date: _dateValue,
        time: _timeValue);
  }

  ScheduleTurnSecondStepModelForm copyWithPath(String? path) {
    return ScheduleTurnSecondStepModelForm(
        scheduleTurnSecondStepModel, form, path);
  }

  @override
  void updateValue(
    ScheduleTurnSecondStepModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ScheduleTurnSecondStepModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ScheduleTurnSecondStepModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ScheduleTurnSecondStepModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void reset({
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  FormGroup formElements() => FormGroup({
        provinceControlName: FormControl<LocationModel>(
            value: scheduleTurnSecondStepModel?.province,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        agencyControlName: FormControl<AgencyModel>(
            value: scheduleTurnSecondStepModel?.agency,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        dateControlName: FormControl<DateTime>(
            value: scheduleTurnSecondStepModel?.date,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        timeControlName: FormControl<TimeOfDay>(
            value: scheduleTurnSecondStepModel?.time,
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

class ReactiveScheduleTurnSecondStepModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveScheduleTurnSecondStepModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ScheduleTurnSecondStepModelForm formModel)?
      control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ScheduleTurnSecondStepModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ScheduleTurnSecondStepModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveScheduleTurnSecondStepModelForm.of(context);

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

class ReactiveScheduleTurnSecondStepModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveScheduleTurnSecondStepModelFormFormGroupArrayBuilder({
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
      ScheduleTurnSecondStepModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ScheduleTurnSecondStepModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ScheduleTurnSecondStepModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveScheduleTurnSecondStepModelForm.of(context);

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

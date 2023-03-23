// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'schedule_shift_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveScheduleShiftFirstStepPersonalModelFormConsumer
    extends StatelessWidget {
  const ReactiveScheduleShiftFirstStepPersonalModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ScheduleShiftFirstStepPersonalModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveScheduleShiftFirstStepPersonalModelForm.of(context);

    if (formModel is! ScheduleShiftFirstStepPersonalModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ScheduleShiftFirstStepPersonalModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ScheduleShiftFirstStepPersonalModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ScheduleShiftFirstStepPersonalModelForm form;
}

class ReactiveScheduleShiftFirstStepPersonalModelForm extends StatelessWidget {
  const ReactiveScheduleShiftFirstStepPersonalModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ScheduleShiftFirstStepPersonalModelForm form;

  final WillPopCallback? onWillPop;

  static ScheduleShiftFirstStepPersonalModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ScheduleShiftFirstStepPersonalModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ScheduleShiftFirstStepPersonalModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget
                as ScheduleShiftFirstStepPersonalModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return ScheduleShiftFirstStepPersonalModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ScheduleShiftFirstStepPersonalModelFormBuilder extends StatefulWidget {
  const ScheduleShiftFirstStepPersonalModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ScheduleShiftFirstStepPersonalModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ScheduleShiftFirstStepPersonalModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context,
      ScheduleShiftFirstStepPersonalModelForm formModel)? initState;

  @override
  _ScheduleShiftFirstStepPersonalModelFormBuilderState createState() =>
      _ScheduleShiftFirstStepPersonalModelFormBuilderState();
}

class _ScheduleShiftFirstStepPersonalModelFormBuilderState
    extends State<ScheduleShiftFirstStepPersonalModelFormBuilder> {
  late FormGroup _form;

  late ScheduleShiftFirstStepPersonalModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel =
        ScheduleShiftFirstStepPersonalModelForm(widget.model, _form, null);

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
      covariant ScheduleShiftFirstStepPersonalModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel =
          ScheduleShiftFirstStepPersonalModelForm(widget.model, _form, null);
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
    return ReactiveScheduleShiftFirstStepPersonalModelForm(
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

class ScheduleShiftFirstStepPersonalModelForm
    implements FormModel<ScheduleShiftFirstStepPersonalModel> {
  ScheduleShiftFirstStepPersonalModelForm(
    this.scheduleShiftFirstStepPersonalModel,
    this.form,
    this.path,
  ) {}

  static String serviceControlName = "service";

  static String paymentMethodControlName = "paymentMethod";

  final ScheduleShiftFirstStepPersonalModel?
      scheduleShiftFirstStepPersonalModel;

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
  ScheduleShiftFirstStepPersonalModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ScheduleShiftFirstStepPersonalModel(
        service: _serviceValue, paymentMethod: _paymentMethodValue);
  }

  ScheduleShiftFirstStepPersonalModelForm copyWithPath(String? path) {
    return ScheduleShiftFirstStepPersonalModelForm(
        scheduleShiftFirstStepPersonalModel, form, path);
  }

  @override
  void updateValue(
    ScheduleShiftFirstStepPersonalModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ScheduleShiftFirstStepPersonalModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ScheduleShiftFirstStepPersonalModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ScheduleShiftFirstStepPersonalModelForm(
                  value, FormGroup({}), null)
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
            value: scheduleShiftFirstStepPersonalModel?.service,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        paymentMethodControlName: FormControl<PaymentMethodType>(
            value: scheduleShiftFirstStepPersonalModel?.paymentMethod,
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

class ReactiveScheduleShiftFirstStepPersonalModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveScheduleShiftFirstStepPersonalModelFormArrayBuilder({
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
      ScheduleShiftFirstStepPersonalModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ScheduleShiftFirstStepPersonalModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ScheduleShiftFirstStepPersonalModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveScheduleShiftFirstStepPersonalModelForm.of(context);

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

class ReactiveScheduleShiftFirstStepPersonalModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveScheduleShiftFirstStepPersonalModelFormFormGroupArrayBuilder({
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
      ScheduleShiftFirstStepPersonalModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ScheduleShiftFirstStepPersonalModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ScheduleShiftFirstStepPersonalModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveScheduleShiftFirstStepPersonalModelForm.of(context);

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

class ReactiveScheduleShiftFirstStepFamiliarModelFormConsumer
    extends StatelessWidget {
  const ReactiveScheduleShiftFirstStepFamiliarModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ScheduleShiftFirstStepFamiliarModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveScheduleShiftFirstStepFamiliarModelForm.of(context);

    if (formModel is! ScheduleShiftFirstStepFamiliarModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ScheduleShiftFirstStepFamiliarModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ScheduleShiftFirstStepFamiliarModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ScheduleShiftFirstStepFamiliarModelForm form;
}

class ReactiveScheduleShiftFirstStepFamiliarModelForm extends StatelessWidget {
  const ReactiveScheduleShiftFirstStepFamiliarModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ScheduleShiftFirstStepFamiliarModelForm form;

  final WillPopCallback? onWillPop;

  static ScheduleShiftFirstStepFamiliarModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ScheduleShiftFirstStepFamiliarModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ScheduleShiftFirstStepFamiliarModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget
                as ScheduleShiftFirstStepFamiliarModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return ScheduleShiftFirstStepFamiliarModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ScheduleShiftFirstStepFamiliarModelFormBuilder extends StatefulWidget {
  const ScheduleShiftFirstStepFamiliarModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ScheduleShiftFirstStepFamiliarModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ScheduleShiftFirstStepFamiliarModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context,
      ScheduleShiftFirstStepFamiliarModelForm formModel)? initState;

  @override
  _ScheduleShiftFirstStepFamiliarModelFormBuilderState createState() =>
      _ScheduleShiftFirstStepFamiliarModelFormBuilderState();
}

class _ScheduleShiftFirstStepFamiliarModelFormBuilderState
    extends State<ScheduleShiftFirstStepFamiliarModelFormBuilder> {
  late FormGroup _form;

  late ScheduleShiftFirstStepFamiliarModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel =
        ScheduleShiftFirstStepFamiliarModelForm(widget.model, _form, null);

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
      covariant ScheduleShiftFirstStepFamiliarModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel =
          ScheduleShiftFirstStepFamiliarModelForm(widget.model, _form, null);
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
    return ReactiveScheduleShiftFirstStepFamiliarModelForm(
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

class ScheduleShiftFirstStepFamiliarModelForm
    implements FormModel<ScheduleShiftFirstStepFamiliarModel> {
  ScheduleShiftFirstStepFamiliarModelForm(
    this.scheduleShiftFirstStepFamiliarModel,
    this.form,
    this.path,
  ) {
    familyFamiliarFormModelForm =
        (scheduleShiftFirstStepFamiliarModel?.family ?? [])
            .asMap()
            .map((k, v) => MapEntry(
                k, FamiliarFormModelForm(v, form, pathBuilder("family.$k"))))
            .values
            .toList();
  }

  static String paymentMethodControlName = "paymentMethod";

  static String scheduleForMeControlName = "scheduleForMe";

  static String familyControlName = "family";

  final ScheduleShiftFirstStepFamiliarModel?
      scheduleShiftFirstStepFamiliarModel;

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
  ScheduleShiftFirstStepFamiliarModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ScheduleShiftFirstStepFamiliarModel(
        paymentMethod: _paymentMethodValue,
        scheduleForMe: _scheduleForMeValue,
        family: _familyValue);
  }

  ScheduleShiftFirstStepFamiliarModelForm copyWithPath(String? path) {
    return ScheduleShiftFirstStepFamiliarModelForm(
        scheduleShiftFirstStepFamiliarModel, form, path);
  }

  @override
  void updateValue(
    ScheduleShiftFirstStepFamiliarModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ScheduleShiftFirstStepFamiliarModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ScheduleShiftFirstStepFamiliarModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ScheduleShiftFirstStepFamiliarModelForm(
                  value, FormGroup({}), null)
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
            value: scheduleShiftFirstStepFamiliarModel?.paymentMethod,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        scheduleForMeControlName: FormControl<bool>(
            value: scheduleShiftFirstStepFamiliarModel?.scheduleForMe,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: true),
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
  int? get _identificationNumberValue => identificationNumberControl?.value;
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
    int? value, {
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
    int? value, {
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
    int? value, {
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
  FormControl<int>? get identificationNumberControl =>
      containsIdentificationNumber
          ? form.control(identificationNumberControlPath()) as FormControl<int>?
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
        identificationNumberControlName: FormControl<int>(
            value: familiarFormModel?.identificationNumber,
            validators: [requiredValidator],
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

class ReactiveScheduleShiftFirstStepFamiliarModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveScheduleShiftFirstStepFamiliarModelFormArrayBuilder({
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
      ScheduleShiftFirstStepFamiliarModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ScheduleShiftFirstStepFamiliarModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ScheduleShiftFirstStepFamiliarModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveScheduleShiftFirstStepFamiliarModelForm.of(context);

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

class ReactiveScheduleShiftFirstStepFamiliarModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveScheduleShiftFirstStepFamiliarModelFormFormGroupArrayBuilder({
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
      ScheduleShiftFirstStepFamiliarModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ScheduleShiftFirstStepFamiliarModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ScheduleShiftFirstStepFamiliarModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveScheduleShiftFirstStepFamiliarModelForm.of(context);

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

class ReactiveScheduleShiftSecondStepModelFormConsumer extends StatelessWidget {
  const ReactiveScheduleShiftSecondStepModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ScheduleShiftSecondStepModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveScheduleShiftSecondStepModelForm.of(context);

    if (formModel is! ScheduleShiftSecondStepModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ScheduleShiftSecondStepModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ScheduleShiftSecondStepModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ScheduleShiftSecondStepModelForm form;
}

class ReactiveScheduleShiftSecondStepModelForm extends StatelessWidget {
  const ReactiveScheduleShiftSecondStepModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ScheduleShiftSecondStepModelForm form;

  final WillPopCallback? onWillPop;

  static ScheduleShiftSecondStepModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ScheduleShiftSecondStepModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ScheduleShiftSecondStepModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ScheduleShiftSecondStepModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return ScheduleShiftSecondStepModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ScheduleShiftSecondStepModelFormBuilder extends StatefulWidget {
  const ScheduleShiftSecondStepModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ScheduleShiftSecondStepModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ScheduleShiftSecondStepModelForm formModel, Widget? child) builder;

  final void Function(
          BuildContext context, ScheduleShiftSecondStepModelForm formModel)?
      initState;

  @override
  _ScheduleShiftSecondStepModelFormBuilderState createState() =>
      _ScheduleShiftSecondStepModelFormBuilderState();
}

class _ScheduleShiftSecondStepModelFormBuilderState
    extends State<ScheduleShiftSecondStepModelFormBuilder> {
  late FormGroup _form;

  late ScheduleShiftSecondStepModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = ScheduleShiftSecondStepModelForm(widget.model, _form, null);

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
      covariant ScheduleShiftSecondStepModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ScheduleShiftSecondStepModelForm(widget.model, _form, null);
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
    return ReactiveScheduleShiftSecondStepModelForm(
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

class ScheduleShiftSecondStepModelForm
    implements FormModel<ScheduleShiftSecondStepModel> {
  ScheduleShiftSecondStepModelForm(
    this.scheduleShiftSecondStepModel,
    this.form,
    this.path,
  ) {}

  static String codeControlName = "code";

  final ScheduleShiftSecondStepModel? scheduleShiftSecondStepModel;

  final FormGroup form;

  final String? path;

  String codeControlPath() => pathBuilder(codeControlName);
  String get _codeValue => codeControl.value as String;
  bool get containsCode {
    try {
      form.control(codeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get codeErrors => codeControl.errors;
  void get codeFocus => form.focus(codeControlPath());
  void codeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    codeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void codeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    codeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void codeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      codeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get codeControl =>
      form.control(codeControlPath()) as FormControl<String>;
  void codeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      codeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      codeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ScheduleShiftSecondStepModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ScheduleShiftSecondStepModel(code: _codeValue);
  }

  ScheduleShiftSecondStepModelForm copyWithPath(String? path) {
    return ScheduleShiftSecondStepModelForm(
        scheduleShiftSecondStepModel, form, path);
  }

  @override
  void updateValue(
    ScheduleShiftSecondStepModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ScheduleShiftSecondStepModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ScheduleShiftSecondStepModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ScheduleShiftSecondStepModelForm(value, FormGroup({}), null)
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
        codeControlName: FormControl<String>(
            value: scheduleShiftSecondStepModel?.code,
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

class ReactiveScheduleShiftSecondStepModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveScheduleShiftSecondStepModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ScheduleShiftSecondStepModelForm formModel)?
      control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ScheduleShiftSecondStepModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ScheduleShiftSecondStepModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveScheduleShiftSecondStepModelForm.of(context);

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

class ReactiveScheduleShiftSecondStepModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveScheduleShiftSecondStepModelFormFormGroupArrayBuilder({
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
      ScheduleShiftSecondStepModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ScheduleShiftSecondStepModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ScheduleShiftSecondStepModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveScheduleShiftSecondStepModelForm.of(context);

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

class ReactiveScheduleShiftThirdStepModelFormConsumer extends StatelessWidget {
  const ReactiveScheduleShiftThirdStepModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ScheduleShiftThirdStepModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveScheduleShiftThirdStepModelForm.of(context);

    if (formModel is! ScheduleShiftThirdStepModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ScheduleShiftThirdStepModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ScheduleShiftThirdStepModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ScheduleShiftThirdStepModelForm form;
}

class ReactiveScheduleShiftThirdStepModelForm extends StatelessWidget {
  const ReactiveScheduleShiftThirdStepModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ScheduleShiftThirdStepModelForm form;

  final WillPopCallback? onWillPop;

  static ScheduleShiftThirdStepModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ScheduleShiftThirdStepModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ScheduleShiftThirdStepModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ScheduleShiftThirdStepModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return ScheduleShiftThirdStepModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ScheduleShiftThirdStepModelFormBuilder extends StatefulWidget {
  const ScheduleShiftThirdStepModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ScheduleShiftThirdStepModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ScheduleShiftThirdStepModelForm formModel, Widget? child) builder;

  final void Function(
          BuildContext context, ScheduleShiftThirdStepModelForm formModel)?
      initState;

  @override
  _ScheduleShiftThirdStepModelFormBuilderState createState() =>
      _ScheduleShiftThirdStepModelFormBuilderState();
}

class _ScheduleShiftThirdStepModelFormBuilderState
    extends State<ScheduleShiftThirdStepModelFormBuilder> {
  late FormGroup _form;

  late ScheduleShiftThirdStepModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = ScheduleShiftThirdStepModelForm(widget.model, _form, null);

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
      covariant ScheduleShiftThirdStepModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ScheduleShiftThirdStepModelForm(widget.model, _form, null);
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
    return ReactiveScheduleShiftThirdStepModelForm(
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

class ScheduleShiftThirdStepModelForm
    implements FormModel<ScheduleShiftThirdStepModel> {
  ScheduleShiftThirdStepModelForm(
    this.scheduleShiftThirdStepModel,
    this.form,
    this.path,
  ) {}

  static String stateControlName = "state";

  static String agencyControlName = "agency";

  static String dateControlName = "date";

  static String timeControlName = "time";

  final ScheduleShiftThirdStepModel? scheduleShiftThirdStepModel;

  final FormGroup form;

  final String? path;

  String stateControlPath() => pathBuilder(stateControlName);
  String agencyControlPath() => pathBuilder(agencyControlName);
  String dateControlPath() => pathBuilder(dateControlName);
  String timeControlPath() => pathBuilder(timeControlName);
  String get _stateValue => stateControl.value as String;
  String get _agencyValue => agencyControl.value as String;
  DateTime get _dateValue => dateControl.value as DateTime;
  TimeOfDay get _timeValue => timeControl.value as TimeOfDay;
  bool get containsState {
    try {
      form.control(stateControlPath());
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

  Object? get stateErrors => stateControl.errors;
  Object? get agencyErrors => agencyControl.errors;
  Object? get dateErrors => dateControl.errors;
  Object? get timeErrors => timeControl.errors;
  void get stateFocus => form.focus(stateControlPath());
  void get agencyFocus => form.focus(agencyControlPath());
  void get dateFocus => form.focus(dateControlPath());
  void get timeFocus => form.focus(timeControlPath());
  void stateValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    stateControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void agencyValueUpdate(
    String value, {
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

  void stateValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    stateControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void agencyValuePatch(
    String value, {
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

  void stateValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      stateControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void agencyValueReset(
    String value, {
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
  FormControl<String> get stateControl =>
      form.control(stateControlPath()) as FormControl<String>;
  FormControl<String> get agencyControl =>
      form.control(agencyControlPath()) as FormControl<String>;
  FormControl<DateTime> get dateControl =>
      form.control(dateControlPath()) as FormControl<DateTime>;
  FormControl<TimeOfDay> get timeControl =>
      form.control(timeControlPath()) as FormControl<TimeOfDay>;
  void stateSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      stateControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      stateControl.markAsEnabled(
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
  ScheduleShiftThirdStepModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ScheduleShiftThirdStepModel(
        state: _stateValue,
        agency: _agencyValue,
        date: _dateValue,
        time: _timeValue);
  }

  ScheduleShiftThirdStepModelForm copyWithPath(String? path) {
    return ScheduleShiftThirdStepModelForm(
        scheduleShiftThirdStepModel, form, path);
  }

  @override
  void updateValue(
    ScheduleShiftThirdStepModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ScheduleShiftThirdStepModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ScheduleShiftThirdStepModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ScheduleShiftThirdStepModelForm(value, FormGroup({}), null)
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
        stateControlName: FormControl<String>(
            value: scheduleShiftThirdStepModel?.state,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        agencyControlName: FormControl<String>(
            value: scheduleShiftThirdStepModel?.agency,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        dateControlName: FormControl<DateTime>(
            value: scheduleShiftThirdStepModel?.date,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        timeControlName: FormControl<TimeOfDay>(
            value: scheduleShiftThirdStepModel?.time,
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

class ReactiveScheduleShiftThirdStepModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveScheduleShiftThirdStepModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ScheduleShiftThirdStepModelForm formModel)?
      control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ScheduleShiftThirdStepModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ScheduleShiftThirdStepModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveScheduleShiftThirdStepModelForm.of(context);

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

class ReactiveScheduleShiftThirdStepModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveScheduleShiftThirdStepModelFormFormGroupArrayBuilder({
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
      ScheduleShiftThirdStepModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ScheduleShiftThirdStepModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ScheduleShiftThirdStepModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveScheduleShiftThirdStepModelForm.of(context);

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

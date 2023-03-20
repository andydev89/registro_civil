// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'schedule_shift_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveScheduleShiftFirstStepModelFormConsumer extends StatelessWidget {
  const ReactiveScheduleShiftFirstStepModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ScheduleShiftFirstStepModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveScheduleShiftFirstStepModelForm.of(context);

    if (formModel is! ScheduleShiftFirstStepModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ScheduleShiftFirstStepModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ScheduleShiftFirstStepModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ScheduleShiftFirstStepModelForm form;
}

class ReactiveScheduleShiftFirstStepModelForm extends StatelessWidget {
  const ReactiveScheduleShiftFirstStepModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ScheduleShiftFirstStepModelForm form;

  final WillPopCallback? onWillPop;

  static ScheduleShiftFirstStepModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ScheduleShiftFirstStepModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ScheduleShiftFirstStepModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ScheduleShiftFirstStepModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return ScheduleShiftFirstStepModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ScheduleShiftFirstStepModelFormBuilder extends StatefulWidget {
  const ScheduleShiftFirstStepModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ScheduleShiftFirstStepModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ScheduleShiftFirstStepModelForm formModel, Widget? child) builder;

  final void Function(
          BuildContext context, ScheduleShiftFirstStepModelForm formModel)?
      initState;

  @override
  _ScheduleShiftFirstStepModelFormBuilderState createState() =>
      _ScheduleShiftFirstStepModelFormBuilderState();
}

class _ScheduleShiftFirstStepModelFormBuilderState
    extends State<ScheduleShiftFirstStepModelFormBuilder> {
  late FormGroup _form;

  late ScheduleShiftFirstStepModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = ScheduleShiftFirstStepModelForm(widget.model, _form, null);

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
      covariant ScheduleShiftFirstStepModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ScheduleShiftFirstStepModelForm(widget.model, _form, null);
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
    return ReactiveScheduleShiftFirstStepModelForm(
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

class ScheduleShiftFirstStepModelForm
    implements FormModel<ScheduleShiftFirstStepModel> {
  ScheduleShiftFirstStepModelForm(
    this.scheduleShiftFirstStepModel,
    this.form,
    this.path,
  ) {}

  static String scheduleShiftControlName = "scheduleShift";

  static String serviceControlName = "service";

  static String paymentMethodControlName = "paymentMethod";

  final ScheduleShiftFirstStepModel? scheduleShiftFirstStepModel;

  final FormGroup form;

  final String? path;

  String scheduleShiftControlPath() => pathBuilder(scheduleShiftControlName);
  String serviceControlPath() => pathBuilder(serviceControlName);
  String paymentMethodControlPath() => pathBuilder(paymentMethodControlName);
  ScheduleShiftType get _scheduleShiftValue =>
      scheduleShiftControl.value as ScheduleShiftType;
  ServiceType get _serviceValue => serviceControl.value as ServiceType;
  PaymentMethodType get _paymentMethodValue =>
      paymentMethodControl.value as PaymentMethodType;
  bool get containsScheduleShift {
    try {
      form.control(scheduleShiftControlPath());
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

  bool get containsPaymentMethod {
    try {
      form.control(paymentMethodControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get scheduleShiftErrors => scheduleShiftControl.errors;
  Object? get serviceErrors => serviceControl.errors;
  Object? get paymentMethodErrors => paymentMethodControl.errors;
  void get scheduleShiftFocus => form.focus(scheduleShiftControlPath());
  void get serviceFocus => form.focus(serviceControlPath());
  void get paymentMethodFocus => form.focus(paymentMethodControlPath());
  void scheduleShiftValueUpdate(
    ScheduleShiftType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    scheduleShiftControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

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

  void scheduleShiftValuePatch(
    ScheduleShiftType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    scheduleShiftControl.patchValue(value,
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

  void scheduleShiftValueReset(
    ScheduleShiftType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      scheduleShiftControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
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
  FormControl<ScheduleShiftType> get scheduleShiftControl =>
      form.control(scheduleShiftControlPath())
          as FormControl<ScheduleShiftType>;
  FormControl<ServiceType> get serviceControl =>
      form.control(serviceControlPath()) as FormControl<ServiceType>;
  FormControl<PaymentMethodType> get paymentMethodControl =>
      form.control(paymentMethodControlPath())
          as FormControl<PaymentMethodType>;
  void scheduleShiftSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      scheduleShiftControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      scheduleShiftControl.markAsEnabled(
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
  ScheduleShiftFirstStepModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ScheduleShiftFirstStepModel(
        scheduleShift: _scheduleShiftValue,
        service: _serviceValue,
        paymentMethod: _paymentMethodValue);
  }

  ScheduleShiftFirstStepModelForm copyWithPath(String? path) {
    return ScheduleShiftFirstStepModelForm(
        scheduleShiftFirstStepModel, form, path);
  }

  @override
  void updateValue(
    ScheduleShiftFirstStepModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ScheduleShiftFirstStepModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ScheduleShiftFirstStepModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ScheduleShiftFirstStepModelForm(value, FormGroup({}), null)
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
        scheduleShiftControlName: FormControl<ScheduleShiftType>(
            value: scheduleShiftFirstStepModel?.scheduleShift,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        serviceControlName: FormControl<ServiceType>(
            value: scheduleShiftFirstStepModel?.service,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        paymentMethodControlName: FormControl<PaymentMethodType>(
            value: scheduleShiftFirstStepModel?.paymentMethod,
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

class ReactiveScheduleShiftFirstStepModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveScheduleShiftFirstStepModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ScheduleShiftFirstStepModelForm formModel)?
      control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ScheduleShiftFirstStepModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ScheduleShiftFirstStepModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveScheduleShiftFirstStepModelForm.of(context);

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

class ReactiveScheduleShiftFirstStepModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveScheduleShiftFirstStepModelFormFormGroupArrayBuilder({
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
      ScheduleShiftFirstStepModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ScheduleShiftFirstStepModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ScheduleShiftFirstStepModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveScheduleShiftFirstStepModelForm.of(context);

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

  final ScheduleShiftThirdStepModel? scheduleShiftThirdStepModel;

  final FormGroup form;

  final String? path;

  String stateControlPath() => pathBuilder(stateControlName);
  String agencyControlPath() => pathBuilder(agencyControlName);
  String dateControlPath() => pathBuilder(dateControlName);
  String get _stateValue => stateControl.value as String;
  String get _agencyValue => agencyControl.value as String;
  DateTime get _dateValue => dateControl.value as DateTime;
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

  Object? get stateErrors => stateControl.errors;
  Object? get agencyErrors => agencyControl.errors;
  Object? get dateErrors => dateControl.errors;
  void get stateFocus => form.focus(stateControlPath());
  void get agencyFocus => form.focus(agencyControlPath());
  void get dateFocus => form.focus(dateControlPath());
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
  FormControl<String> get stateControl =>
      form.control(stateControlPath()) as FormControl<String>;
  FormControl<String> get agencyControl =>
      form.control(agencyControlPath()) as FormControl<String>;
  FormControl<DateTime> get dateControl =>
      form.control(dateControlPath()) as FormControl<DateTime>;
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

  @override
  ScheduleShiftThirdStepModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ScheduleShiftThirdStepModel(
        state: _stateValue, agency: _agencyValue, date: _dateValue);
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

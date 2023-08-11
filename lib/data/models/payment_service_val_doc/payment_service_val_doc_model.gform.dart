// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'payment_service_val_doc_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactivePaymentServiceValidacionDocModelFormConsumer
    extends StatelessWidget {
  const ReactivePaymentServiceValidacionDocModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      PaymentServiceValidacionDocModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePaymentServiceValidacionDocModelForm.of(context);

    if (formModel is! PaymentServiceValidacionDocModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class PaymentServiceValidacionDocModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const PaymentServiceValidacionDocModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final PaymentServiceValidacionDocModelForm form;
}

class ReactivePaymentServiceValidacionDocModelForm extends StatelessWidget {
  const ReactivePaymentServiceValidacionDocModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final PaymentServiceValidacionDocModelForm form;

  final WillPopCallback? onWillPop;

  static PaymentServiceValidacionDocModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              PaymentServiceValidacionDocModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        PaymentServiceValidacionDocModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget
                as PaymentServiceValidacionDocModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return PaymentServiceValidacionDocModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class PaymentServiceValidacionDocModelFormBuilder extends StatefulWidget {
  const PaymentServiceValidacionDocModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final PaymentServiceValidacionDocModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      PaymentServiceValidacionDocModelForm formModel, Widget? child) builder;

  final void Function(
          BuildContext context, PaymentServiceValidacionDocModelForm formModel)?
      initState;

  @override
  _PaymentServiceValidacionDocModelFormBuilderState createState() =>
      _PaymentServiceValidacionDocModelFormBuilderState();
}

class _PaymentServiceValidacionDocModelFormBuilderState
    extends State<PaymentServiceValidacionDocModelFormBuilder> {
  late PaymentServiceValidacionDocModelForm _formModel;

  @override
  void initState() {
    _formModel = PaymentServiceValidacionDocModelForm(widget.model,
        PaymentServiceValidacionDocModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(
      covariant PaymentServiceValidacionDocModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = PaymentServiceValidacionDocModelForm(
          widget.model,
          PaymentServiceValidacionDocModelForm.formElements(widget.model),
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
    return ReactivePaymentServiceValidacionDocModelForm(
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

class PaymentServiceValidacionDocModelForm
    implements FormModel<PaymentServiceValidacionDocModel> {
  PaymentServiceValidacionDocModelForm(
    this.paymentServiceValidacionDocModel,
    this.form,
    this.path,
  ) {}

  static const String provinceControlName = "province";

  static const String agencyControlName = "agency";

  final PaymentServiceValidacionDocModel? paymentServiceValidacionDocModel;

  final FormGroup form;

  final String? path;

  String provinceControlPath() => pathBuilder(provinceControlName);
  String agencyControlPath() => pathBuilder(agencyControlName);
  LocationModel get _provinceValue => provinceControl.value as LocationModel;
  AgencyModel get _agencyValue => agencyControl.value as AgencyModel;
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

  Object? get provinceErrors => provinceControl.errors;
  Object? get agencyErrors => agencyControl.errors;
  void get provinceFocus => form.focus(provinceControlPath());
  void get agencyFocus => form.focus(agencyControlPath());
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
  FormControl<LocationModel> get provinceControl =>
      form.control(provinceControlPath()) as FormControl<LocationModel>;
  FormControl<AgencyModel> get agencyControl =>
      form.control(agencyControlPath()) as FormControl<AgencyModel>;
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
  PaymentServiceValidacionDocModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'PaymentServiceValidacionDocModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return PaymentServiceValidacionDocModel(
        province: _provinceValue, agency: _agencyValue);
  }

  PaymentServiceValidacionDocModelForm copyWithPath(String? path) {
    return PaymentServiceValidacionDocModelForm(
        paymentServiceValidacionDocModel, form, path);
  }

  @override
  void updateValue(
    PaymentServiceValidacionDocModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          PaymentServiceValidacionDocModelForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void reset({
    PaymentServiceValidacionDocModel? value,
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
          PaymentServiceValidacionDocModel? paymentServiceValidacionDocModel) =>
      FormGroup({
        provinceControlName: FormControl<LocationModel>(
            value: paymentServiceValidacionDocModel?.province,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        agencyControlName: FormControl<AgencyModel>(
            value: paymentServiceValidacionDocModel?.agency,
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

class ReactivePaymentServiceValidacionDocModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactivePaymentServiceValidacionDocModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(PaymentServiceValidacionDocModelForm formModel)?
      control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PaymentServiceValidacionDocModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      PaymentServiceValidacionDocModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePaymentServiceValidacionDocModelForm.of(context);

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

class ReactivePaymentServiceValidacionDocModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactivePaymentServiceValidacionDocModelFormFormGroupArrayBuilder({
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
      PaymentServiceValidacionDocModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PaymentServiceValidacionDocModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      PaymentServiceValidacionDocModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePaymentServiceValidacionDocModelForm.of(context);

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

class ReactivePaymentValidationDocModelFormConsumer extends StatelessWidget {
  const ReactivePaymentValidationDocModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      PaymentValidationDocModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePaymentValidationDocModelForm.of(context);

    if (formModel is! PaymentValidationDocModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class PaymentValidationDocModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const PaymentValidationDocModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final PaymentValidationDocModelForm form;
}

class ReactivePaymentValidationDocModelForm extends StatelessWidget {
  const ReactivePaymentValidationDocModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final PaymentValidationDocModelForm form;

  final WillPopCallback? onWillPop;

  static PaymentValidationDocModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              PaymentValidationDocModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        PaymentValidationDocModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as PaymentValidationDocModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return PaymentValidationDocModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class PaymentValidationDocModelFormBuilder extends StatefulWidget {
  const PaymentValidationDocModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final PaymentValidationDocModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      PaymentValidationDocModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, PaymentValidationDocModelForm formModel)? initState;

  @override
  _PaymentValidationDocModelFormBuilderState createState() =>
      _PaymentValidationDocModelFormBuilderState();
}

class _PaymentValidationDocModelFormBuilderState
    extends State<PaymentValidationDocModelFormBuilder> {
  late PaymentValidationDocModelForm _formModel;

  @override
  void initState() {
    _formModel = PaymentValidationDocModelForm(widget.model,
        PaymentValidationDocModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(
      covariant PaymentValidationDocModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = PaymentValidationDocModelForm(widget.model,
          PaymentValidationDocModelForm.formElements(widget.model), null);

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
    return ReactivePaymentValidationDocModelForm(
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

class PaymentValidationDocModelForm
    implements FormModel<PaymentValidationDocModel> {
  PaymentValidationDocModelForm(
    this.paymentValidationDocModel,
    this.form,
    this.path,
  ) {}

  static const String userControlName = "user";

  static const String agencyControlName = "agency";

  static const String provinceControlName = "province";

  final PaymentValidationDocModel? paymentValidationDocModel;

  final FormGroup form;

  final String? path;

  String userControlPath() => pathBuilder(userControlName);
  String agencyControlPath() => pathBuilder(agencyControlName);
  String provinceControlPath() => pathBuilder(provinceControlName);
  String get _userValue => userControl.value as String;
  String get _agencyValue => agencyControl.value as String;
  String get _provinceValue => provinceControl.value as String;
  bool get containsUser {
    try {
      form.control(userControlPath());
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

  bool get containsProvince {
    try {
      form.control(provinceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get userErrors => userControl.errors;
  Object? get agencyErrors => agencyControl.errors;
  Object? get provinceErrors => provinceControl.errors;
  void get userFocus => form.focus(userControlPath());
  void get agencyFocus => form.focus(agencyControlPath());
  void get provinceFocus => form.focus(provinceControlPath());
  void userValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    userControl.updateValue(value,
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

  void provinceValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    provinceControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void userValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    userControl.patchValue(value,
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

  void provinceValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    provinceControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void userValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      userControl.reset(
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
  void provinceValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      provinceControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get userControl =>
      form.control(userControlPath()) as FormControl<String>;
  FormControl<String> get agencyControl =>
      form.control(agencyControlPath()) as FormControl<String>;
  FormControl<String> get provinceControl =>
      form.control(provinceControlPath()) as FormControl<String>;
  void userSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      userControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      userControl.markAsEnabled(
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

  @override
  PaymentValidationDocModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'PaymentValidationDocModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return PaymentValidationDocModel(
        user: _userValue, agency: _agencyValue, province: _provinceValue);
  }

  PaymentValidationDocModelForm copyWithPath(String? path) {
    return PaymentValidationDocModelForm(paymentValidationDocModel, form, path);
  }

  @override
  void updateValue(
    PaymentValidationDocModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          PaymentValidationDocModelForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void reset({
    PaymentValidationDocModel? value,
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
          PaymentValidationDocModel? paymentValidationDocModel) =>
      FormGroup({
        userControlName: FormControl<String>(
            value: paymentValidationDocModel?.user,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        agencyControlName: FormControl<String>(
            value: paymentValidationDocModel?.agency,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        provinceControlName: FormControl<String>(
            value: paymentValidationDocModel?.province,
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

class ReactivePaymentValidationDocModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactivePaymentValidationDocModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(PaymentValidationDocModelForm formModel)?
      control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PaymentValidationDocModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      PaymentValidationDocModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePaymentValidationDocModelForm.of(context);

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

class ReactivePaymentValidationDocModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactivePaymentValidationDocModelFormFormGroupArrayBuilder({
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
      PaymentValidationDocModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PaymentValidationDocModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      PaymentValidationDocModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePaymentValidationDocModelForm.of(context);

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

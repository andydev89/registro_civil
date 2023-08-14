// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'create_payment_of_services.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveCreatePaymentofservicesModelFormConsumer extends StatelessWidget {
  const ReactiveCreatePaymentofservicesModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      CreatePaymentofservicesModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCreatePaymentofservicesModelForm.of(context);

    if (formModel is! CreatePaymentofservicesModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class CreatePaymentofservicesModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const CreatePaymentofservicesModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final CreatePaymentofservicesModelForm form;
}

class ReactiveCreatePaymentofservicesModelForm extends StatelessWidget {
  const ReactiveCreatePaymentofservicesModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final CreatePaymentofservicesModelForm form;

  final WillPopCallback? onWillPop;

  static CreatePaymentofservicesModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              CreatePaymentofservicesModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        CreatePaymentofservicesModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as CreatePaymentofservicesModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return CreatePaymentofservicesModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class CreatePaymentofservicesModelFormBuilder extends StatefulWidget {
  const CreatePaymentofservicesModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final CreatePaymentofservicesModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      CreatePaymentofservicesModelForm formModel, Widget? child) builder;

  final void Function(
          BuildContext context, CreatePaymentofservicesModelForm formModel)?
      initState;

  @override
  _CreatePaymentofservicesModelFormBuilderState createState() =>
      _CreatePaymentofservicesModelFormBuilderState();
}

class _CreatePaymentofservicesModelFormBuilderState
    extends State<CreatePaymentofservicesModelFormBuilder> {
  late CreatePaymentofservicesModelForm _formModel;

  @override
  void initState() {
    _formModel = CreatePaymentofservicesModelForm(widget.model,
        CreatePaymentofservicesModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(
      covariant CreatePaymentofservicesModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = CreatePaymentofservicesModelForm(widget.model,
          CreatePaymentofservicesModelForm.formElements(widget.model), null);

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
    return ReactiveCreatePaymentofservicesModelForm(
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

class CreatePaymentofservicesModelForm
    implements FormModel<CreatePaymentofservicesModel> {
  CreatePaymentofservicesModelForm(
    this.createPaymentofservicesModel,
    this.form,
    this.path,
  ) {}

  static const String userControlName = "user";

  static const String servicesControlName = "services";

  static const String agencyControlName = "agency";

  static const String provinceControlName = "province";

  final CreatePaymentofservicesModel? createPaymentofservicesModel;

  final FormGroup form;

  final String? path;

  String userControlPath() => pathBuilder(userControlName);
  String servicesControlPath() => pathBuilder(servicesControlName);
  String agencyControlPath() => pathBuilder(agencyControlName);
  String provinceControlPath() => pathBuilder(provinceControlName);
  String get _userValue => userControl.value as String;
  List<PaymentofservicesModel> get _servicesValue =>
      servicesControl.value as List<PaymentofservicesModel>;
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

  bool get containsServices {
    try {
      form.control(servicesControlPath());
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
  Object? get servicesErrors => servicesControl.errors;
  Object? get agencyErrors => agencyControl.errors;
  Object? get provinceErrors => provinceControl.errors;
  void get userFocus => form.focus(userControlPath());
  void get servicesFocus => form.focus(servicesControlPath());
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

  void servicesValueUpdate(
    List<PaymentofservicesModel> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    servicesControl.updateValue(value,
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

  void servicesValuePatch(
    List<PaymentofservicesModel> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    servicesControl.patchValue(value,
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
  void servicesValueReset(
    List<PaymentofservicesModel> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      servicesControl.reset(
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
  FormControl<List<PaymentofservicesModel>> get servicesControl =>
      form.control(servicesControlPath())
          as FormControl<List<PaymentofservicesModel>>;
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

  void servicesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      servicesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      servicesControl.markAsEnabled(
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
  CreatePaymentofservicesModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'CreatePaymentofservicesModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return CreatePaymentofservicesModel(
        user: _userValue,
        services: _servicesValue,
        agency: _agencyValue,
        province: _provinceValue);
  }

  CreatePaymentofservicesModelForm copyWithPath(String? path) {
    return CreatePaymentofservicesModelForm(
        createPaymentofservicesModel, form, path);
  }

  @override
  void updateValue(
    CreatePaymentofservicesModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          CreatePaymentofservicesModelForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void reset({
    CreatePaymentofservicesModel? value,
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
          CreatePaymentofservicesModel? createPaymentofservicesModel) =>
      FormGroup({
        userControlName: FormControl<String>(
            value: createPaymentofservicesModel?.user,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        servicesControlName: FormControl<List<PaymentofservicesModel>>(
            value: createPaymentofservicesModel?.services,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        agencyControlName: FormControl<String>(
            value: createPaymentofservicesModel?.agency,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        provinceControlName: FormControl<String>(
            value: createPaymentofservicesModel?.province,
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

class ReactiveCreatePaymentofservicesModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveCreatePaymentofservicesModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(CreatePaymentofservicesModelForm formModel)?
      control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      CreatePaymentofservicesModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      CreatePaymentofservicesModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCreatePaymentofservicesModelForm.of(context);

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

class ReactiveCreatePaymentofservicesModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveCreatePaymentofservicesModelFormFormGroupArrayBuilder({
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
      CreatePaymentofservicesModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      CreatePaymentofservicesModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      CreatePaymentofservicesModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCreatePaymentofservicesModelForm.of(context);

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

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'client_data_to_pay_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveClientDataToPayModelFormConsumer extends StatelessWidget {
  const ReactiveClientDataToPayModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ClientDataToPayModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveClientDataToPayModelForm.of(context);

    if (formModel is! ClientDataToPayModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ClientDataToPayModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ClientDataToPayModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ClientDataToPayModelForm form;
}

class ReactiveClientDataToPayModelForm extends StatelessWidget {
  const ReactiveClientDataToPayModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ClientDataToPayModelForm form;

  final WillPopCallback? onWillPop;

  static ClientDataToPayModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ClientDataToPayModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ClientDataToPayModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ClientDataToPayModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ClientDataToPayModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ClientDataToPayModelFormBuilder extends StatefulWidget {
  const ClientDataToPayModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ClientDataToPayModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ClientDataToPayModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context, ClientDataToPayModelForm formModel)?
      initState;

  @override
  _ClientDataToPayModelFormBuilderState createState() =>
      _ClientDataToPayModelFormBuilderState();
}

class _ClientDataToPayModelFormBuilderState
    extends State<ClientDataToPayModelFormBuilder> {
  late FormGroup _form;

  late ClientDataToPayModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = ClientDataToPayModelForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant ClientDataToPayModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ClientDataToPayModelForm(widget.model, _form, null);
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
    return ReactiveClientDataToPayModelForm(
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

class ClientDataToPayModelForm implements FormModel<ClientDataToPayModel> {
  ClientDataToPayModelForm(
    this.clientDataToPayModel,
    this.form,
    this.path,
  ) {}

  static String nameControlName = "name";

  static String lastNameControlName = "lastName";

  static String addressControlName = "address";

  static String provinceControlName = "province";

  static String cityControlName = "city";

  static String phoneControlName = "phone";

  static String emailControlName = "email";

  static String postalCodeControlName = "postalCode";

  final ClientDataToPayModel? clientDataToPayModel;

  final FormGroup form;

  final String? path;

  String nameControlPath() => pathBuilder(nameControlName);
  String lastNameControlPath() => pathBuilder(lastNameControlName);
  String addressControlPath() => pathBuilder(addressControlName);
  String provinceControlPath() => pathBuilder(provinceControlName);
  String cityControlPath() => pathBuilder(cityControlName);
  String phoneControlPath() => pathBuilder(phoneControlName);
  String emailControlPath() => pathBuilder(emailControlName);
  String postalCodeControlPath() => pathBuilder(postalCodeControlName);
  String get _nameValue => nameControl.value as String;
  String get _lastNameValue => lastNameControl.value as String;
  String get _addressValue => addressControl.value as String;
  String get _provinceValue => provinceControl.value as String;
  String get _cityValue => cityControl.value as String;
  String get _phoneValue => phoneControl.value as String;
  String get _emailValue => emailControl.value as String;
  int get _postalCodeValue => postalCodeControl.value as int;
  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLastName {
    try {
      form.control(lastNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAddress {
    try {
      form.control(addressControlPath());
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

  bool get containsCity {
    try {
      form.control(cityControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPhone {
    try {
      form.control(phoneControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsEmail {
    try {
      form.control(emailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPostalCode {
    try {
      form.control(postalCodeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get nameErrors => nameControl.errors;
  Object? get lastNameErrors => lastNameControl.errors;
  Object? get addressErrors => addressControl.errors;
  Object? get provinceErrors => provinceControl.errors;
  Object? get cityErrors => cityControl.errors;
  Object? get phoneErrors => phoneControl.errors;
  Object? get emailErrors => emailControl.errors;
  Object? get postalCodeErrors => postalCodeControl.errors;
  void get nameFocus => form.focus(nameControlPath());
  void get lastNameFocus => form.focus(lastNameControlPath());
  void get addressFocus => form.focus(addressControlPath());
  void get provinceFocus => form.focus(provinceControlPath());
  void get cityFocus => form.focus(cityControlPath());
  void get phoneFocus => form.focus(phoneControlPath());
  void get emailFocus => form.focus(emailControlPath());
  void get postalCodeFocus => form.focus(postalCodeControlPath());
  void nameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void lastNameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    lastNameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl.updateValue(value,
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

  void cityValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cityControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void postalCodeValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    postalCodeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void lastNameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    lastNameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl.patchValue(value,
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

  void cityValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cityControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void postalCodeValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    postalCodeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void lastNameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      lastNameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void addressValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      addressControl.reset(
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
  void cityValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      cityControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void phoneValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      phoneControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void emailValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void postalCodeValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      postalCodeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;
  FormControl<String> get lastNameControl =>
      form.control(lastNameControlPath()) as FormControl<String>;
  FormControl<String> get addressControl =>
      form.control(addressControlPath()) as FormControl<String>;
  FormControl<String> get provinceControl =>
      form.control(provinceControlPath()) as FormControl<String>;
  FormControl<String> get cityControl =>
      form.control(cityControlPath()) as FormControl<String>;
  FormControl<String> get phoneControl =>
      form.control(phoneControlPath()) as FormControl<String>;
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
  FormControl<int> get postalCodeControl =>
      form.control(postalCodeControlPath()) as FormControl<int>;
  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void lastNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      lastNameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      lastNameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addressSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      addressControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      addressControl.markAsEnabled(
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

  void citySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      cityControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      cityControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void phoneSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      phoneControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      phoneControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void emailSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      emailControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      emailControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void postalCodeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      postalCodeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      postalCodeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ClientDataToPayModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ClientDataToPayModel(
        name: _nameValue,
        lastName: _lastNameValue,
        address: _addressValue,
        province: _provinceValue,
        city: _cityValue,
        phone: _phoneValue,
        email: _emailValue,
        postalCode: _postalCodeValue);
  }

  ClientDataToPayModelForm copyWithPath(String? path) {
    return ClientDataToPayModelForm(clientDataToPayModel, form, path);
  }

  @override
  void updateValue(
    ClientDataToPayModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ClientDataToPayModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ClientDataToPayModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ClientDataToPayModelForm(value, FormGroup({}), null)
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
        nameControlName: FormControl<String>(
            value: clientDataToPayModel?.name,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        lastNameControlName: FormControl<String>(
            value: clientDataToPayModel?.lastName,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        addressControlName: FormControl<String>(
            value: clientDataToPayModel?.address,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        provinceControlName: FormControl<String>(
            value: clientDataToPayModel?.province,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        cityControlName: FormControl<String>(
            value: clientDataToPayModel?.city,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        phoneControlName: FormControl<String>(
            value: clientDataToPayModel?.phone,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailControlName: FormControl<String>(
            value: clientDataToPayModel?.email,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        postalCodeControlName: FormControl<int>(
            value: clientDataToPayModel?.postalCode,
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

class ReactiveClientDataToPayModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveClientDataToPayModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ClientDataToPayModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ClientDataToPayModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ClientDataToPayModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveClientDataToPayModelForm.of(context);

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

class ReactiveClientDataToPayModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveClientDataToPayModelFormFormGroupArrayBuilder({
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
      ClientDataToPayModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ClientDataToPayModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ClientDataToPayModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveClientDataToPayModelForm.of(context);

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

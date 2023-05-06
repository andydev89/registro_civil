// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'residence_registration_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveResidenceRegistrationFirstStepModelFormConsumer
    extends StatelessWidget {
  const ReactiveResidenceRegistrationFirstStepModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ResidenceRegistrationFirstStepModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveResidenceRegistrationFirstStepModelForm.of(context);

    if (formModel is! ResidenceRegistrationFirstStepModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ResidenceRegistrationFirstStepModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ResidenceRegistrationFirstStepModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ResidenceRegistrationFirstStepModelForm form;
}

class ReactiveResidenceRegistrationFirstStepModelForm extends StatelessWidget {
  const ReactiveResidenceRegistrationFirstStepModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ResidenceRegistrationFirstStepModelForm form;

  final WillPopCallback? onWillPop;

  static ResidenceRegistrationFirstStepModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ResidenceRegistrationFirstStepModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ResidenceRegistrationFirstStepModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget
                as ResidenceRegistrationFirstStepModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return ResidenceRegistrationFirstStepModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ResidenceRegistrationFirstStepModelFormBuilder extends StatefulWidget {
  const ResidenceRegistrationFirstStepModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ResidenceRegistrationFirstStepModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ResidenceRegistrationFirstStepModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context,
      ResidenceRegistrationFirstStepModelForm formModel)? initState;

  @override
  _ResidenceRegistrationFirstStepModelFormBuilderState createState() =>
      _ResidenceRegistrationFirstStepModelFormBuilderState();
}

class _ResidenceRegistrationFirstStepModelFormBuilderState
    extends State<ResidenceRegistrationFirstStepModelFormBuilder> {
  late FormGroup _form;

  late ResidenceRegistrationFirstStepModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel =
        ResidenceRegistrationFirstStepModelForm(widget.model, _form, null);

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
      covariant ResidenceRegistrationFirstStepModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel =
          ResidenceRegistrationFirstStepModelForm(widget.model, _form, null);
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
    return ReactiveResidenceRegistrationFirstStepModelForm(
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

class ResidenceRegistrationFirstStepModelForm
    implements FormModel<ResidenceRegistrationFirstStepModel> {
  ResidenceRegistrationFirstStepModelForm(
    this.residenceRegistrationFirstStepModel,
    this.form,
    this.path,
  ) {}

  static String nationalElectricUnicCodeControlName =
      "nationalElectricUnicCode";

  static String haveElectricLightMeterControlName = "haveElectricLightMeter";

  static String phoneNumberControlName = "phoneNumber";

  static String emailAddressControlName = "emailAddress";

  static String observationsControlName = "observations";

  final ResidenceRegistrationFirstStepModel?
      residenceRegistrationFirstStepModel;

  final FormGroup form;

  final String? path;

  String nationalElectricUnicCodeControlPath() =>
      pathBuilder(nationalElectricUnicCodeControlName);
  String haveElectricLightMeterControlPath() =>
      pathBuilder(haveElectricLightMeterControlName);
  String phoneNumberControlPath() => pathBuilder(phoneNumberControlName);
  String emailAddressControlPath() => pathBuilder(emailAddressControlName);
  String observationsControlPath() => pathBuilder(observationsControlName);
  String get _nationalElectricUnicCodeValue =>
      nationalElectricUnicCodeControl.value ?? "";
  bool get _haveElectricLightMeterValue =>
      haveElectricLightMeterControl.value as bool;
  String get _phoneNumberValue => phoneNumberControl.value as String;
  String get _emailAddressValue => emailAddressControl.value as String;
  String get _observationsValue => observationsControl.value as String;
  bool get containsNationalElectricUnicCode {
    try {
      form.control(nationalElectricUnicCodeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsHaveElectricLightMeter {
    try {
      form.control(haveElectricLightMeterControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPhoneNumber {
    try {
      form.control(phoneNumberControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsEmailAddress {
    try {
      form.control(emailAddressControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsObservations {
    try {
      form.control(observationsControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get nationalElectricUnicCodeErrors =>
      nationalElectricUnicCodeControl.errors;
  Object? get haveElectricLightMeterErrors =>
      haveElectricLightMeterControl.errors;
  Object? get phoneNumberErrors => phoneNumberControl.errors;
  Object? get emailAddressErrors => emailAddressControl.errors;
  Object? get observationsErrors => observationsControl.errors;
  void get nationalElectricUnicCodeFocus =>
      form.focus(nationalElectricUnicCodeControlPath());
  void get haveElectricLightMeterFocus =>
      form.focus(haveElectricLightMeterControlPath());
  void get phoneNumberFocus => form.focus(phoneNumberControlPath());
  void get emailAddressFocus => form.focus(emailAddressControlPath());
  void get observationsFocus => form.focus(observationsControlPath());
  void nationalElectricUnicCodeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nationalElectricUnicCodeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void haveElectricLightMeterValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    haveElectricLightMeterControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneNumberValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneNumberControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailAddressValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailAddressControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void observationsValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    observationsControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nationalElectricUnicCodeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nationalElectricUnicCodeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void haveElectricLightMeterValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    haveElectricLightMeterControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneNumberValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneNumberControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailAddressValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailAddressControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void observationsValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    observationsControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nationalElectricUnicCodeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nationalElectricUnicCodeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void haveElectricLightMeterValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      haveElectricLightMeterControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void phoneNumberValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      phoneNumberControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void emailAddressValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailAddressControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void observationsValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      observationsControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get nationalElectricUnicCodeControl =>
      form.control(nationalElectricUnicCodeControlPath())
          as FormControl<String>;
  FormControl<bool> get haveElectricLightMeterControl =>
      form.control(haveElectricLightMeterControlPath()) as FormControl<bool>;
  FormControl<String> get phoneNumberControl =>
      form.control(phoneNumberControlPath()) as FormControl<String>;
  FormControl<String> get emailAddressControl =>
      form.control(emailAddressControlPath()) as FormControl<String>;
  FormControl<String> get observationsControl =>
      form.control(observationsControlPath()) as FormControl<String>;
  void nationalElectricUnicCodeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nationalElectricUnicCodeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nationalElectricUnicCodeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void haveElectricLightMeterSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      haveElectricLightMeterControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      haveElectricLightMeterControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void phoneNumberSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      phoneNumberControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      phoneNumberControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void emailAddressSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      emailAddressControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      emailAddressControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void observationsSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      observationsControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      observationsControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ResidenceRegistrationFirstStepModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ResidenceRegistrationFirstStepModel(
        nationalElectricUnicCode: _nationalElectricUnicCodeValue,
        haveElectricLightMeter: _haveElectricLightMeterValue,
        phoneNumber: _phoneNumberValue,
        emailAddress: _emailAddressValue,
        observations: _observationsValue);
  }

  ResidenceRegistrationFirstStepModelForm copyWithPath(String? path) {
    return ResidenceRegistrationFirstStepModelForm(
        residenceRegistrationFirstStepModel, form, path);
  }

  @override
  void updateValue(
    ResidenceRegistrationFirstStepModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ResidenceRegistrationFirstStepModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ResidenceRegistrationFirstStepModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ResidenceRegistrationFirstStepModelForm(
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
        nationalElectricUnicCodeControlName: FormControl<String>(
            value:
                residenceRegistrationFirstStepModel?.nationalElectricUnicCode,
            validators: [requiredValidator, length10Validator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        haveElectricLightMeterControlName: FormControl<bool>(
            value: residenceRegistrationFirstStepModel?.haveElectricLightMeter,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        phoneNumberControlName: FormControl<String>(
            value: residenceRegistrationFirstStepModel?.phoneNumber,
            validators: [requiredValidator, length10Validator],
            asyncValidators: [phoneNumberEcuadorValidation],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailAddressControlName: FormControl<String>(
            value: residenceRegistrationFirstStepModel?.emailAddress,
            validators: [requiredValidator, emailValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        observationsControlName: FormControl<String>(
            value: residenceRegistrationFirstStepModel?.observations,
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

class ReactiveResidenceRegistrationFirstStepModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveResidenceRegistrationFirstStepModelFormArrayBuilder({
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
      ResidenceRegistrationFirstStepModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ResidenceRegistrationFirstStepModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ResidenceRegistrationFirstStepModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveResidenceRegistrationFirstStepModelForm.of(context);

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

class ReactiveResidenceRegistrationFirstStepModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveResidenceRegistrationFirstStepModelFormFormGroupArrayBuilder({
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
      ResidenceRegistrationFirstStepModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ResidenceRegistrationFirstStepModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ResidenceRegistrationFirstStepModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveResidenceRegistrationFirstStepModelForm.of(context);

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

class ReactiveResidenceRegistrationSecondStepModelFormConsumer
    extends StatelessWidget {
  const ReactiveResidenceRegistrationSecondStepModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context,
      ResidenceRegistrationSecondStepModelForm formModel,
      Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveResidenceRegistrationSecondStepModelForm.of(context);

    if (formModel is! ResidenceRegistrationSecondStepModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ResidenceRegistrationSecondStepModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ResidenceRegistrationSecondStepModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ResidenceRegistrationSecondStepModelForm form;
}

class ReactiveResidenceRegistrationSecondStepModelForm extends StatelessWidget {
  const ReactiveResidenceRegistrationSecondStepModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ResidenceRegistrationSecondStepModelForm form;

  final WillPopCallback? onWillPop;

  static ResidenceRegistrationSecondStepModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ResidenceRegistrationSecondStepModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ResidenceRegistrationSecondStepModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget
                as ResidenceRegistrationSecondStepModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return ResidenceRegistrationSecondStepModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ResidenceRegistrationSecondStepModelFormBuilder extends StatefulWidget {
  const ResidenceRegistrationSecondStepModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ResidenceRegistrationSecondStepModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context,
      ResidenceRegistrationSecondStepModelForm formModel,
      Widget? child) builder;

  final void Function(BuildContext context,
      ResidenceRegistrationSecondStepModelForm formModel)? initState;

  @override
  _ResidenceRegistrationSecondStepModelFormBuilderState createState() =>
      _ResidenceRegistrationSecondStepModelFormBuilderState();
}

class _ResidenceRegistrationSecondStepModelFormBuilderState
    extends State<ResidenceRegistrationSecondStepModelFormBuilder> {
  late FormGroup _form;

  late ResidenceRegistrationSecondStepModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel =
        ResidenceRegistrationSecondStepModelForm(widget.model, _form, null);

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
      covariant ResidenceRegistrationSecondStepModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel =
          ResidenceRegistrationSecondStepModelForm(widget.model, _form, null);
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
    return ReactiveResidenceRegistrationSecondStepModelForm(
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

class ResidenceRegistrationSecondStepModelForm
    implements FormModel<ResidenceRegistrationSecondStepModel> {
  ResidenceRegistrationSecondStepModelForm(
    this.residenceRegistrationSecondStepModel,
    this.form,
    this.path,
  ) {}

  static String provinceControlName = "province";

  static String cantonControlName = "canton";

  static String parroquiaControlName = "parroquia";

  static String primaryStreetControlName = "primaryStreet";

  static String secondaryStreetControlName = "secondaryStreet";

  final ResidenceRegistrationSecondStepModel?
      residenceRegistrationSecondStepModel;

  final FormGroup form;

  final String? path;

  String provinceControlPath() => pathBuilder(provinceControlName);
  String cantonControlPath() => pathBuilder(cantonControlName);
  String parroquiaControlPath() => pathBuilder(parroquiaControlName);
  String primaryStreetControlPath() => pathBuilder(primaryStreetControlName);
  String secondaryStreetControlPath() =>
      pathBuilder(secondaryStreetControlName);
  LocationModel get _provinceValue => provinceControl.value as LocationModel;
  LocationModel get _cantonValue => cantonControl.value as LocationModel;
  LocationModel get _parroquiaValue => parroquiaControl.value as LocationModel;
  String get _primaryStreetValue => primaryStreetControl.value as String;
  String get _secondaryStreetValue => secondaryStreetControl.value as String;
  bool get containsProvince {
    try {
      form.control(provinceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCanton {
    try {
      form.control(cantonControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsParroquia {
    try {
      form.control(parroquiaControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPrimaryStreet {
    try {
      form.control(primaryStreetControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSecondaryStreet {
    try {
      form.control(secondaryStreetControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get provinceErrors => provinceControl.errors;
  Object? get cantonErrors => cantonControl.errors;
  Object? get parroquiaErrors => parroquiaControl.errors;
  Object? get primaryStreetErrors => primaryStreetControl.errors;
  Object? get secondaryStreetErrors => secondaryStreetControl.errors;
  void get provinceFocus => form.focus(provinceControlPath());
  void get cantonFocus => form.focus(cantonControlPath());
  void get parroquiaFocus => form.focus(parroquiaControlPath());
  void get primaryStreetFocus => form.focus(primaryStreetControlPath());
  void get secondaryStreetFocus => form.focus(secondaryStreetControlPath());
  void provinceValueUpdate(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    provinceControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cantonValueUpdate(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cantonControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void parroquiaValueUpdate(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    parroquiaControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void primaryStreetValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    primaryStreetControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void secondaryStreetValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    secondaryStreetControl.updateValue(value,
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

  void cantonValuePatch(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cantonControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void parroquiaValuePatch(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    parroquiaControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void primaryStreetValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    primaryStreetControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void secondaryStreetValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    secondaryStreetControl.patchValue(value,
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
  void cantonValueReset(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      cantonControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void parroquiaValueReset(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      parroquiaControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void primaryStreetValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      primaryStreetControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void secondaryStreetValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      secondaryStreetControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<LocationModel> get provinceControl =>
      form.control(provinceControlPath()) as FormControl<LocationModel>;
  FormControl<LocationModel> get cantonControl =>
      form.control(cantonControlPath()) as FormControl<LocationModel>;
  FormControl<LocationModel> get parroquiaControl =>
      form.control(parroquiaControlPath()) as FormControl<LocationModel>;
  FormControl<String> get primaryStreetControl =>
      form.control(primaryStreetControlPath()) as FormControl<String>;
  FormControl<String> get secondaryStreetControl =>
      form.control(secondaryStreetControlPath()) as FormControl<String>;
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

  void cantonSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      cantonControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      cantonControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void parroquiaSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      parroquiaControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      parroquiaControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void primaryStreetSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      primaryStreetControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      primaryStreetControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void secondaryStreetSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      secondaryStreetControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      secondaryStreetControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ResidenceRegistrationSecondStepModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ResidenceRegistrationSecondStepModel(
        province: _provinceValue,
        canton: _cantonValue,
        parroquia: _parroquiaValue,
        primaryStreet: _primaryStreetValue,
        secondaryStreet: _secondaryStreetValue);
  }

  ResidenceRegistrationSecondStepModelForm copyWithPath(String? path) {
    return ResidenceRegistrationSecondStepModelForm(
        residenceRegistrationSecondStepModel, form, path);
  }

  @override
  void updateValue(
    ResidenceRegistrationSecondStepModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ResidenceRegistrationSecondStepModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ResidenceRegistrationSecondStepModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ResidenceRegistrationSecondStepModelForm(
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
        provinceControlName: FormControl<LocationModel>(
            value: residenceRegistrationSecondStepModel?.province,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        cantonControlName: FormControl<LocationModel>(
            value: residenceRegistrationSecondStepModel?.canton,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        parroquiaControlName: FormControl<LocationModel>(
            value: residenceRegistrationSecondStepModel?.parroquia,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        primaryStreetControlName: FormControl<String>(
            value: residenceRegistrationSecondStepModel?.primaryStreet,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        secondaryStreetControlName: FormControl<String>(
            value: residenceRegistrationSecondStepModel?.secondaryStreet,
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

class ReactiveResidenceRegistrationSecondStepModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveResidenceRegistrationSecondStepModelFormArrayBuilder({
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
      ResidenceRegistrationSecondStepModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ResidenceRegistrationSecondStepModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ResidenceRegistrationSecondStepModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveResidenceRegistrationSecondStepModelForm.of(context);

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

class ReactiveResidenceRegistrationSecondStepModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveResidenceRegistrationSecondStepModelFormFormGroupArrayBuilder({
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
      ResidenceRegistrationSecondStepModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ResidenceRegistrationSecondStepModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ResidenceRegistrationSecondStepModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveResidenceRegistrationSecondStepModelForm.of(context);

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

class ReactiveResidenceRegistrationThirdStepModelFormConsumer
    extends StatelessWidget {
  const ReactiveResidenceRegistrationThirdStepModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ResidenceRegistrationThirdStepModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveResidenceRegistrationThirdStepModelForm.of(context);

    if (formModel is! ResidenceRegistrationThirdStepModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ResidenceRegistrationThirdStepModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ResidenceRegistrationThirdStepModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ResidenceRegistrationThirdStepModelForm form;
}

class ReactiveResidenceRegistrationThirdStepModelForm extends StatelessWidget {
  const ReactiveResidenceRegistrationThirdStepModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ResidenceRegistrationThirdStepModelForm form;

  final WillPopCallback? onWillPop;

  static ResidenceRegistrationThirdStepModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ResidenceRegistrationThirdStepModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ResidenceRegistrationThirdStepModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget
                as ResidenceRegistrationThirdStepModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return ResidenceRegistrationThirdStepModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ResidenceRegistrationThirdStepModelFormBuilder extends StatefulWidget {
  const ResidenceRegistrationThirdStepModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ResidenceRegistrationThirdStepModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ResidenceRegistrationThirdStepModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context,
      ResidenceRegistrationThirdStepModelForm formModel)? initState;

  @override
  _ResidenceRegistrationThirdStepModelFormBuilderState createState() =>
      _ResidenceRegistrationThirdStepModelFormBuilderState();
}

class _ResidenceRegistrationThirdStepModelFormBuilderState
    extends State<ResidenceRegistrationThirdStepModelFormBuilder> {
  late FormGroup _form;

  late ResidenceRegistrationThirdStepModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel =
        ResidenceRegistrationThirdStepModelForm(widget.model, _form, null);

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
      covariant ResidenceRegistrationThirdStepModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel =
          ResidenceRegistrationThirdStepModelForm(widget.model, _form, null);
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
    return ReactiveResidenceRegistrationThirdStepModelForm(
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

class ResidenceRegistrationThirdStepModelForm
    implements FormModel<ResidenceRegistrationThirdStepModel> {
  ResidenceRegistrationThirdStepModelForm(
    this.residenceRegistrationThirdStepModel,
    this.form,
    this.path,
  ) {}

  static String houseTypeControlName = "houseType";

  static String tenureControlName = "tenure";

  static String villageOrBuildingNumberControlName = "villageOrBuildingNumber";

  static String floorNumberControlName = "floorNumber";

  static String appartmentNumberControlName = "appartmentNumber";

  static String residenceTypeControlName = "residenceType";

  final ResidenceRegistrationThirdStepModel?
      residenceRegistrationThirdStepModel;

  final FormGroup form;

  final String? path;

  String houseTypeControlPath() => pathBuilder(houseTypeControlName);
  String tenureControlPath() => pathBuilder(tenureControlName);
  String villageOrBuildingNumberControlPath() =>
      pathBuilder(villageOrBuildingNumberControlName);
  String floorNumberControlPath() => pathBuilder(floorNumberControlName);
  String appartmentNumberControlPath() =>
      pathBuilder(appartmentNumberControlName);
  String residenceTypeControlPath() => pathBuilder(residenceTypeControlName);
  ResidentialHousingType get _houseTypeValue =>
      houseTypeControl.value as ResidentialHousingType;
  ResidentialTenureHousingTypeAgreemente get _tenureValue =>
      tenureControl.value as ResidentialTenureHousingTypeAgreemente;
  String get _villageOrBuildingNumberValue =>
      villageOrBuildingNumberControl.value as String;
  String get _floorNumberValue => floorNumberControl.value as String;
  String get _appartmentNumberValue => appartmentNumberControl.value as String;
  ResidenceType get _residenceTypeValue =>
      residenceTypeControl.value as ResidenceType;
  bool get containsHouseType {
    try {
      form.control(houseTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsTenure {
    try {
      form.control(tenureControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsVillageOrBuildingNumber {
    try {
      form.control(villageOrBuildingNumberControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsFloorNumber {
    try {
      form.control(floorNumberControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAppartmentNumber {
    try {
      form.control(appartmentNumberControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsResidenceType {
    try {
      form.control(residenceTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get houseTypeErrors => houseTypeControl.errors;
  Object? get tenureErrors => tenureControl.errors;
  Object? get villageOrBuildingNumberErrors =>
      villageOrBuildingNumberControl.errors;
  Object? get floorNumberErrors => floorNumberControl.errors;
  Object? get appartmentNumberErrors => appartmentNumberControl.errors;
  Object? get residenceTypeErrors => residenceTypeControl.errors;
  void get houseTypeFocus => form.focus(houseTypeControlPath());
  void get tenureFocus => form.focus(tenureControlPath());
  void get villageOrBuildingNumberFocus =>
      form.focus(villageOrBuildingNumberControlPath());
  void get floorNumberFocus => form.focus(floorNumberControlPath());
  void get appartmentNumberFocus => form.focus(appartmentNumberControlPath());
  void get residenceTypeFocus => form.focus(residenceTypeControlPath());
  void houseTypeValueUpdate(
    ResidentialHousingType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    houseTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void tenureValueUpdate(
    ResidentialTenureHousingTypeAgreemente value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    tenureControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void villageOrBuildingNumberValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    villageOrBuildingNumberControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void floorNumberValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    floorNumberControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void appartmentNumberValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    appartmentNumberControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void residenceTypeValueUpdate(
    ResidenceType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    residenceTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void houseTypeValuePatch(
    ResidentialHousingType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    houseTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void tenureValuePatch(
    ResidentialTenureHousingTypeAgreemente value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    tenureControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void villageOrBuildingNumberValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    villageOrBuildingNumberControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void floorNumberValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    floorNumberControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void appartmentNumberValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    appartmentNumberControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void residenceTypeValuePatch(
    ResidenceType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    residenceTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void houseTypeValueReset(
    ResidentialHousingType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      houseTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void tenureValueReset(
    ResidentialTenureHousingTypeAgreemente value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      tenureControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void villageOrBuildingNumberValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      villageOrBuildingNumberControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void floorNumberValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      floorNumberControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void appartmentNumberValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      appartmentNumberControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void residenceTypeValueReset(
    ResidenceType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      residenceTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<ResidentialHousingType> get houseTypeControl =>
      form.control(houseTypeControlPath())
          as FormControl<ResidentialHousingType>;
  FormControl<ResidentialTenureHousingTypeAgreemente> get tenureControl =>
      form.control(tenureControlPath())
          as FormControl<ResidentialTenureHousingTypeAgreemente>;
  FormControl<String> get villageOrBuildingNumberControl =>
      form.control(villageOrBuildingNumberControlPath()) as FormControl<String>;
  FormControl<String> get floorNumberControl =>
      form.control(floorNumberControlPath()) as FormControl<String>;
  FormControl<String> get appartmentNumberControl =>
      form.control(appartmentNumberControlPath()) as FormControl<String>;
  FormControl<ResidenceType> get residenceTypeControl =>
      form.control(residenceTypeControlPath()) as FormControl<ResidenceType>;
  void houseTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      houseTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      houseTypeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void tenureSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      tenureControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      tenureControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void villageOrBuildingNumberSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      villageOrBuildingNumberControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      villageOrBuildingNumberControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void floorNumberSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      floorNumberControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      floorNumberControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void appartmentNumberSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      appartmentNumberControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      appartmentNumberControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void residenceTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      residenceTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      residenceTypeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ResidenceRegistrationThirdStepModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ResidenceRegistrationThirdStepModel(
        houseType: _houseTypeValue,
        tenure: _tenureValue,
        villageOrBuildingNumber: _villageOrBuildingNumberValue,
        floorNumber: _floorNumberValue,
        appartmentNumber: _appartmentNumberValue,
        residenceType: _residenceTypeValue);
  }

  ResidenceRegistrationThirdStepModelForm copyWithPath(String? path) {
    return ResidenceRegistrationThirdStepModelForm(
        residenceRegistrationThirdStepModel, form, path);
  }

  @override
  void updateValue(
    ResidenceRegistrationThirdStepModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ResidenceRegistrationThirdStepModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ResidenceRegistrationThirdStepModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ResidenceRegistrationThirdStepModelForm(
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
        houseTypeControlName: FormControl<ResidentialHousingType>(
            value: residenceRegistrationThirdStepModel?.houseType,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        tenureControlName: FormControl<ResidentialTenureHousingTypeAgreemente>(
            value: residenceRegistrationThirdStepModel?.tenure,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        villageOrBuildingNumberControlName: FormControl<String>(
            value: residenceRegistrationThirdStepModel?.villageOrBuildingNumber,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        floorNumberControlName: FormControl<String>(
            value: residenceRegistrationThirdStepModel?.floorNumber,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        appartmentNumberControlName: FormControl<String>(
            value: residenceRegistrationThirdStepModel?.appartmentNumber,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        residenceTypeControlName: FormControl<ResidenceType>(
            value: residenceRegistrationThirdStepModel?.residenceType,
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

class ReactiveResidenceRegistrationThirdStepModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveResidenceRegistrationThirdStepModelFormArrayBuilder({
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
      ResidenceRegistrationThirdStepModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ResidenceRegistrationThirdStepModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ResidenceRegistrationThirdStepModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveResidenceRegistrationThirdStepModelForm.of(context);

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

class ReactiveResidenceRegistrationThirdStepModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveResidenceRegistrationThirdStepModelFormFormGroupArrayBuilder({
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
      ResidenceRegistrationThirdStepModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ResidenceRegistrationThirdStepModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ResidenceRegistrationThirdStepModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveResidenceRegistrationThirdStepModelForm.of(context);

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

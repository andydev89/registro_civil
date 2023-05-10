// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'residence_registration_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveResidenceRegistrationFormConsumer extends StatelessWidget {
  const ReactiveResidenceRegistrationFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ResidenceRegistrationForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveResidenceRegistrationForm.of(context);

    if (formModel is! ResidenceRegistrationForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ResidenceRegistrationFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ResidenceRegistrationFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ResidenceRegistrationForm form;
}

class ReactiveResidenceRegistrationForm extends StatelessWidget {
  const ReactiveResidenceRegistrationForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ResidenceRegistrationForm form;

  final WillPopCallback? onWillPop;

  static ResidenceRegistrationForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ResidenceRegistrationFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ResidenceRegistrationFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ResidenceRegistrationFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ResidenceRegistrationFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ResidenceRegistrationFormBuilder extends StatefulWidget {
  const ResidenceRegistrationFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ResidenceRegistration? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ResidenceRegistrationForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, ResidenceRegistrationForm formModel)? initState;

  @override
  _ResidenceRegistrationFormBuilderState createState() =>
      _ResidenceRegistrationFormBuilderState();
}

class _ResidenceRegistrationFormBuilderState
    extends State<ResidenceRegistrationFormBuilder> {
  late FormGroup _form;

  late ResidenceRegistrationForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = ResidenceRegistrationForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant ResidenceRegistrationFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ResidenceRegistrationForm(widget.model, _form, null);
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
    return ReactiveResidenceRegistrationForm(
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

class ResidenceRegistrationForm implements FormModel<ResidenceRegistration> {
  ResidenceRegistrationForm(
    this.residenceRegistration,
    this.form,
    this.path,
  ) {}

  static String userIdControlName = "userId";

  static String observationsControlName = "observations";

  static String residentialsControlName = "residentials";

  final ResidenceRegistration? residenceRegistration;

  final FormGroup form;

  final String? path;

  String userIdControlPath() => pathBuilder(userIdControlName);
  String observationsControlPath() => pathBuilder(observationsControlName);
  String residentialsControlPath() => pathBuilder(residentialsControlName);
  String get _userIdValue => userIdControl.value ?? "";
  String get _observationsValue => observationsControl.value ?? "";
  List<Residential> get _residentialsValue =>
      residentialsControl.value?.whereType<Residential>().toList() ?? [];
  bool get containsUserId {
    try {
      form.control(userIdControlPath());
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

  bool get containsResidentials {
    try {
      form.control(residentialsControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get userIdErrors => userIdControl.errors;
  Object? get observationsErrors => observationsControl.errors;
  Object? get residentialsErrors => residentialsControl.errors;
  void get userIdFocus => form.focus(userIdControlPath());
  void get observationsFocus => form.focus(observationsControlPath());
  void get residentialsFocus => form.focus(residentialsControlPath());
  void userIdValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    userIdControl.updateValue(value,
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

  void residentialsValueUpdate(
    List<Residential> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    residentialsControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void userIdValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    userIdControl.patchValue(value,
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

  void residentialsValuePatch(
    List<Residential> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    residentialsControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void userIdValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      userIdControl.reset(
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
  void residentialsValueReset(
    List<Residential> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      residentialsControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get userIdControl =>
      form.control(userIdControlPath()) as FormControl<String>;
  FormControl<String> get observationsControl =>
      form.control(observationsControlPath()) as FormControl<String>;
  FormArray<Residential> get residentialsControl =>
      form.control(residentialsControlPath()) as FormArray<Residential>;
  void userIdSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      userIdControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      userIdControl.markAsEnabled(
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

  void residentialsSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      residentialsControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      residentialsControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addResidentialsItem(
    Residential value, {
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

    residentialsControl.add(FormControl<Residential>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  @override
  ResidenceRegistration get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ResidenceRegistration(
        userId: _userIdValue,
        observations: _observationsValue,
        residentials: _residentialsValue);
  }

  ResidenceRegistrationForm copyWithPath(String? path) {
    return ResidenceRegistrationForm(residenceRegistration, form, path);
  }

  @override
  void updateValue(
    ResidenceRegistration value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ResidenceRegistrationForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ResidenceRegistration value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ResidenceRegistrationForm(value, FormGroup({}), null)
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
        userIdControlName: FormControl<String>(
            value: residenceRegistration?.userId,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        observationsControlName: FormControl<String>(
            value: residenceRegistration?.observations,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        residentialsControlName: FormArray<Residential>(
            residenceRegistration?.residentials
                    .map((e) => FormControl<Residential>(
                          value: e,
                          validators: [],
                          asyncValidators: [],
                          asyncValidatorsDebounceTime: 250,
                          disabled: false,
                        ))
                    .toList() ??
                [],
            validators: [
              (control) => requiredValidator(control as FormArray<Residential>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveResidenceRegistrationFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveResidenceRegistrationFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ResidenceRegistrationForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ResidenceRegistrationForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ResidenceRegistrationForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveResidenceRegistrationForm.of(context);

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

class ReactiveResidenceRegistrationFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveResidenceRegistrationFormFormGroupArrayBuilder({
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
      ResidenceRegistrationForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ResidenceRegistrationForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ResidenceRegistrationForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveResidenceRegistrationForm.of(context);

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

class ReactiveResidentialFormConsumer extends StatelessWidget {
  const ReactiveResidentialFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, ResidentialForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveResidentialForm.of(context);

    if (formModel is! ResidentialForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ResidentialFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const ResidentialFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ResidentialForm form;
}

class ReactiveResidentialForm extends StatelessWidget {
  const ReactiveResidentialForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ResidentialForm form;

  final WillPopCallback? onWillPop;

  static ResidentialForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ResidentialFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ResidentialFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ResidentialFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ResidentialFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ResidentialFormBuilder extends StatefulWidget {
  const ResidentialFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Residential? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, ResidentialForm formModel, Widget? child) builder;

  final void Function(BuildContext context, ResidentialForm formModel)?
      initState;

  @override
  _ResidentialFormBuilderState createState() => _ResidentialFormBuilderState();
}

class _ResidentialFormBuilderState extends State<ResidentialFormBuilder> {
  late FormGroup _form;

  late ResidentialForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = ResidentialForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant ResidentialFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ResidentialForm(widget.model, _form, null);
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
    return ReactiveResidentialForm(
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

class ResidentialForm implements FormModel<Residential> {
  ResidentialForm(
    this.residential,
    this.form,
    this.path,
  ) {}

  static String electricLightMeterControlName = "electricLightMeter";

  static String electricalCodeControlName = "electricalCode";

  static String provinceControlName = "province";

  static String cantonControlName = "canton";

  static String parroquiaControlName = "parroquia";

  static String mainStreetControlName = "mainStreet";

  static String backStreetControlName = "backStreet";

  static String housingTypeControlName = "housingType";

  static String tenureHousingTypeAgreementControlName =
      "tenureHousingTypeAgreement";

  static String numberVillaBuildingControlName = "numberVillaBuilding";

  static String floorNumberControlName = "floorNumber";

  static String departmentNumberControlName = "departmentNumber";

  static String typeControlName = "type";

  static String dependentsControlName = "dependents";

  final Residential? residential;

  final FormGroup form;

  final String? path;

  String electricLightMeterControlPath() =>
      pathBuilder(electricLightMeterControlName);
  String electricalCodeControlPath() => pathBuilder(electricalCodeControlName);
  String provinceControlPath() => pathBuilder(provinceControlName);
  String cantonControlPath() => pathBuilder(cantonControlName);
  String parroquiaControlPath() => pathBuilder(parroquiaControlName);
  String mainStreetControlPath() => pathBuilder(mainStreetControlName);
  String backStreetControlPath() => pathBuilder(backStreetControlName);
  String housingTypeControlPath() => pathBuilder(housingTypeControlName);
  String tenureHousingTypeAgreementControlPath() =>
      pathBuilder(tenureHousingTypeAgreementControlName);
  String numberVillaBuildingControlPath() =>
      pathBuilder(numberVillaBuildingControlName);
  String floorNumberControlPath() => pathBuilder(floorNumberControlName);
  String departmentNumberControlPath() =>
      pathBuilder(departmentNumberControlName);
  String typeControlPath() => pathBuilder(typeControlName);
  String dependentsControlPath() => pathBuilder(dependentsControlName);
  bool get _electricLightMeterValue => electricLightMeterControl.value as bool;
  String get _electricalCodeValue => electricalCodeControl.value ?? "";
  LocationModel get _provinceValue => provinceControl.value as LocationModel;
  LocationModel get _cantonValue => cantonControl.value as LocationModel;
  LocationModel get _parroquiaValue => parroquiaControl.value as LocationModel;
  String get _mainStreetValue => mainStreetControl.value ?? "";
  String get _backStreetValue => backStreetControl.value ?? "";
  ResidentialHousingType get _housingTypeValue =>
      housingTypeControl.value as ResidentialHousingType;
  ResidentialTenureHousingTypeAgreemente get _tenureHousingTypeAgreementValue =>
      tenureHousingTypeAgreementControl.value
          as ResidentialTenureHousingTypeAgreemente;
  String get _numberVillaBuildingValue =>
      numberVillaBuildingControl.value ?? "";
  String get _floorNumberValue => floorNumberControl.value ?? "";
  String get _departmentNumberValue => departmentNumberControl.value ?? "";
  ResidenceType get _typeValue => typeControl.value as ResidenceType;
  List<Dependent> get _dependentsValue =>
      dependentsControl.value?.whereType<Dependent>().toList() ?? [];
  bool get containsElectricLightMeter {
    try {
      form.control(electricLightMeterControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsElectricalCode {
    try {
      form.control(electricalCodeControlPath());
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

  bool get containsMainStreet {
    try {
      form.control(mainStreetControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsBackStreet {
    try {
      form.control(backStreetControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsHousingType {
    try {
      form.control(housingTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsTenureHousingTypeAgreement {
    try {
      form.control(tenureHousingTypeAgreementControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsNumberVillaBuilding {
    try {
      form.control(numberVillaBuildingControlPath());
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

  bool get containsDepartmentNumber {
    try {
      form.control(departmentNumberControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsType {
    try {
      form.control(typeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDependents {
    try {
      form.control(dependentsControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get electricLightMeterErrors => electricLightMeterControl.errors;
  Object? get electricalCodeErrors => electricalCodeControl.errors;
  Object? get provinceErrors => provinceControl.errors;
  Object? get cantonErrors => cantonControl.errors;
  Object? get parroquiaErrors => parroquiaControl.errors;
  Object? get mainStreetErrors => mainStreetControl.errors;
  Object? get backStreetErrors => backStreetControl.errors;
  Object? get housingTypeErrors => housingTypeControl.errors;
  Object? get tenureHousingTypeAgreementErrors =>
      tenureHousingTypeAgreementControl.errors;
  Object? get numberVillaBuildingErrors => numberVillaBuildingControl.errors;
  Object? get floorNumberErrors => floorNumberControl.errors;
  Object? get departmentNumberErrors => departmentNumberControl.errors;
  Object? get typeErrors => typeControl.errors;
  Object? get dependentsErrors => dependentsControl.errors;
  void get electricLightMeterFocus =>
      form.focus(electricLightMeterControlPath());
  void get electricalCodeFocus => form.focus(electricalCodeControlPath());
  void get provinceFocus => form.focus(provinceControlPath());
  void get cantonFocus => form.focus(cantonControlPath());
  void get parroquiaFocus => form.focus(parroquiaControlPath());
  void get mainStreetFocus => form.focus(mainStreetControlPath());
  void get backStreetFocus => form.focus(backStreetControlPath());
  void get housingTypeFocus => form.focus(housingTypeControlPath());
  void get tenureHousingTypeAgreementFocus =>
      form.focus(tenureHousingTypeAgreementControlPath());
  void get numberVillaBuildingFocus =>
      form.focus(numberVillaBuildingControlPath());
  void get floorNumberFocus => form.focus(floorNumberControlPath());
  void get departmentNumberFocus => form.focus(departmentNumberControlPath());
  void get typeFocus => form.focus(typeControlPath());
  void get dependentsFocus => form.focus(dependentsControlPath());
  void electricLightMeterValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    electricLightMeterControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void electricalCodeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    electricalCodeControl.updateValue(value,
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

  void mainStreetValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    mainStreetControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void backStreetValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    backStreetControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void housingTypeValueUpdate(
    ResidentialHousingType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    housingTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void tenureHousingTypeAgreementValueUpdate(
    ResidentialTenureHousingTypeAgreemente value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    tenureHousingTypeAgreementControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void numberVillaBuildingValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    numberVillaBuildingControl.updateValue(value,
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

  void departmentNumberValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    departmentNumberControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void typeValueUpdate(
    ResidenceType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    typeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dependentsValueUpdate(
    List<Dependent> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dependentsControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void electricLightMeterValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    electricLightMeterControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void electricalCodeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    electricalCodeControl.patchValue(value,
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

  void mainStreetValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    mainStreetControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void backStreetValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    backStreetControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void housingTypeValuePatch(
    ResidentialHousingType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    housingTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void tenureHousingTypeAgreementValuePatch(
    ResidentialTenureHousingTypeAgreemente value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    tenureHousingTypeAgreementControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void numberVillaBuildingValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    numberVillaBuildingControl.patchValue(value,
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

  void departmentNumberValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    departmentNumberControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void typeValuePatch(
    ResidenceType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    typeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dependentsValuePatch(
    List<Dependent> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dependentsControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void electricLightMeterValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      electricLightMeterControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void electricalCodeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      electricalCodeControl.reset(
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
  void mainStreetValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      mainStreetControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void backStreetValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      backStreetControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void housingTypeValueReset(
    ResidentialHousingType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      housingTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void tenureHousingTypeAgreementValueReset(
    ResidentialTenureHousingTypeAgreemente value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      tenureHousingTypeAgreementControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void numberVillaBuildingValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      numberVillaBuildingControl.reset(
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
  void departmentNumberValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      departmentNumberControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void typeValueReset(
    ResidenceType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      typeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void dependentsValueReset(
    List<Dependent> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      dependentsControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<bool> get electricLightMeterControl =>
      form.control(electricLightMeterControlPath()) as FormControl<bool>;
  FormControl<String> get electricalCodeControl =>
      form.control(electricalCodeControlPath()) as FormControl<String>;
  FormControl<LocationModel> get provinceControl =>
      form.control(provinceControlPath()) as FormControl<LocationModel>;
  FormControl<LocationModel> get cantonControl =>
      form.control(cantonControlPath()) as FormControl<LocationModel>;
  FormControl<LocationModel> get parroquiaControl =>
      form.control(parroquiaControlPath()) as FormControl<LocationModel>;
  FormControl<String> get mainStreetControl =>
      form.control(mainStreetControlPath()) as FormControl<String>;
  FormControl<String> get backStreetControl =>
      form.control(backStreetControlPath()) as FormControl<String>;
  FormControl<ResidentialHousingType> get housingTypeControl =>
      form.control(housingTypeControlPath())
          as FormControl<ResidentialHousingType>;
  FormControl<ResidentialTenureHousingTypeAgreemente>
      get tenureHousingTypeAgreementControl =>
          form.control(tenureHousingTypeAgreementControlPath())
              as FormControl<ResidentialTenureHousingTypeAgreemente>;
  FormControl<String> get numberVillaBuildingControl =>
      form.control(numberVillaBuildingControlPath()) as FormControl<String>;
  FormControl<String> get floorNumberControl =>
      form.control(floorNumberControlPath()) as FormControl<String>;
  FormControl<String> get departmentNumberControl =>
      form.control(departmentNumberControlPath()) as FormControl<String>;
  FormControl<ResidenceType> get typeControl =>
      form.control(typeControlPath()) as FormControl<ResidenceType>;
  FormArray<Dependent> get dependentsControl =>
      form.control(dependentsControlPath()) as FormArray<Dependent>;
  void electricLightMeterSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      electricLightMeterControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      electricLightMeterControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void electricalCodeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      electricalCodeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      electricalCodeControl.markAsEnabled(
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

  void mainStreetSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      mainStreetControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      mainStreetControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void backStreetSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      backStreetControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      backStreetControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void housingTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      housingTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      housingTypeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void tenureHousingTypeAgreementSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      tenureHousingTypeAgreementControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      tenureHousingTypeAgreementControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void numberVillaBuildingSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      numberVillaBuildingControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      numberVillaBuildingControl.markAsEnabled(
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

  void departmentNumberSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      departmentNumberControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      departmentNumberControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void typeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      typeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      typeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void dependentsSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      dependentsControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      dependentsControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addDependentsItem(
    Dependent value, {
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

    dependentsControl.add(FormControl<Dependent>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  @override
  Residential get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return Residential(
        electricLightMeter: _electricLightMeterValue,
        electricalCode: _electricalCodeValue,
        province: _provinceValue,
        canton: _cantonValue,
        parroquia: _parroquiaValue,
        mainStreet: _mainStreetValue,
        backStreet: _backStreetValue,
        housingType: _housingTypeValue,
        tenureHousingTypeAgreement: _tenureHousingTypeAgreementValue,
        numberVillaBuilding: _numberVillaBuildingValue,
        floorNumber: _floorNumberValue,
        departmentNumber: _departmentNumberValue,
        type: _typeValue,
        dependents: _dependentsValue);
  }

  ResidentialForm copyWithPath(String? path) {
    return ResidentialForm(residential, form, path);
  }

  @override
  void updateValue(
    Residential value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ResidentialForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    Residential value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ResidentialForm(value, FormGroup({}), null)
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
        electricLightMeterControlName: FormControl<bool>(
            value: residential?.electricLightMeter,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        electricalCodeControlName: FormControl<String>(
            value: residential?.electricalCode,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        provinceControlName: FormControl<LocationModel>(
            value: residential?.province,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        cantonControlName: FormControl<LocationModel>(
            value: residential?.canton,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        parroquiaControlName: FormControl<LocationModel>(
            value: residential?.parroquia,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        mainStreetControlName: FormControl<String>(
            value: residential?.mainStreet,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        backStreetControlName: FormControl<String>(
            value: residential?.backStreet,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        housingTypeControlName: FormControl<ResidentialHousingType>(
            value: residential?.housingType,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        tenureHousingTypeAgreementControlName:
            FormControl<ResidentialTenureHousingTypeAgreemente>(
                value: residential?.tenureHousingTypeAgreement,
                validators: [requiredValidator],
                asyncValidators: [],
                asyncValidatorsDebounceTime: 250,
                disabled: false,
                touched: false),
        numberVillaBuildingControlName: FormControl<String>(
            value: residential?.numberVillaBuilding,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        floorNumberControlName: FormControl<String>(
            value: residential?.floorNumber,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        departmentNumberControlName: FormControl<String>(
            value: residential?.departmentNumber,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        typeControlName: FormControl<ResidenceType>(
            value: residential?.type,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        dependentsControlName: FormArray<Dependent>(
            residential?.dependents
                    .map((e) => FormControl<Dependent>(
                          value: e,
                          validators: [],
                          asyncValidators: [],
                          asyncValidatorsDebounceTime: 250,
                          disabled: false,
                        ))
                    .toList() ??
                [],
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveResidentialFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveResidentialFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ResidentialForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ResidentialForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, ResidentialForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveResidentialForm.of(context);

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

class ReactiveResidentialFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveResidentialFormFormGroupArrayBuilder({
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
      ResidentialForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ResidentialForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, ResidentialForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveResidentialForm.of(context);

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

class ReactiveDependentFormConsumer extends StatelessWidget {
  const ReactiveDependentFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, DependentForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDependentForm.of(context);

    if (formModel is! DependentForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class DependentFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const DependentFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final DependentForm form;
}

class ReactiveDependentForm extends StatelessWidget {
  const ReactiveDependentForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final DependentForm form;

  final WillPopCallback? onWillPop;

  static DependentForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<DependentFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        DependentFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as DependentFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return DependentFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class DependentFormBuilder extends StatefulWidget {
  const DependentFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Dependent? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, DependentForm formModel, Widget? child) builder;

  final void Function(BuildContext context, DependentForm formModel)? initState;

  @override
  _DependentFormBuilderState createState() => _DependentFormBuilderState();
}

class _DependentFormBuilderState extends State<DependentFormBuilder> {
  late FormGroup _form;

  late DependentForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = DependentForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant DependentFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = DependentForm(widget.model, _form, null);
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
    return ReactiveDependentForm(
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

class DependentForm implements FormModel<Dependent> {
  DependentForm(
    this.dependent,
    this.form,
    this.path,
  ) {}

  static String nuiDependentsControlName = "nuiDependents";

  static String relationshipControlName = "relationship";

  static String dateControlName = "date";

  static String nameControlName = "name";

  static String lastnameControlName = "lastname";

  static String stateControlName = "state";

  final Dependent? dependent;

  final FormGroup form;

  final String? path;

  String nuiDependentsControlPath() => pathBuilder(nuiDependentsControlName);
  String relationshipControlPath() => pathBuilder(relationshipControlName);
  String dateControlPath() => pathBuilder(dateControlName);
  String nameControlPath() => pathBuilder(nameControlName);
  String lastnameControlPath() => pathBuilder(lastnameControlName);
  String stateControlPath() => pathBuilder(stateControlName);
  String get _nuiDependentsValue => nuiDependentsControl.value as String;
  ResidentialDependentRelation get _relationshipValue =>
      relationshipControl.value as ResidentialDependentRelation;
  String get _dateValue => dateControl.value as String;
  String get _nameValue => nameControl.value as String;
  String get _lastnameValue => lastnameControl.value as String;
  Status get _stateValue => stateControl.value as Status;
  bool get containsNuiDependents {
    try {
      form.control(nuiDependentsControlPath());
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

  bool get containsDate {
    try {
      form.control(dateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLastname {
    try {
      form.control(lastnameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsState {
    try {
      form.control(stateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get nuiDependentsErrors => nuiDependentsControl.errors;
  Object? get relationshipErrors => relationshipControl.errors;
  Object? get dateErrors => dateControl.errors;
  Object? get nameErrors => nameControl.errors;
  Object? get lastnameErrors => lastnameControl.errors;
  Object? get stateErrors => stateControl.errors;
  void get nuiDependentsFocus => form.focus(nuiDependentsControlPath());
  void get relationshipFocus => form.focus(relationshipControlPath());
  void get dateFocus => form.focus(dateControlPath());
  void get nameFocus => form.focus(nameControlPath());
  void get lastnameFocus => form.focus(lastnameControlPath());
  void get stateFocus => form.focus(stateControlPath());
  void nuiDependentsValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nuiDependentsControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void relationshipValueUpdate(
    ResidentialDependentRelation value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    relationshipControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dateValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void lastnameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    lastnameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void stateValueUpdate(
    Status value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    stateControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nuiDependentsValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nuiDependentsControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void relationshipValuePatch(
    ResidentialDependentRelation value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    relationshipControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dateValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateControl.patchValue(value,
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

  void lastnameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    lastnameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void stateValuePatch(
    Status value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    stateControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nuiDependentsValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nuiDependentsControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void relationshipValueReset(
    ResidentialDependentRelation value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      relationshipControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void dateValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      dateControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void nameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void lastnameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      lastnameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void stateValueReset(
    Status value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      stateControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get nuiDependentsControl =>
      form.control(nuiDependentsControlPath()) as FormControl<String>;
  FormControl<ResidentialDependentRelation> get relationshipControl =>
      form.control(relationshipControlPath())
          as FormControl<ResidentialDependentRelation>;
  FormControl<String> get dateControl =>
      form.control(dateControlPath()) as FormControl<String>;
  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;
  FormControl<String> get lastnameControl =>
      form.control(lastnameControlPath()) as FormControl<String>;
  FormControl<Status> get stateControl =>
      form.control(stateControlPath()) as FormControl<Status>;
  void nuiDependentsSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nuiDependentsControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nuiDependentsControl.markAsEnabled(
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
      relationshipControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      relationshipControl.markAsEnabled(
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

  void lastnameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      lastnameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      lastnameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

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

  @override
  Dependent get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return Dependent(
        nuiDependents: _nuiDependentsValue,
        relationship: _relationshipValue,
        date: _dateValue,
        name: _nameValue,
        lastname: _lastnameValue,
        state: _stateValue);
  }

  DependentForm copyWithPath(String? path) {
    return DependentForm(dependent, form, path);
  }

  @override
  void updateValue(
    Dependent value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          DependentForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    Dependent value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value:
              DependentForm(value, FormGroup({}), null).formElements().rawValue,
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
        nuiDependentsControlName: FormControl<String>(
            value: dependent?.nuiDependents,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        relationshipControlName: FormControl<ResidentialDependentRelation>(
            value: dependent?.relationship,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        dateControlName: FormControl<String>(
            value: dependent?.date,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nameControlName: FormControl<String>(
            value: dependent?.name,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        lastnameControlName: FormControl<String>(
            value: dependent?.lastname,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        stateControlName: FormControl<Status>(
            value: dependent?.state,
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

class ReactiveDependentFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveDependentFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(DependentForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, DependentForm formModel)?
      builder;

  final Widget Function(
          BuildContext context, int i, T? item, DependentForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDependentForm.of(context);

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

class ReactiveDependentFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveDependentFormFormGroupArrayBuilder({
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
      DependentForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, DependentForm formModel)?
      builder;

  final Widget Function(
          BuildContext context, int i, V? item, DependentForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDependentForm.of(context);

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

class ReactiveAceptAgreementFormConsumer extends StatelessWidget {
  const ReactiveAceptAgreementFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, AceptAgreementForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAceptAgreementForm.of(context);

    if (formModel is! AceptAgreementForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class AceptAgreementFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const AceptAgreementFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final AceptAgreementForm form;
}

class ReactiveAceptAgreementForm extends StatelessWidget {
  const ReactiveAceptAgreementForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final AceptAgreementForm form;

  final WillPopCallback? onWillPop;

  static AceptAgreementForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              AceptAgreementFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        AceptAgreementFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as AceptAgreementFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return AceptAgreementFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class AceptAgreementFormBuilder extends StatefulWidget {
  const AceptAgreementFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final AceptAgreement? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, AceptAgreementForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, AceptAgreementForm formModel)?
      initState;

  @override
  _AceptAgreementFormBuilderState createState() =>
      _AceptAgreementFormBuilderState();
}

class _AceptAgreementFormBuilderState extends State<AceptAgreementFormBuilder> {
  late FormGroup _form;

  late AceptAgreementForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = AceptAgreementForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant AceptAgreementFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = AceptAgreementForm(widget.model, _form, null);
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
    return ReactiveAceptAgreementForm(
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

class AceptAgreementForm implements FormModel<AceptAgreement> {
  AceptAgreementForm(
    this.aceptAgreement,
    this.form,
    this.path,
  ) {}

  static String aceptControlName = "acept";

  final AceptAgreement? aceptAgreement;

  final FormGroup form;

  final String? path;

  String aceptControlPath() => pathBuilder(aceptControlName);
  bool get _aceptValue => aceptControl.value as bool;
  bool get containsAcept {
    try {
      form.control(aceptControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get aceptErrors => aceptControl.errors;
  void get aceptFocus => form.focus(aceptControlPath());
  void aceptValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    aceptControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void aceptValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    aceptControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void aceptValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      aceptControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<bool> get aceptControl =>
      form.control(aceptControlPath()) as FormControl<bool>;
  void aceptSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      aceptControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      aceptControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  AceptAgreement get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return AceptAgreement(acept: _aceptValue);
  }

  AceptAgreementForm copyWithPath(String? path) {
    return AceptAgreementForm(aceptAgreement, form, path);
  }

  @override
  void updateValue(
    AceptAgreement value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          AceptAgreementForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    AceptAgreement value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: AceptAgreementForm(value, FormGroup({}), null)
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
        aceptControlName: FormControl<bool>(
            value: aceptAgreement?.acept,
            validators: [trueValidator],
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

class ReactiveAceptAgreementFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveAceptAgreementFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(AceptAgreementForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      AceptAgreementForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, AceptAgreementForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAceptAgreementForm.of(context);

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

class ReactiveAceptAgreementFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveAceptAgreementFormFormGroupArrayBuilder({
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
      AceptAgreementForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      AceptAgreementForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, AceptAgreementForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAceptAgreementForm.of(context);

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

class ReactiveFirstStepResidenceModelFormConsumer extends StatelessWidget {
  const ReactiveFirstStepResidenceModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      FirstStepResidenceModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveFirstStepResidenceModelForm.of(context);

    if (formModel is! FirstStepResidenceModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class FirstStepResidenceModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const FirstStepResidenceModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final FirstStepResidenceModelForm form;
}

class ReactiveFirstStepResidenceModelForm extends StatelessWidget {
  const ReactiveFirstStepResidenceModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final FirstStepResidenceModelForm form;

  final WillPopCallback? onWillPop;

  static FirstStepResidenceModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              FirstStepResidenceModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        FirstStepResidenceModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as FirstStepResidenceModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return FirstStepResidenceModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class FirstStepResidenceModelFormBuilder extends StatefulWidget {
  const FirstStepResidenceModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final FirstStepResidenceModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      FirstStepResidenceModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, FirstStepResidenceModelForm formModel)? initState;

  @override
  _FirstStepResidenceModelFormBuilderState createState() =>
      _FirstStepResidenceModelFormBuilderState();
}

class _FirstStepResidenceModelFormBuilderState
    extends State<FirstStepResidenceModelFormBuilder> {
  late FormGroup _form;

  late FirstStepResidenceModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = FirstStepResidenceModelForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant FirstStepResidenceModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = FirstStepResidenceModelForm(widget.model, _form, null);
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
    return ReactiveFirstStepResidenceModelForm(
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

class FirstStepResidenceModelForm
    implements FormModel<FirstStepResidenceModel> {
  FirstStepResidenceModelForm(
    this.firstStepResidenceModel,
    this.form,
    this.path,
  ) {}

  static String provinceControlName = "province";

  static String cantonControlName = "canton";

  static String parroquiaControlName = "parroquia";

  static String mainStreetControlName = "mainStreet";

  static String backStreetControlName = "backStreet";

  final FirstStepResidenceModel? firstStepResidenceModel;

  final FormGroup form;

  final String? path;

  String provinceControlPath() => pathBuilder(provinceControlName);
  String cantonControlPath() => pathBuilder(cantonControlName);
  String parroquiaControlPath() => pathBuilder(parroquiaControlName);
  String mainStreetControlPath() => pathBuilder(mainStreetControlName);
  String backStreetControlPath() => pathBuilder(backStreetControlName);
  LocationModel get _provinceValue => provinceControl.value as LocationModel;
  LocationModel get _cantonValue => cantonControl.value as LocationModel;
  LocationModel get _parroquiaValue => parroquiaControl.value as LocationModel;
  String get _mainStreetValue => mainStreetControl.value as String;
  String get _backStreetValue => backStreetControl.value as String;
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

  bool get containsMainStreet {
    try {
      form.control(mainStreetControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsBackStreet {
    try {
      form.control(backStreetControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get provinceErrors => provinceControl.errors;
  Object? get cantonErrors => cantonControl.errors;
  Object? get parroquiaErrors => parroquiaControl.errors;
  Object? get mainStreetErrors => mainStreetControl.errors;
  Object? get backStreetErrors => backStreetControl.errors;
  void get provinceFocus => form.focus(provinceControlPath());
  void get cantonFocus => form.focus(cantonControlPath());
  void get parroquiaFocus => form.focus(parroquiaControlPath());
  void get mainStreetFocus => form.focus(mainStreetControlPath());
  void get backStreetFocus => form.focus(backStreetControlPath());
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

  void mainStreetValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    mainStreetControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void backStreetValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    backStreetControl.updateValue(value,
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

  void mainStreetValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    mainStreetControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void backStreetValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    backStreetControl.patchValue(value,
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
  void mainStreetValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      mainStreetControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void backStreetValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      backStreetControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<LocationModel> get provinceControl =>
      form.control(provinceControlPath()) as FormControl<LocationModel>;
  FormControl<LocationModel> get cantonControl =>
      form.control(cantonControlPath()) as FormControl<LocationModel>;
  FormControl<LocationModel> get parroquiaControl =>
      form.control(parroquiaControlPath()) as FormControl<LocationModel>;
  FormControl<String> get mainStreetControl =>
      form.control(mainStreetControlPath()) as FormControl<String>;
  FormControl<String> get backStreetControl =>
      form.control(backStreetControlPath()) as FormControl<String>;
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

  void mainStreetSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      mainStreetControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      mainStreetControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void backStreetSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      backStreetControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      backStreetControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  FirstStepResidenceModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return FirstStepResidenceModel(
        province: _provinceValue,
        canton: _cantonValue,
        parroquia: _parroquiaValue,
        mainStreet: _mainStreetValue,
        backStreet: _backStreetValue);
  }

  FirstStepResidenceModelForm copyWithPath(String? path) {
    return FirstStepResidenceModelForm(firstStepResidenceModel, form, path);
  }

  @override
  void updateValue(
    FirstStepResidenceModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          FirstStepResidenceModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    FirstStepResidenceModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: FirstStepResidenceModelForm(value, FormGroup({}), null)
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
            value: firstStepResidenceModel?.province,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        cantonControlName: FormControl<LocationModel>(
            value: firstStepResidenceModel?.canton,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        parroquiaControlName: FormControl<LocationModel>(
            value: firstStepResidenceModel?.parroquia,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        mainStreetControlName: FormControl<String>(
            value: firstStepResidenceModel?.mainStreet,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        backStreetControlName: FormControl<String>(
            value: firstStepResidenceModel?.backStreet,
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

class ReactiveFirstStepResidenceModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveFirstStepResidenceModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(FirstStepResidenceModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      FirstStepResidenceModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      FirstStepResidenceModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveFirstStepResidenceModelForm.of(context);

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

class ReactiveFirstStepResidenceModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveFirstStepResidenceModelFormFormGroupArrayBuilder({
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
      FirstStepResidenceModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      FirstStepResidenceModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      FirstStepResidenceModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveFirstStepResidenceModelForm.of(context);

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

class ReactiveSecondStepResidenceModelFormConsumer extends StatelessWidget {
  const ReactiveSecondStepResidenceModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      SecondStepResidenceModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSecondStepResidenceModelForm.of(context);

    if (formModel is! SecondStepResidenceModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class SecondStepResidenceModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const SecondStepResidenceModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final SecondStepResidenceModelForm form;
}

class ReactiveSecondStepResidenceModelForm extends StatelessWidget {
  const ReactiveSecondStepResidenceModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final SecondStepResidenceModelForm form;

  final WillPopCallback? onWillPop;

  static SecondStepResidenceModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              SecondStepResidenceModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        SecondStepResidenceModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as SecondStepResidenceModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return SecondStepResidenceModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class SecondStepResidenceModelFormBuilder extends StatefulWidget {
  const SecondStepResidenceModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final SecondStepResidenceModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      SecondStepResidenceModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, SecondStepResidenceModelForm formModel)? initState;

  @override
  _SecondStepResidenceModelFormBuilderState createState() =>
      _SecondStepResidenceModelFormBuilderState();
}

class _SecondStepResidenceModelFormBuilderState
    extends State<SecondStepResidenceModelFormBuilder> {
  late FormGroup _form;

  late SecondStepResidenceModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = SecondStepResidenceModelForm(widget.model, _form, null);

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
      covariant SecondStepResidenceModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = SecondStepResidenceModelForm(widget.model, _form, null);
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
    return ReactiveSecondStepResidenceModelForm(
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

class SecondStepResidenceModelForm
    implements FormModel<SecondStepResidenceModel> {
  SecondStepResidenceModelForm(
    this.secondStepResidenceModel,
    this.form,
    this.path,
  ) {}

  static String electricLightMeterControlName = "electricLightMeter";

  static String electricalCodeControlName = "electricalCode";

  static String housingTypeControlName = "housingType";

  static String tenureHousingTypeAgreementControlName =
      "tenureHousingTypeAgreement";

  static String numberVillaBuildingControlName = "numberVillaBuilding";

  static String floorNumberControlName = "floorNumber";

  static String departmentNumberControlName = "departmentNumber";

  static String typeControlName = "type";

  final SecondStepResidenceModel? secondStepResidenceModel;

  final FormGroup form;

  final String? path;

  String electricLightMeterControlPath() =>
      pathBuilder(electricLightMeterControlName);
  String electricalCodeControlPath() => pathBuilder(electricalCodeControlName);
  String housingTypeControlPath() => pathBuilder(housingTypeControlName);
  String tenureHousingTypeAgreementControlPath() =>
      pathBuilder(tenureHousingTypeAgreementControlName);
  String numberVillaBuildingControlPath() =>
      pathBuilder(numberVillaBuildingControlName);
  String floorNumberControlPath() => pathBuilder(floorNumberControlName);
  String departmentNumberControlPath() =>
      pathBuilder(departmentNumberControlName);
  String typeControlPath() => pathBuilder(typeControlName);
  bool get _electricLightMeterValue => electricLightMeterControl.value as bool;
  String get _electricalCodeValue => electricalCodeControl.value as String;
  ResidentialHousingType get _housingTypeValue =>
      housingTypeControl.value as ResidentialHousingType;
  ResidentialTenureHousingTypeAgreemente get _tenureHousingTypeAgreementValue =>
      tenureHousingTypeAgreementControl.value
          as ResidentialTenureHousingTypeAgreemente;
  String get _numberVillaBuildingValue =>
      numberVillaBuildingControl.value as String;
  String get _floorNumberValue => floorNumberControl.value as String;
  String get _departmentNumberValue => departmentNumberControl.value as String;
  ResidenceType get _typeValue => typeControl.value as ResidenceType;
  bool get containsElectricLightMeter {
    try {
      form.control(electricLightMeterControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsElectricalCode {
    try {
      form.control(electricalCodeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsHousingType {
    try {
      form.control(housingTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsTenureHousingTypeAgreement {
    try {
      form.control(tenureHousingTypeAgreementControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsNumberVillaBuilding {
    try {
      form.control(numberVillaBuildingControlPath());
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

  bool get containsDepartmentNumber {
    try {
      form.control(departmentNumberControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsType {
    try {
      form.control(typeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get electricLightMeterErrors => electricLightMeterControl.errors;
  Object? get electricalCodeErrors => electricalCodeControl.errors;
  Object? get housingTypeErrors => housingTypeControl.errors;
  Object? get tenureHousingTypeAgreementErrors =>
      tenureHousingTypeAgreementControl.errors;
  Object? get numberVillaBuildingErrors => numberVillaBuildingControl.errors;
  Object? get floorNumberErrors => floorNumberControl.errors;
  Object? get departmentNumberErrors => departmentNumberControl.errors;
  Object? get typeErrors => typeControl.errors;
  void get electricLightMeterFocus =>
      form.focus(electricLightMeterControlPath());
  void get electricalCodeFocus => form.focus(electricalCodeControlPath());
  void get housingTypeFocus => form.focus(housingTypeControlPath());
  void get tenureHousingTypeAgreementFocus =>
      form.focus(tenureHousingTypeAgreementControlPath());
  void get numberVillaBuildingFocus =>
      form.focus(numberVillaBuildingControlPath());
  void get floorNumberFocus => form.focus(floorNumberControlPath());
  void get departmentNumberFocus => form.focus(departmentNumberControlPath());
  void get typeFocus => form.focus(typeControlPath());
  void electricLightMeterValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    electricLightMeterControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void electricalCodeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    electricalCodeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void housingTypeValueUpdate(
    ResidentialHousingType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    housingTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void tenureHousingTypeAgreementValueUpdate(
    ResidentialTenureHousingTypeAgreemente value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    tenureHousingTypeAgreementControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void numberVillaBuildingValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    numberVillaBuildingControl.updateValue(value,
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

  void departmentNumberValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    departmentNumberControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void typeValueUpdate(
    ResidenceType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    typeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void electricLightMeterValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    electricLightMeterControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void electricalCodeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    electricalCodeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void housingTypeValuePatch(
    ResidentialHousingType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    housingTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void tenureHousingTypeAgreementValuePatch(
    ResidentialTenureHousingTypeAgreemente value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    tenureHousingTypeAgreementControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void numberVillaBuildingValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    numberVillaBuildingControl.patchValue(value,
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

  void departmentNumberValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    departmentNumberControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void typeValuePatch(
    ResidenceType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    typeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void electricLightMeterValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      electricLightMeterControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void electricalCodeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      electricalCodeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void housingTypeValueReset(
    ResidentialHousingType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      housingTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void tenureHousingTypeAgreementValueReset(
    ResidentialTenureHousingTypeAgreemente value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      tenureHousingTypeAgreementControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void numberVillaBuildingValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      numberVillaBuildingControl.reset(
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
  void departmentNumberValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      departmentNumberControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void typeValueReset(
    ResidenceType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      typeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<bool> get electricLightMeterControl =>
      form.control(electricLightMeterControlPath()) as FormControl<bool>;
  FormControl<String> get electricalCodeControl =>
      form.control(electricalCodeControlPath()) as FormControl<String>;
  FormControl<ResidentialHousingType> get housingTypeControl =>
      form.control(housingTypeControlPath())
          as FormControl<ResidentialHousingType>;
  FormControl<ResidentialTenureHousingTypeAgreemente>
      get tenureHousingTypeAgreementControl =>
          form.control(tenureHousingTypeAgreementControlPath())
              as FormControl<ResidentialTenureHousingTypeAgreemente>;
  FormControl<String> get numberVillaBuildingControl =>
      form.control(numberVillaBuildingControlPath()) as FormControl<String>;
  FormControl<String> get floorNumberControl =>
      form.control(floorNumberControlPath()) as FormControl<String>;
  FormControl<String> get departmentNumberControl =>
      form.control(departmentNumberControlPath()) as FormControl<String>;
  FormControl<ResidenceType> get typeControl =>
      form.control(typeControlPath()) as FormControl<ResidenceType>;
  void electricLightMeterSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      electricLightMeterControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      electricLightMeterControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void electricalCodeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      electricalCodeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      electricalCodeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void housingTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      housingTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      housingTypeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void tenureHousingTypeAgreementSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      tenureHousingTypeAgreementControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      tenureHousingTypeAgreementControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void numberVillaBuildingSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      numberVillaBuildingControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      numberVillaBuildingControl.markAsEnabled(
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

  void departmentNumberSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      departmentNumberControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      departmentNumberControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void typeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      typeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      typeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  SecondStepResidenceModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return SecondStepResidenceModel(
        electricLightMeter: _electricLightMeterValue,
        electricalCode: _electricalCodeValue,
        housingType: _housingTypeValue,
        tenureHousingTypeAgreement: _tenureHousingTypeAgreementValue,
        numberVillaBuilding: _numberVillaBuildingValue,
        floorNumber: _floorNumberValue,
        departmentNumber: _departmentNumberValue,
        type: _typeValue);
  }

  SecondStepResidenceModelForm copyWithPath(String? path) {
    return SecondStepResidenceModelForm(secondStepResidenceModel, form, path);
  }

  @override
  void updateValue(
    SecondStepResidenceModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          SecondStepResidenceModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    SecondStepResidenceModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: SecondStepResidenceModelForm(value, FormGroup({}), null)
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
        electricLightMeterControlName: FormControl<bool>(
            value: secondStepResidenceModel?.electricLightMeter,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        electricalCodeControlName: FormControl<String>(
            value: secondStepResidenceModel?.electricalCode,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        housingTypeControlName: FormControl<ResidentialHousingType>(
            value: secondStepResidenceModel?.housingType,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        tenureHousingTypeAgreementControlName:
            FormControl<ResidentialTenureHousingTypeAgreemente>(
                value: secondStepResidenceModel?.tenureHousingTypeAgreement,
                validators: [requiredValidator],
                asyncValidators: [],
                asyncValidatorsDebounceTime: 250,
                disabled: false,
                touched: false),
        numberVillaBuildingControlName: FormControl<String>(
            value: secondStepResidenceModel?.numberVillaBuilding,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        floorNumberControlName: FormControl<String>(
            value: secondStepResidenceModel?.floorNumber,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        departmentNumberControlName: FormControl<String>(
            value: secondStepResidenceModel?.departmentNumber,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        typeControlName: FormControl<ResidenceType>(
            value: secondStepResidenceModel?.type,
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

class ReactiveSecondStepResidenceModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveSecondStepResidenceModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(SecondStepResidenceModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      SecondStepResidenceModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      SecondStepResidenceModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSecondStepResidenceModelForm.of(context);

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

class ReactiveSecondStepResidenceModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveSecondStepResidenceModelFormFormGroupArrayBuilder({
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
      SecondStepResidenceModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      SecondStepResidenceModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      SecondStepResidenceModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSecondStepResidenceModelForm.of(context);

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

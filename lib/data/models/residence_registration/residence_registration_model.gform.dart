// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'residence_registration_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveResidenceRegistrationModelFormConsumer extends StatelessWidget {
  const ReactiveResidenceRegistrationModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ResidenceRegistrationModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveResidenceRegistrationModelForm.of(context);

    if (formModel is! ResidenceRegistrationModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ResidenceRegistrationModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ResidenceRegistrationModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ResidenceRegistrationModelForm form;
}

class ReactiveResidenceRegistrationModelForm extends StatelessWidget {
  const ReactiveResidenceRegistrationModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ResidenceRegistrationModelForm form;

  final WillPopCallback? onWillPop;

  static ResidenceRegistrationModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ResidenceRegistrationModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ResidenceRegistrationModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ResidenceRegistrationModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return ResidenceRegistrationModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ResidenceRegistrationModelFormBuilder extends StatefulWidget {
  const ResidenceRegistrationModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ResidenceRegistrationModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ResidenceRegistrationModelForm formModel, Widget? child) builder;

  final void Function(
          BuildContext context, ResidenceRegistrationModelForm formModel)?
      initState;

  @override
  _ResidenceRegistrationModelFormBuilderState createState() =>
      _ResidenceRegistrationModelFormBuilderState();
}

class _ResidenceRegistrationModelFormBuilderState
    extends State<ResidenceRegistrationModelFormBuilder> {
  late FormGroup _form;

  late ResidenceRegistrationModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = ResidenceRegistrationModelForm(widget.model, _form, null);

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
      covariant ResidenceRegistrationModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ResidenceRegistrationModelForm(widget.model, _form, null);
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
    return ReactiveResidenceRegistrationModelForm(
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

class ResidenceRegistrationModelForm
    implements FormModel<ResidenceRegistrationModel> {
  ResidenceRegistrationModelForm(
    this.residenceRegistrationModel,
    this.form,
    this.path,
  ) {}

  static String nationalElectricUnicCodeControlName =
      "nationalElectricUnicCode";

  static String haveElectricLightMeterControlName = "haveElectricLightMeter";

  static String phoneNumberControlName = "phoneNumber";

  static String emailAddressControlName = "emailAddress";

  static String observationsControlName = "observations";

  static String provinceControlName = "province";

  static String cantonControlName = "canton";

  static String parroquiaControlName = "parroquia";

  static String primaryStreetControlName = "primaryStreet";

  static String secondaryStreetControlName = "secondaryStreet";

  static String houseTypeControlName = "houseType";

  static String tenureControlName = "tenure";

  static String villageOrBuildingNumberControlName = "villageOrBuildingNumber";

  static String floorNumberControlName = "floorNumber";

  static String appartmentNumberControlName = "appartmentNumber";

  static String residenceTypeControlName = "residenceType";

  final ResidenceRegistrationModel? residenceRegistrationModel;

  final FormGroup form;

  final String? path;

  String nationalElectricUnicCodeControlPath() =>
      pathBuilder(nationalElectricUnicCodeControlName);
  String haveElectricLightMeterControlPath() =>
      pathBuilder(haveElectricLightMeterControlName);
  String phoneNumberControlPath() => pathBuilder(phoneNumberControlName);
  String emailAddressControlPath() => pathBuilder(emailAddressControlName);
  String observationsControlPath() => pathBuilder(observationsControlName);
  String provinceControlPath() => pathBuilder(provinceControlName);
  String cantonControlPath() => pathBuilder(cantonControlName);
  String parroquiaControlPath() => pathBuilder(parroquiaControlName);
  String primaryStreetControlPath() => pathBuilder(primaryStreetControlName);
  String secondaryStreetControlPath() =>
      pathBuilder(secondaryStreetControlName);
  String houseTypeControlPath() => pathBuilder(houseTypeControlName);
  String tenureControlPath() => pathBuilder(tenureControlName);
  String villageOrBuildingNumberControlPath() =>
      pathBuilder(villageOrBuildingNumberControlName);
  String floorNumberControlPath() => pathBuilder(floorNumberControlName);
  String appartmentNumberControlPath() =>
      pathBuilder(appartmentNumberControlName);
  String residenceTypeControlPath() => pathBuilder(residenceTypeControlName);
  int? get _nationalElectricUnicCodeValue =>
      nationalElectricUnicCodeControl?.value;
  bool get _haveElectricLightMeterValue =>
      haveElectricLightMeterControl.value as bool;
  String get _phoneNumberValue => phoneNumberControl.value as String;
  String get _emailAddressValue => emailAddressControl.value as String;
  String get _observationsValue => observationsControl.value as String;
  LocationModel get _provinceValue => provinceControl.value as LocationModel;
  String get _cantonValue => cantonControl.value as String;
  String get _parroquiaValue => parroquiaControl.value as String;
  String get _primaryStreetValue => primaryStreetControl.value as String;
  String get _secondaryStreetValue => secondaryStreetControl.value as String;
  String get _houseTypeValue => houseTypeControl.value as String;
  String get _tenureValue => tenureControl.value as String;
  String get _villageOrBuildingNumberValue =>
      villageOrBuildingNumberControl.value as String;
  String get _floorNumberValue => floorNumberControl.value as String;
  String get _appartmentNumberValue => appartmentNumberControl.value as String;
  String get _residenceTypeValue => residenceTypeControl.value as String;
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

  Object? get nationalElectricUnicCodeErrors =>
      nationalElectricUnicCodeControl?.errors;
  Object? get haveElectricLightMeterErrors =>
      haveElectricLightMeterControl.errors;
  Object? get phoneNumberErrors => phoneNumberControl.errors;
  Object? get emailAddressErrors => emailAddressControl.errors;
  Object? get observationsErrors => observationsControl.errors;
  Object? get provinceErrors => provinceControl.errors;
  Object? get cantonErrors => cantonControl.errors;
  Object? get parroquiaErrors => parroquiaControl.errors;
  Object? get primaryStreetErrors => primaryStreetControl.errors;
  Object? get secondaryStreetErrors => secondaryStreetControl.errors;
  Object? get houseTypeErrors => houseTypeControl.errors;
  Object? get tenureErrors => tenureControl.errors;
  Object? get villageOrBuildingNumberErrors =>
      villageOrBuildingNumberControl.errors;
  Object? get floorNumberErrors => floorNumberControl.errors;
  Object? get appartmentNumberErrors => appartmentNumberControl.errors;
  Object? get residenceTypeErrors => residenceTypeControl.errors;
  void get nationalElectricUnicCodeFocus =>
      form.focus(nationalElectricUnicCodeControlPath());
  void get haveElectricLightMeterFocus =>
      form.focus(haveElectricLightMeterControlPath());
  void get phoneNumberFocus => form.focus(phoneNumberControlPath());
  void get emailAddressFocus => form.focus(emailAddressControlPath());
  void get observationsFocus => form.focus(observationsControlPath());
  void get provinceFocus => form.focus(provinceControlPath());
  void get cantonFocus => form.focus(cantonControlPath());
  void get parroquiaFocus => form.focus(parroquiaControlPath());
  void get primaryStreetFocus => form.focus(primaryStreetControlPath());
  void get secondaryStreetFocus => form.focus(secondaryStreetControlPath());
  void get houseTypeFocus => form.focus(houseTypeControlPath());
  void get tenureFocus => form.focus(tenureControlPath());
  void get villageOrBuildingNumberFocus =>
      form.focus(villageOrBuildingNumberControlPath());
  void get floorNumberFocus => form.focus(floorNumberControlPath());
  void get appartmentNumberFocus => form.focus(appartmentNumberControlPath());
  void get residenceTypeFocus => form.focus(residenceTypeControlPath());
  void nationalElectricUnicCodeRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsNationalElectricUnicCode) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          nationalElectricUnicCodeControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            nationalElectricUnicCodeControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void nationalElectricUnicCodeValueUpdate(
    int? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nationalElectricUnicCodeControl?.updateValue(value,
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

  void provinceValueUpdate(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    provinceControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cantonValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cantonControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void parroquiaValueUpdate(
    String value, {
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

  void houseTypeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    houseTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void tenureValueUpdate(
    String value, {
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
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    residenceTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nationalElectricUnicCodeValuePatch(
    int? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nationalElectricUnicCodeControl?.patchValue(value,
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

  void provinceValuePatch(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    provinceControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cantonValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cantonControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void parroquiaValuePatch(
    String value, {
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

  void houseTypeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    houseTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void tenureValuePatch(
    String value, {
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
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    residenceTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nationalElectricUnicCodeValueReset(
    int? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nationalElectricUnicCodeControl?.reset(
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
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      cantonControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void parroquiaValueReset(
    String value, {
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
  void houseTypeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      houseTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void tenureValueReset(
    String value, {
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
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      residenceTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<int>? get nationalElectricUnicCodeControl =>
      containsNationalElectricUnicCode
          ? form.control(nationalElectricUnicCodeControlPath())
              as FormControl<int>?
          : null;
  FormControl<bool> get haveElectricLightMeterControl =>
      form.control(haveElectricLightMeterControlPath()) as FormControl<bool>;
  FormControl<String> get phoneNumberControl =>
      form.control(phoneNumberControlPath()) as FormControl<String>;
  FormControl<String> get emailAddressControl =>
      form.control(emailAddressControlPath()) as FormControl<String>;
  FormControl<String> get observationsControl =>
      form.control(observationsControlPath()) as FormControl<String>;
  FormControl<LocationModel> get provinceControl =>
      form.control(provinceControlPath()) as FormControl<LocationModel>;
  FormControl<String> get cantonControl =>
      form.control(cantonControlPath()) as FormControl<String>;
  FormControl<String> get parroquiaControl =>
      form.control(parroquiaControlPath()) as FormControl<String>;
  FormControl<String> get primaryStreetControl =>
      form.control(primaryStreetControlPath()) as FormControl<String>;
  FormControl<String> get secondaryStreetControl =>
      form.control(secondaryStreetControlPath()) as FormControl<String>;
  FormControl<String> get houseTypeControl =>
      form.control(houseTypeControlPath()) as FormControl<String>;
  FormControl<String> get tenureControl =>
      form.control(tenureControlPath()) as FormControl<String>;
  FormControl<String> get villageOrBuildingNumberControl =>
      form.control(villageOrBuildingNumberControlPath()) as FormControl<String>;
  FormControl<String> get floorNumberControl =>
      form.control(floorNumberControlPath()) as FormControl<String>;
  FormControl<String> get appartmentNumberControl =>
      form.control(appartmentNumberControlPath()) as FormControl<String>;
  FormControl<String> get residenceTypeControl =>
      form.control(residenceTypeControlPath()) as FormControl<String>;
  void nationalElectricUnicCodeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nationalElectricUnicCodeControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nationalElectricUnicCodeControl?.markAsEnabled(
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
  ResidenceRegistrationModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ResidenceRegistrationModel(
        nationalElectricUnicCode: _nationalElectricUnicCodeValue,
        haveElectricLightMeter: _haveElectricLightMeterValue,
        phoneNumber: _phoneNumberValue,
        emailAddress: _emailAddressValue,
        observations: _observationsValue,
        province: _provinceValue,
        canton: _cantonValue,
        parroquia: _parroquiaValue,
        primaryStreet: _primaryStreetValue,
        secondaryStreet: _secondaryStreetValue,
        houseType: _houseTypeValue,
        tenure: _tenureValue,
        villageOrBuildingNumber: _villageOrBuildingNumberValue,
        floorNumber: _floorNumberValue,
        appartmentNumber: _appartmentNumberValue,
        residenceType: _residenceTypeValue);
  }

  ResidenceRegistrationModelForm copyWithPath(String? path) {
    return ResidenceRegistrationModelForm(
        residenceRegistrationModel, form, path);
  }

  @override
  void updateValue(
    ResidenceRegistrationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ResidenceRegistrationModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ResidenceRegistrationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ResidenceRegistrationModelForm(value, FormGroup({}), null)
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
        nationalElectricUnicCodeControlName: FormControl<int>(
            value: residenceRegistrationModel?.nationalElectricUnicCode,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        haveElectricLightMeterControlName: FormControl<bool>(
            value: residenceRegistrationModel?.haveElectricLightMeter,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        phoneNumberControlName: FormControl<String>(
            value: residenceRegistrationModel?.phoneNumber,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailAddressControlName: FormControl<String>(
            value: residenceRegistrationModel?.emailAddress,
            validators: [requiredValidator, emailValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        observationsControlName: FormControl<String>(
            value: residenceRegistrationModel?.observations,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        provinceControlName: FormControl<LocationModel>(
            value: residenceRegistrationModel?.province,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        cantonControlName: FormControl<String>(
            value: residenceRegistrationModel?.canton,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        parroquiaControlName: FormControl<String>(
            value: residenceRegistrationModel?.parroquia,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        primaryStreetControlName: FormControl<String>(
            value: residenceRegistrationModel?.primaryStreet,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        secondaryStreetControlName: FormControl<String>(
            value: residenceRegistrationModel?.secondaryStreet,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        houseTypeControlName: FormControl<String>(
            value: residenceRegistrationModel?.houseType,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        tenureControlName: FormControl<String>(
            value: residenceRegistrationModel?.tenure,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        villageOrBuildingNumberControlName: FormControl<String>(
            value: residenceRegistrationModel?.villageOrBuildingNumber,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        floorNumberControlName: FormControl<String>(
            value: residenceRegistrationModel?.floorNumber,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        appartmentNumberControlName: FormControl<String>(
            value: residenceRegistrationModel?.appartmentNumber,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        residenceTypeControlName: FormControl<String>(
            value: residenceRegistrationModel?.residenceType,
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

class ReactiveResidenceRegistrationModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveResidenceRegistrationModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ResidenceRegistrationModelForm formModel)?
      control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ResidenceRegistrationModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ResidenceRegistrationModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveResidenceRegistrationModelForm.of(context);

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

class ReactiveResidenceRegistrationModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveResidenceRegistrationModelFormFormGroupArrayBuilder({
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
      ResidenceRegistrationModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ResidenceRegistrationModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ResidenceRegistrationModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveResidenceRegistrationModelForm.of(context);

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

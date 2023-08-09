// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'personal_validation_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactivePersonalValidationModelFormConsumer extends StatelessWidget {
  const ReactivePersonalValidationModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      PersonalValidationModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePersonalValidationModelForm.of(context);

    if (formModel is! PersonalValidationModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class PersonalValidationModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const PersonalValidationModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final PersonalValidationModelForm form;
}

class ReactivePersonalValidationModelForm extends StatelessWidget {
  const ReactivePersonalValidationModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final PersonalValidationModelForm form;

  final WillPopCallback? onWillPop;

  static PersonalValidationModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              PersonalValidationModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        PersonalValidationModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as PersonalValidationModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return PersonalValidationModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class PersonalValidationModelFormBuilder extends StatefulWidget {
  const PersonalValidationModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final PersonalValidationModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      PersonalValidationModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, PersonalValidationModelForm formModel)? initState;

  @override
  _PersonalValidationModelFormBuilderState createState() =>
      _PersonalValidationModelFormBuilderState();
}

class _PersonalValidationModelFormBuilderState
    extends State<PersonalValidationModelFormBuilder> {
  late PersonalValidationModelForm _formModel;

  @override
  void initState() {
    _formModel = PersonalValidationModelForm(widget.model,
        PersonalValidationModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant PersonalValidationModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = PersonalValidationModelForm(widget.model,
          PersonalValidationModelForm.formElements(widget.model), null);

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
    return ReactivePersonalValidationModelForm(
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

class PersonalValidationModelForm
    implements FormModel<PersonalValidationModel> {
  PersonalValidationModelForm(
    this.personalValidationModel,
    this.form,
    this.path,
  ) {}

  static const String firstNameControlName = "firstName";

  static const String lastNameControlName = "lastName";

  static const String genderControlName = "gender";

  static const String maritalStatusTypeControlName = "maritalStatusType";

  static const String birthDateControlName = "birthDate";

  static const String nationalityControlName = "nationality";

  static const String birthControlName = "birth";

  static const String fatherNuiControlName = "fatherNui";

  static const String fatherNameControlName = "fatherName";

  static const String fatherNationalityControlName = "fatherNationality";

  static const String motherNuiControlName = "motherNui";

  static const String motherNameControlName = "motherName";

  static const String motherNationalityControlName = "motherNationality";

  static const String marriageControlName = "marriage";

  static const String genderInfoControlName = "genderInfo";

  static const String acceptTermsControlName = "acceptTerms";

  final PersonalValidationModel? personalValidationModel;

  final FormGroup form;

  final String? path;

  String firstNameControlPath() => pathBuilder(firstNameControlName);
  String lastNameControlPath() => pathBuilder(lastNameControlName);
  String genderControlPath() => pathBuilder(genderControlName);
  String maritalStatusTypeControlPath() =>
      pathBuilder(maritalStatusTypeControlName);
  String birthDateControlPath() => pathBuilder(birthDateControlName);
  String nationalityControlPath() => pathBuilder(nationalityControlName);
  String birthControlPath() => pathBuilder(birthControlName);
  String fatherNuiControlPath() => pathBuilder(fatherNuiControlName);
  String fatherNameControlPath() => pathBuilder(fatherNameControlName);
  String fatherNationalityControlPath() =>
      pathBuilder(fatherNationalityControlName);
  String motherNuiControlPath() => pathBuilder(motherNuiControlName);
  String motherNameControlPath() => pathBuilder(motherNameControlName);
  String motherNationalityControlPath() =>
      pathBuilder(motherNationalityControlName);
  String marriageControlPath() => pathBuilder(marriageControlName);
  String genderInfoControlPath() => pathBuilder(genderInfoControlName);
  String acceptTermsControlPath() => pathBuilder(acceptTermsControlName);
  String? get _firstNameValue => firstNameControl?.value;
  String? get _lastNameValue => lastNameControl?.value;
  PersonalValidationGenderType? get _genderValue => genderControl?.value;
  PersonalValidationMaritalStatusType? get _maritalStatusTypeValue =>
      maritalStatusTypeControl?.value;
  DateTime? get _birthDateValue => birthDateControl?.value;
  String? get _nationalityValue => nationalityControl?.value;
  BirthModel? get _birthValue => birthControl?.value;
  String? get _fatherNuiValue => fatherNuiControl?.value;
  String? get _fatherNameValue => fatherNameControl?.value;
  String? get _fatherNationalityValue => fatherNationalityControl?.value;
  String? get _motherNuiValue => motherNuiControl?.value;
  String? get _motherNameValue => motherNameControl?.value;
  String? get _motherNationalityValue => motherNationalityControl?.value;
  MarriageModel? get _marriageValue => marriageControl?.value;
  GenderModel? get _genderInfoValue => genderInfoControl?.value;
  bool? get _acceptTermsValue => acceptTermsControl?.value;
  bool get containsFirstName {
    try {
      form.control(firstNameControlPath());
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

  bool get containsGender {
    try {
      form.control(genderControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsMaritalStatusType {
    try {
      form.control(maritalStatusTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsBirthDate {
    try {
      form.control(birthDateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsNationality {
    try {
      form.control(nationalityControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsBirth {
    try {
      form.control(birthControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsFatherNui {
    try {
      form.control(fatherNuiControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsFatherName {
    try {
      form.control(fatherNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsFatherNationality {
    try {
      form.control(fatherNationalityControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsMotherNui {
    try {
      form.control(motherNuiControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsMotherName {
    try {
      form.control(motherNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsMotherNationality {
    try {
      form.control(motherNationalityControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsMarriage {
    try {
      form.control(marriageControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsGenderInfo {
    try {
      form.control(genderInfoControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAcceptTerms {
    try {
      form.control(acceptTermsControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get firstNameErrors => firstNameControl?.errors;
  Object? get lastNameErrors => lastNameControl?.errors;
  Object? get genderErrors => genderControl?.errors;
  Object? get maritalStatusTypeErrors => maritalStatusTypeControl?.errors;
  Object? get birthDateErrors => birthDateControl?.errors;
  Object? get nationalityErrors => nationalityControl?.errors;
  Object? get birthErrors => birthControl?.errors;
  Object? get fatherNuiErrors => fatherNuiControl?.errors;
  Object? get fatherNameErrors => fatherNameControl?.errors;
  Object? get fatherNationalityErrors => fatherNationalityControl?.errors;
  Object? get motherNuiErrors => motherNuiControl?.errors;
  Object? get motherNameErrors => motherNameControl?.errors;
  Object? get motherNationalityErrors => motherNationalityControl?.errors;
  Object? get marriageErrors => marriageControl?.errors;
  Object? get genderInfoErrors => genderInfoControl?.errors;
  Object? get acceptTermsErrors => acceptTermsControl?.errors;
  void get firstNameFocus => form.focus(firstNameControlPath());
  void get lastNameFocus => form.focus(lastNameControlPath());
  void get genderFocus => form.focus(genderControlPath());
  void get maritalStatusTypeFocus => form.focus(maritalStatusTypeControlPath());
  void get birthDateFocus => form.focus(birthDateControlPath());
  void get nationalityFocus => form.focus(nationalityControlPath());
  void get birthFocus => form.focus(birthControlPath());
  void get fatherNuiFocus => form.focus(fatherNuiControlPath());
  void get fatherNameFocus => form.focus(fatherNameControlPath());
  void get fatherNationalityFocus => form.focus(fatherNationalityControlPath());
  void get motherNuiFocus => form.focus(motherNuiControlPath());
  void get motherNameFocus => form.focus(motherNameControlPath());
  void get motherNationalityFocus => form.focus(motherNationalityControlPath());
  void get marriageFocus => form.focus(marriageControlPath());
  void get genderInfoFocus => form.focus(genderInfoControlPath());
  void get acceptTermsFocus => form.focus(acceptTermsControlPath());
  void firstNameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsFirstName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          firstNameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            firstNameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void lastNameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsLastName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          lastNameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            lastNameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void genderRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsGender) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          genderControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            genderControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void maritalStatusTypeRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsMaritalStatusType) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          maritalStatusTypeControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            maritalStatusTypeControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void birthDateRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsBirthDate) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          birthDateControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            birthDateControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void nationalityRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsNationality) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          nationalityControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            nationalityControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void birthRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsBirth) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          birthControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            birthControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void fatherNuiRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsFatherNui) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          fatherNuiControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            fatherNuiControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void fatherNameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsFatherName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          fatherNameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            fatherNameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void fatherNationalityRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsFatherNationality) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          fatherNationalityControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            fatherNationalityControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void motherNuiRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsMotherNui) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          motherNuiControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            motherNuiControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void motherNameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsMotherName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          motherNameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            motherNameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void motherNationalityRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsMotherNationality) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          motherNationalityControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            motherNationalityControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void marriageRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsMarriage) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          marriageControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            marriageControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void genderInfoRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsGenderInfo) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          genderInfoControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            genderInfoControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void acceptTermsRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsAcceptTerms) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          acceptTermsControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            acceptTermsControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void firstNameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    firstNameControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void lastNameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    lastNameControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void genderValueUpdate(
    PersonalValidationGenderType? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    genderControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void maritalStatusTypeValueUpdate(
    PersonalValidationMaritalStatusType? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    maritalStatusTypeControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthDateValueUpdate(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthDateControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nationalityValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nationalityControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthValueUpdate(
    BirthModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fatherNuiValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fatherNuiControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fatherNameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fatherNameControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fatherNationalityValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fatherNationalityControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void motherNuiValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    motherNuiControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void motherNameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    motherNameControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void motherNationalityValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    motherNationalityControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void marriageValueUpdate(
    MarriageModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    marriageControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void genderInfoValueUpdate(
    GenderModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    genderInfoControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void acceptTermsValueUpdate(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    acceptTermsControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void firstNameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    firstNameControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void lastNameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    lastNameControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void genderValuePatch(
    PersonalValidationGenderType? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    genderControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void maritalStatusTypeValuePatch(
    PersonalValidationMaritalStatusType? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    maritalStatusTypeControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthDateValuePatch(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthDateControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nationalityValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nationalityControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthValuePatch(
    BirthModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fatherNuiValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fatherNuiControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fatherNameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fatherNameControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fatherNationalityValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fatherNationalityControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void motherNuiValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    motherNuiControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void motherNameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    motherNameControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void motherNationalityValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    motherNationalityControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void marriageValuePatch(
    MarriageModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    marriageControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void genderInfoValuePatch(
    GenderModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    genderInfoControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void acceptTermsValuePatch(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    acceptTermsControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void firstNameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      firstNameControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void lastNameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      lastNameControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void genderValueReset(
    PersonalValidationGenderType? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      genderControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void maritalStatusTypeValueReset(
    PersonalValidationMaritalStatusType? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      maritalStatusTypeControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void birthDateValueReset(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      birthDateControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void nationalityValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nationalityControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void birthValueReset(
    BirthModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      birthControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void fatherNuiValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      fatherNuiControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void fatherNameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      fatherNameControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void fatherNationalityValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      fatherNationalityControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void motherNuiValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      motherNuiControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void motherNameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      motherNameControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void motherNationalityValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      motherNationalityControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void marriageValueReset(
    MarriageModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      marriageControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void genderInfoValueReset(
    GenderModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      genderInfoControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void acceptTermsValueReset(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      acceptTermsControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String>? get firstNameControl => containsFirstName
      ? form.control(firstNameControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get lastNameControl => containsLastName
      ? form.control(lastNameControlPath()) as FormControl<String>?
      : null;
  FormControl<PersonalValidationGenderType>? get genderControl => containsGender
      ? form.control(genderControlPath())
          as FormControl<PersonalValidationGenderType>?
      : null;
  FormControl<PersonalValidationMaritalStatusType>?
      get maritalStatusTypeControl => containsMaritalStatusType
          ? form.control(maritalStatusTypeControlPath())
              as FormControl<PersonalValidationMaritalStatusType>?
          : null;
  FormControl<DateTime>? get birthDateControl => containsBirthDate
      ? form.control(birthDateControlPath()) as FormControl<DateTime>?
      : null;
  FormControl<String>? get nationalityControl => containsNationality
      ? form.control(nationalityControlPath()) as FormControl<String>?
      : null;
  FormControl<BirthModel>? get birthControl => containsBirth
      ? form.control(birthControlPath()) as FormControl<BirthModel>?
      : null;
  FormControl<String>? get fatherNuiControl => containsFatherNui
      ? form.control(fatherNuiControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get fatherNameControl => containsFatherName
      ? form.control(fatherNameControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get fatherNationalityControl => containsFatherNationality
      ? form.control(fatherNationalityControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get motherNuiControl => containsMotherNui
      ? form.control(motherNuiControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get motherNameControl => containsMotherName
      ? form.control(motherNameControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get motherNationalityControl => containsMotherNationality
      ? form.control(motherNationalityControlPath()) as FormControl<String>?
      : null;
  FormControl<MarriageModel>? get marriageControl => containsMarriage
      ? form.control(marriageControlPath()) as FormControl<MarriageModel>?
      : null;
  FormControl<GenderModel>? get genderInfoControl => containsGenderInfo
      ? form.control(genderInfoControlPath()) as FormControl<GenderModel>?
      : null;
  FormControl<bool>? get acceptTermsControl => containsAcceptTerms
      ? form.control(acceptTermsControlPath()) as FormControl<bool>?
      : null;
  void firstNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      firstNameControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      firstNameControl?.markAsEnabled(
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
      lastNameControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      lastNameControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void genderSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      genderControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      genderControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void maritalStatusTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      maritalStatusTypeControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      maritalStatusTypeControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void birthDateSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      birthDateControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      birthDateControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void nationalitySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nationalityControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nationalityControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void birthSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      birthControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      birthControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void fatherNuiSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      fatherNuiControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      fatherNuiControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void fatherNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      fatherNameControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      fatherNameControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void fatherNationalitySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      fatherNationalityControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      fatherNationalityControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void motherNuiSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      motherNuiControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      motherNuiControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void motherNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      motherNameControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      motherNameControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void motherNationalitySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      motherNationalityControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      motherNationalityControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void marriageSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      marriageControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      marriageControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void genderInfoSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      genderInfoControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      genderInfoControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void acceptTermsSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      acceptTermsControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      acceptTermsControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  PersonalValidationModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'PersonalValidationModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return PersonalValidationModel(
        firstName: _firstNameValue,
        lastName: _lastNameValue,
        gender: _genderValue,
        maritalStatusType: _maritalStatusTypeValue,
        birthDate: _birthDateValue,
        nationality: _nationalityValue,
        birth: _birthValue,
        fatherNui: _fatherNuiValue,
        fatherName: _fatherNameValue,
        fatherNationality: _fatherNationalityValue,
        motherNui: _motherNuiValue,
        motherName: _motherNameValue,
        motherNationality: _motherNationalityValue,
        marriage: _marriageValue,
        genderInfo: _genderInfoValue,
        acceptTerms: _acceptTermsValue);
  }

  PersonalValidationModelForm copyWithPath(String? path) {
    return PersonalValidationModelForm(personalValidationModel, form, path);
  }

  @override
  void updateValue(
    PersonalValidationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PersonalValidationModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    PersonalValidationModel? value,
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
          PersonalValidationModel? personalValidationModel) =>
      FormGroup({
        firstNameControlName: FormControl<String>(
            value: personalValidationModel?.firstName,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        lastNameControlName: FormControl<String>(
            value: personalValidationModel?.lastName,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        genderControlName: FormControl<PersonalValidationGenderType>(
            value: personalValidationModel?.gender,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        maritalStatusTypeControlName:
            FormControl<PersonalValidationMaritalStatusType>(
                value: personalValidationModel?.maritalStatusType,
                validators: [],
                asyncValidators: [],
                asyncValidatorsDebounceTime: 250,
                disabled: false,
                touched: false),
        birthDateControlName: FormControl<DateTime>(
            value: personalValidationModel?.birthDate,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nationalityControlName: FormControl<String>(
            value: personalValidationModel?.nationality,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        birthControlName: FormControl<BirthModel>(
            value: personalValidationModel?.birth,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        fatherNuiControlName: FormControl<String>(
            value: personalValidationModel?.fatherNui,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        fatherNameControlName: FormControl<String>(
            value: personalValidationModel?.fatherName,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        fatherNationalityControlName: FormControl<String>(
            value: personalValidationModel?.fatherNationality,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        motherNuiControlName: FormControl<String>(
            value: personalValidationModel?.motherNui,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        motherNameControlName: FormControl<String>(
            value: personalValidationModel?.motherName,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        motherNationalityControlName: FormControl<String>(
            value: personalValidationModel?.motherNationality,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        marriageControlName: FormControl<MarriageModel>(
            value: personalValidationModel?.marriage,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        genderInfoControlName: FormControl<GenderModel>(
            value: personalValidationModel?.genderInfo,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        acceptTermsControlName: FormControl<bool>(
            value: personalValidationModel?.acceptTerms,
            validators: [
              (control) => requiredTrueValidator(control as FormControl<bool>)
            ],
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

class ReactivePersonalValidationModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactivePersonalValidationModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(PersonalValidationModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PersonalValidationModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      PersonalValidationModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePersonalValidationModelForm.of(context);

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

class ReactivePersonalValidationModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactivePersonalValidationModelFormFormGroupArrayBuilder({
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
      PersonalValidationModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PersonalValidationModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      PersonalValidationModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePersonalValidationModelForm.of(context);

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

class ReactiveBirthModelFormConsumer extends StatelessWidget {
  const ReactiveBirthModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, BirthModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveBirthModelForm.of(context);

    if (formModel is! BirthModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class BirthModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const BirthModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final BirthModelForm form;
}

class ReactiveBirthModelForm extends StatelessWidget {
  const ReactiveBirthModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final BirthModelForm form;

  final WillPopCallback? onWillPop;

  static BirthModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<BirthModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        BirthModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as BirthModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return BirthModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class BirthModelFormBuilder extends StatefulWidget {
  const BirthModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final BirthModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, BirthModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context, BirthModelForm formModel)?
      initState;

  @override
  _BirthModelFormBuilderState createState() => _BirthModelFormBuilderState();
}

class _BirthModelFormBuilderState extends State<BirthModelFormBuilder> {
  late BirthModelForm _formModel;

  @override
  void initState() {
    _formModel = BirthModelForm(
        widget.model, BirthModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant BirthModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = BirthModelForm(
          widget.model, BirthModelForm.formElements(widget.model), null);

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
    return ReactiveBirthModelForm(
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

class BirthModelForm implements FormModel<BirthModel> {
  BirthModelForm(
    this.birthModel,
    this.form,
    this.path,
  ) {}

  static const String birthPlaceControlName = "birthPlace";

  static const String inscriptionPlaceControlName = "inscriptionPlace";

  static const String inscriptionYearControlName = "inscriptionYear";

  static const String inscriptionDateControlName = "inscriptionDate";

  static const String volumeControlName = "volume";

  static const String pageControlName = "page";

  static const String recordControlName = "record";

  static const String birthClassControlName = "birthClass";

  final BirthModel? birthModel;

  final FormGroup form;

  final String? path;

  String birthPlaceControlPath() => pathBuilder(birthPlaceControlName);
  String inscriptionPlaceControlPath() =>
      pathBuilder(inscriptionPlaceControlName);
  String inscriptionYearControlPath() =>
      pathBuilder(inscriptionYearControlName);
  String inscriptionDateControlPath() =>
      pathBuilder(inscriptionDateControlName);
  String volumeControlPath() => pathBuilder(volumeControlName);
  String pageControlPath() => pathBuilder(pageControlName);
  String recordControlPath() => pathBuilder(recordControlName);
  String birthClassControlPath() => pathBuilder(birthClassControlName);
  String? get _birthPlaceValue => birthPlaceControl?.value;
  String? get _inscriptionPlaceValue => inscriptionPlaceControl?.value;
  String? get _inscriptionYearValue => inscriptionYearControl?.value;
  DateTime? get _inscriptionDateValue => inscriptionDateControl?.value;
  String? get _volumeValue => volumeControl?.value;
  String? get _pageValue => pageControl?.value;
  String? get _recordValue => recordControl?.value;
  String? get _birthClassValue => birthClassControl?.value;
  bool get containsBirthPlace {
    try {
      form.control(birthPlaceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsInscriptionPlace {
    try {
      form.control(inscriptionPlaceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsInscriptionYear {
    try {
      form.control(inscriptionYearControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsInscriptionDate {
    try {
      form.control(inscriptionDateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsVolume {
    try {
      form.control(volumeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPage {
    try {
      form.control(pageControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsRecord {
    try {
      form.control(recordControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsBirthClass {
    try {
      form.control(birthClassControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get birthPlaceErrors => birthPlaceControl?.errors;
  Object? get inscriptionPlaceErrors => inscriptionPlaceControl?.errors;
  Object? get inscriptionYearErrors => inscriptionYearControl?.errors;
  Object? get inscriptionDateErrors => inscriptionDateControl?.errors;
  Object? get volumeErrors => volumeControl?.errors;
  Object? get pageErrors => pageControl?.errors;
  Object? get recordErrors => recordControl?.errors;
  Object? get birthClassErrors => birthClassControl?.errors;
  void get birthPlaceFocus => form.focus(birthPlaceControlPath());
  void get inscriptionPlaceFocus => form.focus(inscriptionPlaceControlPath());
  void get inscriptionYearFocus => form.focus(inscriptionYearControlPath());
  void get inscriptionDateFocus => form.focus(inscriptionDateControlPath());
  void get volumeFocus => form.focus(volumeControlPath());
  void get pageFocus => form.focus(pageControlPath());
  void get recordFocus => form.focus(recordControlPath());
  void get birthClassFocus => form.focus(birthClassControlPath());
  void birthPlaceRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsBirthPlace) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          birthPlaceControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            birthPlaceControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void inscriptionPlaceRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsInscriptionPlace) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          inscriptionPlaceControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            inscriptionPlaceControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void inscriptionYearRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsInscriptionYear) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          inscriptionYearControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            inscriptionYearControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void inscriptionDateRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsInscriptionDate) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          inscriptionDateControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            inscriptionDateControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void volumeRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsVolume) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          volumeControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            volumeControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void pageRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPage) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          pageControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            pageControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void recordRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsRecord) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          recordControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            recordControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void birthClassRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsBirthClass) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          birthClassControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            birthClassControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void birthPlaceValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthPlaceControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void inscriptionPlaceValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    inscriptionPlaceControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void inscriptionYearValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    inscriptionYearControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void inscriptionDateValueUpdate(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    inscriptionDateControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void volumeValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    volumeControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void pageValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    pageControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void recordValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    recordControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthClassValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthClassControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthPlaceValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthPlaceControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void inscriptionPlaceValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    inscriptionPlaceControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void inscriptionYearValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    inscriptionYearControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void inscriptionDateValuePatch(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    inscriptionDateControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void volumeValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    volumeControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void pageValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    pageControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void recordValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    recordControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthClassValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthClassControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthPlaceValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      birthPlaceControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void inscriptionPlaceValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      inscriptionPlaceControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void inscriptionYearValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      inscriptionYearControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void inscriptionDateValueReset(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      inscriptionDateControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void volumeValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      volumeControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void pageValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      pageControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void recordValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      recordControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void birthClassValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      birthClassControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String>? get birthPlaceControl => containsBirthPlace
      ? form.control(birthPlaceControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get inscriptionPlaceControl => containsInscriptionPlace
      ? form.control(inscriptionPlaceControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get inscriptionYearControl => containsInscriptionYear
      ? form.control(inscriptionYearControlPath()) as FormControl<String>?
      : null;
  FormControl<DateTime>? get inscriptionDateControl => containsInscriptionDate
      ? form.control(inscriptionDateControlPath()) as FormControl<DateTime>?
      : null;
  FormControl<String>? get volumeControl => containsVolume
      ? form.control(volumeControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get pageControl => containsPage
      ? form.control(pageControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get recordControl => containsRecord
      ? form.control(recordControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get birthClassControl => containsBirthClass
      ? form.control(birthClassControlPath()) as FormControl<String>?
      : null;
  void birthPlaceSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      birthPlaceControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      birthPlaceControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void inscriptionPlaceSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      inscriptionPlaceControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      inscriptionPlaceControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void inscriptionYearSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      inscriptionYearControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      inscriptionYearControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void inscriptionDateSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      inscriptionDateControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      inscriptionDateControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void volumeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      volumeControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      volumeControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void pageSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      pageControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      pageControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void recordSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      recordControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      recordControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void birthClassSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      birthClassControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      birthClassControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  BirthModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'BirthModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return BirthModel(
        birthPlace: _birthPlaceValue,
        inscriptionPlace: _inscriptionPlaceValue,
        inscriptionYear: _inscriptionYearValue,
        inscriptionDate: _inscriptionDateValue,
        volume: _volumeValue,
        page: _pageValue,
        record: _recordValue,
        birthClass: _birthClassValue);
  }

  BirthModelForm copyWithPath(String? path) {
    return BirthModelForm(birthModel, form, path);
  }

  @override
  void updateValue(
    BirthModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(BirthModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    BirthModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(BirthModel? birthModel) => FormGroup({
        birthPlaceControlName: FormControl<String>(
            value: birthModel?.birthPlace,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        inscriptionPlaceControlName: FormControl<String>(
            value: birthModel?.inscriptionPlace,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        inscriptionYearControlName: FormControl<String>(
            value: birthModel?.inscriptionYear,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        inscriptionDateControlName: FormControl<DateTime>(
            value: birthModel?.inscriptionDate,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        volumeControlName: FormControl<String>(
            value: birthModel?.volume,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        pageControlName: FormControl<String>(
            value: birthModel?.page,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        recordControlName: FormControl<String>(
            value: birthModel?.record,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        birthClassControlName: FormControl<String>(
            value: birthModel?.birthClass,
            validators: [],
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

class ReactiveBirthModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveBirthModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(BirthModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      BirthModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, BirthModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveBirthModelForm.of(context);

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

class ReactiveBirthModelFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveBirthModelFormFormGroupArrayBuilder({
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
      BirthModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      BirthModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, BirthModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveBirthModelForm.of(context);

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

class ReactiveMarriageModelFormConsumer extends StatelessWidget {
  const ReactiveMarriageModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, MarriageModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMarriageModelForm.of(context);

    if (formModel is! MarriageModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class MarriageModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const MarriageModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final MarriageModelForm form;
}

class ReactiveMarriageModelForm extends StatelessWidget {
  const ReactiveMarriageModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final MarriageModelForm form;

  final WillPopCallback? onWillPop;

  static MarriageModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              MarriageModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        MarriageModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as MarriageModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return MarriageModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class MarriageModelFormBuilder extends StatefulWidget {
  const MarriageModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final MarriageModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, MarriageModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context, MarriageModelForm formModel)?
      initState;

  @override
  _MarriageModelFormBuilderState createState() =>
      _MarriageModelFormBuilderState();
}

class _MarriageModelFormBuilderState extends State<MarriageModelFormBuilder> {
  late MarriageModelForm _formModel;

  @override
  void initState() {
    _formModel = MarriageModelForm(
        widget.model, MarriageModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant MarriageModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = MarriageModelForm(
          widget.model, MarriageModelForm.formElements(widget.model), null);

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
    return ReactiveMarriageModelForm(
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

class MarriageModelForm implements FormModel<MarriageModel> {
  MarriageModelForm(
    this.marriageModel,
    this.form,
    this.path,
  ) {}

  static const String marriagePlaceControlName = "marriagePlace";

  static const String marriageDateControlName = "marriageDate";

  static const String marriageVolumeControlName = "marriageVolume";

  static const String marriagePageControlName = "marriagePage";

  static const String marriageRecordControlName = "marriageRecord";

  static const String marriageClassControlName = "marriageClass";

  static const String spouseNuiControlName = "spouseNui";

  static const String spouseNameControlName = "spouseName";

  final MarriageModel? marriageModel;

  final FormGroup form;

  final String? path;

  String marriagePlaceControlPath() => pathBuilder(marriagePlaceControlName);
  String marriageDateControlPath() => pathBuilder(marriageDateControlName);
  String marriageVolumeControlPath() => pathBuilder(marriageVolumeControlName);
  String marriagePageControlPath() => pathBuilder(marriagePageControlName);
  String marriageRecordControlPath() => pathBuilder(marriageRecordControlName);
  String marriageClassControlPath() => pathBuilder(marriageClassControlName);
  String spouseNuiControlPath() => pathBuilder(spouseNuiControlName);
  String spouseNameControlPath() => pathBuilder(spouseNameControlName);
  String? get _marriagePlaceValue => marriagePlaceControl?.value;
  DateTime? get _marriageDateValue => marriageDateControl?.value;
  String? get _marriageVolumeValue => marriageVolumeControl?.value;
  String? get _marriagePageValue => marriagePageControl?.value;
  String? get _marriageRecordValue => marriageRecordControl?.value;
  String? get _marriageClassValue => marriageClassControl?.value;
  String? get _spouseNuiValue => spouseNuiControl?.value;
  String? get _spouseNameValue => spouseNameControl?.value;
  bool get containsMarriagePlace {
    try {
      form.control(marriagePlaceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsMarriageDate {
    try {
      form.control(marriageDateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsMarriageVolume {
    try {
      form.control(marriageVolumeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsMarriagePage {
    try {
      form.control(marriagePageControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsMarriageRecord {
    try {
      form.control(marriageRecordControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsMarriageClass {
    try {
      form.control(marriageClassControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSpouseNui {
    try {
      form.control(spouseNuiControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSpouseName {
    try {
      form.control(spouseNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get marriagePlaceErrors => marriagePlaceControl?.errors;
  Object? get marriageDateErrors => marriageDateControl?.errors;
  Object? get marriageVolumeErrors => marriageVolumeControl?.errors;
  Object? get marriagePageErrors => marriagePageControl?.errors;
  Object? get marriageRecordErrors => marriageRecordControl?.errors;
  Object? get marriageClassErrors => marriageClassControl?.errors;
  Object? get spouseNuiErrors => spouseNuiControl?.errors;
  Object? get spouseNameErrors => spouseNameControl?.errors;
  void get marriagePlaceFocus => form.focus(marriagePlaceControlPath());
  void get marriageDateFocus => form.focus(marriageDateControlPath());
  void get marriageVolumeFocus => form.focus(marriageVolumeControlPath());
  void get marriagePageFocus => form.focus(marriagePageControlPath());
  void get marriageRecordFocus => form.focus(marriageRecordControlPath());
  void get marriageClassFocus => form.focus(marriageClassControlPath());
  void get spouseNuiFocus => form.focus(spouseNuiControlPath());
  void get spouseNameFocus => form.focus(spouseNameControlPath());
  void marriagePlaceRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsMarriagePlace) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          marriagePlaceControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            marriagePlaceControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void marriageDateRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsMarriageDate) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          marriageDateControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            marriageDateControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void marriageVolumeRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsMarriageVolume) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          marriageVolumeControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            marriageVolumeControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void marriagePageRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsMarriagePage) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          marriagePageControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            marriagePageControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void marriageRecordRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsMarriageRecord) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          marriageRecordControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            marriageRecordControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void marriageClassRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsMarriageClass) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          marriageClassControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            marriageClassControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void spouseNuiRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsSpouseNui) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          spouseNuiControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            spouseNuiControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void spouseNameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsSpouseName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          spouseNameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            spouseNameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void marriagePlaceValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    marriagePlaceControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void marriageDateValueUpdate(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    marriageDateControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void marriageVolumeValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    marriageVolumeControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void marriagePageValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    marriagePageControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void marriageRecordValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    marriageRecordControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void marriageClassValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    marriageClassControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void spouseNuiValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    spouseNuiControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void spouseNameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    spouseNameControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void marriagePlaceValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    marriagePlaceControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void marriageDateValuePatch(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    marriageDateControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void marriageVolumeValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    marriageVolumeControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void marriagePageValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    marriagePageControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void marriageRecordValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    marriageRecordControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void marriageClassValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    marriageClassControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void spouseNuiValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    spouseNuiControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void spouseNameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    spouseNameControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void marriagePlaceValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      marriagePlaceControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void marriageDateValueReset(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      marriageDateControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void marriageVolumeValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      marriageVolumeControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void marriagePageValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      marriagePageControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void marriageRecordValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      marriageRecordControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void marriageClassValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      marriageClassControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void spouseNuiValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      spouseNuiControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void spouseNameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      spouseNameControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String>? get marriagePlaceControl => containsMarriagePlace
      ? form.control(marriagePlaceControlPath()) as FormControl<String>?
      : null;
  FormControl<DateTime>? get marriageDateControl => containsMarriageDate
      ? form.control(marriageDateControlPath()) as FormControl<DateTime>?
      : null;
  FormControl<String>? get marriageVolumeControl => containsMarriageVolume
      ? form.control(marriageVolumeControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get marriagePageControl => containsMarriagePage
      ? form.control(marriagePageControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get marriageRecordControl => containsMarriageRecord
      ? form.control(marriageRecordControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get marriageClassControl => containsMarriageClass
      ? form.control(marriageClassControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get spouseNuiControl => containsSpouseNui
      ? form.control(spouseNuiControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get spouseNameControl => containsSpouseName
      ? form.control(spouseNameControlPath()) as FormControl<String>?
      : null;
  void marriagePlaceSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      marriagePlaceControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      marriagePlaceControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void marriageDateSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      marriageDateControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      marriageDateControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void marriageVolumeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      marriageVolumeControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      marriageVolumeControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void marriagePageSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      marriagePageControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      marriagePageControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void marriageRecordSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      marriageRecordControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      marriageRecordControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void marriageClassSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      marriageClassControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      marriageClassControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void spouseNuiSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      spouseNuiControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      spouseNuiControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void spouseNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      spouseNameControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      spouseNameControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  MarriageModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'MarriageModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return MarriageModel(
        marriagePlace: _marriagePlaceValue,
        marriageDate: _marriageDateValue,
        marriageVolume: _marriageVolumeValue,
        marriagePage: _marriagePageValue,
        marriageRecord: _marriageRecordValue,
        marriageClass: _marriageClassValue,
        spouseNui: _spouseNuiValue,
        spouseName: _spouseNameValue);
  }

  MarriageModelForm copyWithPath(String? path) {
    return MarriageModelForm(marriageModel, form, path);
  }

  @override
  void updateValue(
    MarriageModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(MarriageModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    MarriageModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(MarriageModel? marriageModel) => FormGroup({
        marriagePlaceControlName: FormControl<String>(
            value: marriageModel?.marriagePlace,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        marriageDateControlName: FormControl<DateTime>(
            value: marriageModel?.marriageDate,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        marriageVolumeControlName: FormControl<String>(
            value: marriageModel?.marriageVolume,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        marriagePageControlName: FormControl<String>(
            value: marriageModel?.marriagePage,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        marriageRecordControlName: FormControl<String>(
            value: marriageModel?.marriageRecord,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        marriageClassControlName: FormControl<String>(
            value: marriageModel?.marriageClass,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        spouseNuiControlName: FormControl<String>(
            value: marriageModel?.spouseNui,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        spouseNameControlName: FormControl<String>(
            value: marriageModel?.spouseName,
            validators: [],
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

class ReactiveMarriageModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveMarriageModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(MarriageModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      MarriageModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, MarriageModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMarriageModelForm.of(context);

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

class ReactiveMarriageModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveMarriageModelFormFormGroupArrayBuilder({
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
      MarriageModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      MarriageModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, MarriageModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMarriageModelForm.of(context);

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

class ReactiveGenderModelFormConsumer extends StatelessWidget {
  const ReactiveGenderModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, GenderModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGenderModelForm.of(context);

    if (formModel is! GenderModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class GenderModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const GenderModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final GenderModelForm form;
}

class ReactiveGenderModelForm extends StatelessWidget {
  const ReactiveGenderModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final GenderModelForm form;

  final WillPopCallback? onWillPop;

  static GenderModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              GenderModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        GenderModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as GenderModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return GenderModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class GenderModelFormBuilder extends StatefulWidget {
  const GenderModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final GenderModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, GenderModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context, GenderModelForm formModel)?
      initState;

  @override
  _GenderModelFormBuilderState createState() => _GenderModelFormBuilderState();
}

class _GenderModelFormBuilderState extends State<GenderModelFormBuilder> {
  late GenderModelForm _formModel;

  @override
  void initState() {
    _formModel = GenderModelForm(
        widget.model, GenderModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant GenderModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = GenderModelForm(
          widget.model, GenderModelForm.formElements(widget.model), null);

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
    return ReactiveGenderModelForm(
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

class GenderModelForm implements FormModel<GenderModel> {
  GenderModelForm(
    this.genderModel,
    this.form,
    this.path,
  ) {}

  static const String genderControlName = "gender";

  static const String inscriptionDateControlName = "inscriptionDate";

  static const String inscriptionPlaceControlName = "inscriptionPlace";

  final GenderModel? genderModel;

  final FormGroup form;

  final String? path;

  String genderControlPath() => pathBuilder(genderControlName);
  String inscriptionDateControlPath() =>
      pathBuilder(inscriptionDateControlName);
  String inscriptionPlaceControlPath() =>
      pathBuilder(inscriptionPlaceControlName);
  String? get _genderValue => genderControl?.value;
  DateTime? get _inscriptionDateValue => inscriptionDateControl?.value;
  String? get _inscriptionPlaceValue => inscriptionPlaceControl?.value;
  bool get containsGender {
    try {
      form.control(genderControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsInscriptionDate {
    try {
      form.control(inscriptionDateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsInscriptionPlace {
    try {
      form.control(inscriptionPlaceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get genderErrors => genderControl?.errors;
  Object? get inscriptionDateErrors => inscriptionDateControl?.errors;
  Object? get inscriptionPlaceErrors => inscriptionPlaceControl?.errors;
  void get genderFocus => form.focus(genderControlPath());
  void get inscriptionDateFocus => form.focus(inscriptionDateControlPath());
  void get inscriptionPlaceFocus => form.focus(inscriptionPlaceControlPath());
  void genderRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsGender) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          genderControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            genderControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void inscriptionDateRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsInscriptionDate) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          inscriptionDateControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            inscriptionDateControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void inscriptionPlaceRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsInscriptionPlace) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          inscriptionPlaceControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            inscriptionPlaceControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void genderValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    genderControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void inscriptionDateValueUpdate(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    inscriptionDateControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void inscriptionPlaceValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    inscriptionPlaceControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void genderValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    genderControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void inscriptionDateValuePatch(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    inscriptionDateControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void inscriptionPlaceValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    inscriptionPlaceControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void genderValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      genderControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void inscriptionDateValueReset(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      inscriptionDateControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void inscriptionPlaceValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      inscriptionPlaceControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String>? get genderControl => containsGender
      ? form.control(genderControlPath()) as FormControl<String>?
      : null;
  FormControl<DateTime>? get inscriptionDateControl => containsInscriptionDate
      ? form.control(inscriptionDateControlPath()) as FormControl<DateTime>?
      : null;
  FormControl<String>? get inscriptionPlaceControl => containsInscriptionPlace
      ? form.control(inscriptionPlaceControlPath()) as FormControl<String>?
      : null;
  void genderSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      genderControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      genderControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void inscriptionDateSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      inscriptionDateControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      inscriptionDateControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void inscriptionPlaceSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      inscriptionPlaceControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      inscriptionPlaceControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  GenderModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'GenderModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return GenderModel(
        gender: _genderValue,
        inscriptionDate: _inscriptionDateValue,
        inscriptionPlace: _inscriptionPlaceValue);
  }

  GenderModelForm copyWithPath(String? path) {
    return GenderModelForm(genderModel, form, path);
  }

  @override
  void updateValue(
    GenderModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(GenderModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    GenderModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(GenderModel? genderModel) => FormGroup({
        genderControlName: FormControl<String>(
            value: genderModel?.gender,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        inscriptionDateControlName: FormControl<DateTime>(
            value: genderModel?.inscriptionDate,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        inscriptionPlaceControlName: FormControl<String>(
            value: genderModel?.inscriptionPlace,
            validators: [],
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

class ReactiveGenderModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveGenderModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(GenderModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      GenderModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, GenderModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGenderModelForm.of(context);

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

class ReactiveGenderModelFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveGenderModelFormFormGroupArrayBuilder({
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
      GenderModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      GenderModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, GenderModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGenderModelForm.of(context);

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

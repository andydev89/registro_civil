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

  static const String acceptTermsControlName = "acceptTerms";

  final PersonalValidationModel? personalValidationModel;

  final FormGroup form;

  final String? path;

  String firstNameControlPath() => pathBuilder(firstNameControlName);
  String lastNameControlPath() => pathBuilder(lastNameControlName);
  String genderControlPath() => pathBuilder(genderControlName);
  String maritalStatusTypeControlPath() =>
      pathBuilder(maritalStatusTypeControlName);
  String acceptTermsControlPath() => pathBuilder(acceptTermsControlName);
  String? get _firstNameValue => firstNameControl?.value;
  String? get _lastNameValue => lastNameControl?.value;
  PersonalValidationGenderType? get _genderValue => genderControl?.value;
  PersonalValidationMaritalStatusType? get _maritalStatusTypeValue =>
      maritalStatusTypeControl?.value;
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
  Object? get acceptTermsErrors => acceptTermsControl?.errors;
  void get firstNameFocus => form.focus(firstNameControlPath());
  void get lastNameFocus => form.focus(lastNameControlPath());
  void get genderFocus => form.focus(genderControlPath());
  void get maritalStatusTypeFocus => form.focus(maritalStatusTypeControlPath());
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

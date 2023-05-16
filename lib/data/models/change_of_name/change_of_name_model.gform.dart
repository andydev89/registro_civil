// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'change_of_name_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveChangeOfNameModelFormConsumer extends StatelessWidget {
  const ReactiveChangeOfNameModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, ChangeOfNameModelForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveChangeOfNameModelForm.of(context);

    if (formModel is! ChangeOfNameModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ChangeOfNameModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ChangeOfNameModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ChangeOfNameModelForm form;
}

class ReactiveChangeOfNameModelForm extends StatelessWidget {
  const ReactiveChangeOfNameModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ChangeOfNameModelForm form;

  final WillPopCallback? onWillPop;

  static ChangeOfNameModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ChangeOfNameModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ChangeOfNameModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ChangeOfNameModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeOfNameModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ChangeOfNameModelFormBuilder extends StatefulWidget {
  const ChangeOfNameModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ChangeOfNameModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, ChangeOfNameModelForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, ChangeOfNameModelForm formModel)?
      initState;

  @override
  _ChangeOfNameModelFormBuilderState createState() =>
      _ChangeOfNameModelFormBuilderState();
}

class _ChangeOfNameModelFormBuilderState
    extends State<ChangeOfNameModelFormBuilder> {
  late FormGroup _form;

  late ChangeOfNameModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = ChangeOfNameModelForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant ChangeOfNameModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ChangeOfNameModelForm(widget.model, _form, null);
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
    return ReactiveChangeOfNameModelForm(
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

class ChangeOfNameModelForm implements FormModel<ChangeOfNameModel> {
  ChangeOfNameModelForm(
    this.changeOfNameModel,
    this.form,
    this.path,
  ) {}

  static String changeOfNameTypeControlName = "changeOfNameType";

  static String agencyControlName = "agency";

  static String firstNameControlName = "firstName";

  static String secondNameControlName = "secondName";

  static String resultingNameControlName = "resultingName";

  static String observationsControlName = "observations";

  static String documentControlName = "document";

  final ChangeOfNameModel? changeOfNameModel;

  final FormGroup form;

  final String? path;

  String changeOfNameTypeControlPath() =>
      pathBuilder(changeOfNameTypeControlName);
  String agencyControlPath() => pathBuilder(agencyControlName);
  String firstNameControlPath() => pathBuilder(firstNameControlName);
  String secondNameControlPath() => pathBuilder(secondNameControlName);
  String resultingNameControlPath() => pathBuilder(resultingNameControlName);
  String observationsControlPath() => pathBuilder(observationsControlName);
  String documentControlPath() => pathBuilder(documentControlName);
  ChangeOfNameType get _changeOfNameTypeValue =>
      changeOfNameTypeControl.value as ChangeOfNameType;
  AgencyModel? get _agencyValue => agencyControl?.value;
  String get _firstNameValue => firstNameControl.value as String;
  String get _secondNameValue => secondNameControl.value as String;
  String? get _resultingNameValue => resultingNameControl?.value;
  String? get _observationsValue => observationsControl?.value;
  String get _documentValue => documentControl.value as String;
  bool get containsChangeOfNameType {
    try {
      form.control(changeOfNameTypeControlPath());
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

  bool get containsFirstName {
    try {
      form.control(firstNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSecondName {
    try {
      form.control(secondNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsResultingName {
    try {
      form.control(resultingNameControlPath());
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

  bool get containsDocument {
    try {
      form.control(documentControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get changeOfNameTypeErrors => changeOfNameTypeControl.errors;
  Object? get agencyErrors => agencyControl?.errors;
  Object? get firstNameErrors => firstNameControl.errors;
  Object? get secondNameErrors => secondNameControl.errors;
  Object? get resultingNameErrors => resultingNameControl?.errors;
  Object? get observationsErrors => observationsControl?.errors;
  Object? get documentErrors => documentControl.errors;
  void get changeOfNameTypeFocus => form.focus(changeOfNameTypeControlPath());
  void get agencyFocus => form.focus(agencyControlPath());
  void get firstNameFocus => form.focus(firstNameControlPath());
  void get secondNameFocus => form.focus(secondNameControlPath());
  void get resultingNameFocus => form.focus(resultingNameControlPath());
  void get observationsFocus => form.focus(observationsControlPath());
  void get documentFocus => form.focus(documentControlPath());
  void agencyRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsAgency) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          agencyControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            agencyControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void resultingNameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsResultingName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          resultingNameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            resultingNameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void observationsRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsObservations) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          observationsControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            observationsControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void changeOfNameTypeValueUpdate(
    ChangeOfNameType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    changeOfNameTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void agencyValueUpdate(
    AgencyModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    agencyControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void firstNameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    firstNameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void secondNameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    secondNameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void resultingNameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    resultingNameControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void observationsValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    observationsControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void documentValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    documentControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void changeOfNameTypeValuePatch(
    ChangeOfNameType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    changeOfNameTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void agencyValuePatch(
    AgencyModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    agencyControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void firstNameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    firstNameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void secondNameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    secondNameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void resultingNameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    resultingNameControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void observationsValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    observationsControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void documentValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    documentControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void changeOfNameTypeValueReset(
    ChangeOfNameType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      changeOfNameTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void agencyValueReset(
    AgencyModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      agencyControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void firstNameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      firstNameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void secondNameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      secondNameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void resultingNameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      resultingNameControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void observationsValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      observationsControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void documentValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      documentControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<ChangeOfNameType> get changeOfNameTypeControl =>
      form.control(changeOfNameTypeControlPath())
          as FormControl<ChangeOfNameType>;
  FormControl<AgencyModel>? get agencyControl => containsAgency
      ? form.control(agencyControlPath()) as FormControl<AgencyModel>?
      : null;
  FormControl<String> get firstNameControl =>
      form.control(firstNameControlPath()) as FormControl<String>;
  FormControl<String> get secondNameControl =>
      form.control(secondNameControlPath()) as FormControl<String>;
  FormControl<String>? get resultingNameControl => containsResultingName
      ? form.control(resultingNameControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get observationsControl => containsObservations
      ? form.control(observationsControlPath()) as FormControl<String>?
      : null;
  FormControl<String> get documentControl =>
      form.control(documentControlPath()) as FormControl<String>;
  void changeOfNameTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      changeOfNameTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      changeOfNameTypeControl.markAsEnabled(
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
      agencyControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      agencyControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void firstNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      firstNameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      firstNameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void secondNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      secondNameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      secondNameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void resultingNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      resultingNameControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      resultingNameControl?.markAsEnabled(
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
      observationsControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      observationsControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void documentSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      documentControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      documentControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ChangeOfNameModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ChangeOfNameModel(
        nui: changeOfNameModel?.nui,
        changeOfNameType: _changeOfNameTypeValue,
        agency: _agencyValue,
        firstName: _firstNameValue,
        secondName: _secondNameValue,
        resultingName: _resultingNameValue,
        observations: _observationsValue,
        document: _documentValue);
  }

  ChangeOfNameModelForm copyWithPath(String? path) {
    return ChangeOfNameModelForm(changeOfNameModel, form, path);
  }

  @override
  void updateValue(
    ChangeOfNameModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ChangeOfNameModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ChangeOfNameModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ChangeOfNameModelForm(value, FormGroup({}), null)
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
        changeOfNameTypeControlName: FormControl<ChangeOfNameType>(
            value: changeOfNameModel?.changeOfNameType,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        agencyControlName: FormControl<AgencyModel>(
            value: changeOfNameModel?.agency,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        firstNameControlName: FormControl<String>(
            value: changeOfNameModel?.firstName,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        secondNameControlName: FormControl<String>(
            value: changeOfNameModel?.secondName,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        resultingNameControlName: FormControl<String>(
            value: changeOfNameModel?.resultingName,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        observationsControlName: FormControl<String>(
            value: changeOfNameModel?.observations,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        documentControlName: FormControl<String>(
            value: changeOfNameModel?.document,
            validators: [
              (control) => requiredValidator(control as FormControl<String>)
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

class ReactiveChangeOfNameModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveChangeOfNameModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ChangeOfNameModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ChangeOfNameModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, ChangeOfNameModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveChangeOfNameModelForm.of(context);

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

class ReactiveChangeOfNameModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveChangeOfNameModelFormFormGroupArrayBuilder({
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
      ChangeOfNameModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ChangeOfNameModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, ChangeOfNameModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveChangeOfNameModelForm.of(context);

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

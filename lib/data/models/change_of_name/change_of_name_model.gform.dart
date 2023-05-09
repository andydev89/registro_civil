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

  static String changeOfNametypeControlName = "changeOfNametype";

  static String agencyControlName = "agency";

  static String name1ControlName = "name1";

  static String name2ControlName = "name2";

  static String resultingNameControlName = "resultingName";

  static String documentControlName = "document";

  static String observationsControlName = "observations";

  final ChangeOfNameModel? changeOfNameModel;

  final FormGroup form;

  final String? path;

  String changeOfNametypeControlPath() =>
      pathBuilder(changeOfNametypeControlName);
  String agencyControlPath() => pathBuilder(agencyControlName);
  String name1ControlPath() => pathBuilder(name1ControlName);
  String name2ControlPath() => pathBuilder(name2ControlName);
  String resultingNameControlPath() => pathBuilder(resultingNameControlName);
  String documentControlPath() => pathBuilder(documentControlName);
  String observationsControlPath() => pathBuilder(observationsControlName);
  String get _changeOfNametypeValue => changeOfNametypeControl.value as String;
  AgencyModel get _agencyValue => agencyControl.value as AgencyModel;
  String get _name1Value => name1Control.value as String;
  String get _name2Value => name2Control.value as String;
  String get _resultingNameValue => resultingNameControl.value as String;
  String get _documentValue => documentControl.value as String;
  String get _observationsValue => observationsControl.value as String;
  bool get containsChangeOfNametype {
    try {
      form.control(changeOfNametypeControlPath());
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

  bool get containsName1 {
    try {
      form.control(name1ControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsName2 {
    try {
      form.control(name2ControlPath());
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

  bool get containsDocument {
    try {
      form.control(documentControlPath());
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

  Object? get changeOfNametypeErrors => changeOfNametypeControl.errors;
  Object? get agencyErrors => agencyControl.errors;
  Object? get name1Errors => name1Control.errors;
  Object? get name2Errors => name2Control.errors;
  Object? get resultingNameErrors => resultingNameControl.errors;
  Object? get documentErrors => documentControl.errors;
  Object? get observationsErrors => observationsControl.errors;
  void get changeOfNametypeFocus => form.focus(changeOfNametypeControlPath());
  void get agencyFocus => form.focus(agencyControlPath());
  void get name1Focus => form.focus(name1ControlPath());
  void get name2Focus => form.focus(name2ControlPath());
  void get resultingNameFocus => form.focus(resultingNameControlPath());
  void get documentFocus => form.focus(documentControlPath());
  void get observationsFocus => form.focus(observationsControlPath());
  void changeOfNametypeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    changeOfNametypeControl.updateValue(value,
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

  void name1ValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    name1Control.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void name2ValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    name2Control.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void resultingNameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    resultingNameControl.updateValue(value,
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

  void observationsValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    observationsControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void changeOfNametypeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    changeOfNametypeControl.patchValue(value,
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

  void name1ValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    name1Control.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void name2ValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    name2Control.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void resultingNameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    resultingNameControl.patchValue(value,
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

  void observationsValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    observationsControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void changeOfNametypeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      changeOfNametypeControl.reset(
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
  void name1ValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      name1Control.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void name2ValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      name2Control.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void resultingNameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      resultingNameControl.reset(
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
  void observationsValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      observationsControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get changeOfNametypeControl =>
      form.control(changeOfNametypeControlPath()) as FormControl<String>;
  FormControl<AgencyModel> get agencyControl =>
      form.control(agencyControlPath()) as FormControl<AgencyModel>;
  FormControl<String> get name1Control =>
      form.control(name1ControlPath()) as FormControl<String>;
  FormControl<String> get name2Control =>
      form.control(name2ControlPath()) as FormControl<String>;
  FormControl<String> get resultingNameControl =>
      form.control(resultingNameControlPath()) as FormControl<String>;
  FormControl<String> get documentControl =>
      form.control(documentControlPath()) as FormControl<String>;
  FormControl<String> get observationsControl =>
      form.control(observationsControlPath()) as FormControl<String>;
  void changeOfNametypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      changeOfNametypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      changeOfNametypeControl.markAsEnabled(
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

  void name1SetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      name1Control.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      name1Control.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void name2SetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      name2Control.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      name2Control.markAsEnabled(
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
      resultingNameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      resultingNameControl.markAsEnabled(
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
  ChangeOfNameModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ChangeOfNameModel(
        changeOfNametype: _changeOfNametypeValue,
        agency: _agencyValue,
        name1: _name1Value,
        name2: _name2Value,
        resultingName: _resultingNameValue,
        document: _documentValue,
        observations: _observationsValue);
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
        changeOfNametypeControlName: FormControl<String>(
            value: changeOfNameModel?.changeOfNametype,
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
        name1ControlName: FormControl<String>(
            value: changeOfNameModel?.name1,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        name2ControlName: FormControl<String>(
            value: changeOfNameModel?.name2,
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
        documentControlName: FormControl<String>(
            value: changeOfNameModel?.document,
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

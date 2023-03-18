// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'register_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveNuiModelFormConsumer extends StatelessWidget {
  const ReactiveNuiModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, NuiModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNuiModelForm.of(context);

    if (formModel is! NuiModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class NuiModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const NuiModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final NuiModelForm form;
}

class ReactiveNuiModelForm extends StatelessWidget {
  const ReactiveNuiModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final NuiModelForm form;

  final WillPopCallback? onWillPop;

  static NuiModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<NuiModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        NuiModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as NuiModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return NuiModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class NuiModelFormBuilder extends StatefulWidget {
  const NuiModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final NuiModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, NuiModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context, NuiModelForm formModel)? initState;

  @override
  _NuiModelFormBuilderState createState() => _NuiModelFormBuilderState();
}

class _NuiModelFormBuilderState extends State<NuiModelFormBuilder> {
  late FormGroup _form;

  late NuiModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = NuiModelForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant NuiModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = NuiModelForm(widget.model, _form, null);
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
    return ReactiveNuiModelForm(
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

class NuiModelForm implements FormModel<NuiModel> {
  NuiModelForm(
    this.nuiModel,
    this.form,
    this.path,
  ) {}

  static String nuiControlName = "nui";

  final NuiModel? nuiModel;

  final FormGroup form;

  final String? path;

  String nuiControlPath() => pathBuilder(nuiControlName);
  String get _nuiValue => nuiControl.value as String;
  bool get containsNui {
    try {
      form.control(nuiControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get nuiErrors => nuiControl.errors;
  void get nuiFocus => form.focus(nuiControlPath());
  void nuiValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nuiControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nuiValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nuiControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nuiValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nuiControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get nuiControl =>
      form.control(nuiControlPath()) as FormControl<String>;
  void nuiSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nuiControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nuiControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  NuiModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return NuiModel(_nuiValue);
  }

  NuiModelForm copyWithPath(String? path) {
    return NuiModelForm(nuiModel, form, path);
  }

  @override
  void updateValue(
    NuiModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          NuiModelForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    NuiModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value:
              NuiModelForm(value, FormGroup({}), null).formElements().rawValue,
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
        nuiControlName: FormControl<String>(
            value: nuiModel?.nui,
            validators: [
              requiredValidator,
              ecuadorDniValidator,
              lengthDniValidatorValidator
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

class ReactiveNuiModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveNuiModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(NuiModelForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, NuiModelForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, NuiModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNuiModelForm.of(context);

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

class ReactiveNuiModelFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveNuiModelFormFormGroupArrayBuilder({
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
      NuiModelForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, NuiModelForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, V? item, NuiModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNuiModelForm.of(context);

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

class ReactiveSecurityQuestionsModelFormConsumer extends StatelessWidget {
  const ReactiveSecurityQuestionsModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      SecurityQuestionsModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSecurityQuestionsModelForm.of(context);

    if (formModel is! SecurityQuestionsModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class SecurityQuestionsModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const SecurityQuestionsModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final SecurityQuestionsModelForm form;
}

class ReactiveSecurityQuestionsModelForm extends StatelessWidget {
  const ReactiveSecurityQuestionsModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final SecurityQuestionsModelForm form;

  final WillPopCallback? onWillPop;

  static SecurityQuestionsModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              SecurityQuestionsModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        SecurityQuestionsModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as SecurityQuestionsModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return SecurityQuestionsModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class SecurityQuestionsModelFormBuilder extends StatefulWidget {
  const SecurityQuestionsModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final SecurityQuestionsModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      SecurityQuestionsModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, SecurityQuestionsModelForm formModel)? initState;

  @override
  _SecurityQuestionsModelFormBuilderState createState() =>
      _SecurityQuestionsModelFormBuilderState();
}

class _SecurityQuestionsModelFormBuilderState
    extends State<SecurityQuestionsModelFormBuilder> {
  late FormGroup _form;

  late SecurityQuestionsModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = SecurityQuestionsModelForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant SecurityQuestionsModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = SecurityQuestionsModelForm(widget.model, _form, null);
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
    return ReactiveSecurityQuestionsModelForm(
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

class SecurityQuestionsModelForm implements FormModel<SecurityQuestionsModel> {
  SecurityQuestionsModelForm(
    this.securityQuestionsModel,
    this.form,
    this.path,
  ) {}

  static String birthCityControlName = "birthCity";

  static String birthYearControlName = "birthYear";

  final SecurityQuestionsModel? securityQuestionsModel;

  final FormGroup form;

  final String? path;

  String birthCityControlPath() => pathBuilder(birthCityControlName);
  String birthYearControlPath() => pathBuilder(birthYearControlName);
  String get _birthCityValue => birthCityControl.value as String;
  int get _birthYearValue => birthYearControl.value as int;
  bool get containsBirthCity {
    try {
      form.control(birthCityControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsBirthYear {
    try {
      form.control(birthYearControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get birthCityErrors => birthCityControl.errors;
  Object? get birthYearErrors => birthYearControl.errors;
  void get birthCityFocus => form.focus(birthCityControlPath());
  void get birthYearFocus => form.focus(birthYearControlPath());
  void birthCityValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthCityControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthYearValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthYearControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthCityValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthCityControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthYearValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthYearControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthCityValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      birthCityControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void birthYearValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      birthYearControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get birthCityControl =>
      form.control(birthCityControlPath()) as FormControl<String>;
  FormControl<int> get birthYearControl =>
      form.control(birthYearControlPath()) as FormControl<int>;
  void birthCitySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      birthCityControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      birthCityControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void birthYearSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      birthYearControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      birthYearControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  SecurityQuestionsModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return SecurityQuestionsModel(
        birthCity: _birthCityValue, birthYear: _birthYearValue);
  }

  SecurityQuestionsModelForm copyWithPath(String? path) {
    return SecurityQuestionsModelForm(securityQuestionsModel, form, path);
  }

  @override
  void updateValue(
    SecurityQuestionsModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          SecurityQuestionsModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    SecurityQuestionsModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: SecurityQuestionsModelForm(value, FormGroup({}), null)
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
        birthCityControlName: FormControl<String>(
            value: securityQuestionsModel?.birthCity,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        birthYearControlName: FormControl<int>(
            value: securityQuestionsModel?.birthYear,
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

class ReactiveSecurityQuestionsModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveSecurityQuestionsModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(SecurityQuestionsModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      SecurityQuestionsModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      SecurityQuestionsModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSecurityQuestionsModelForm.of(context);

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

class ReactiveSecurityQuestionsModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveSecurityQuestionsModelFormFormGroupArrayBuilder({
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
      SecurityQuestionsModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      SecurityQuestionsModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      SecurityQuestionsModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSecurityQuestionsModelForm.of(context);

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

class ReactiveEnterDataModelFormConsumer extends StatelessWidget {
  const ReactiveEnterDataModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, EnterDataModelForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveEnterDataModelForm.of(context);

    if (formModel is! EnterDataModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class EnterDataModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const EnterDataModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final EnterDataModelForm form;
}

class ReactiveEnterDataModelForm extends StatelessWidget {
  const ReactiveEnterDataModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final EnterDataModelForm form;

  final WillPopCallback? onWillPop;

  static EnterDataModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              EnterDataModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        EnterDataModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as EnterDataModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return EnterDataModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class EnterDataModelFormBuilder extends StatefulWidget {
  const EnterDataModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final EnterDataModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, EnterDataModelForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, EnterDataModelForm formModel)?
      initState;

  @override
  _EnterDataModelFormBuilderState createState() =>
      _EnterDataModelFormBuilderState();
}

class _EnterDataModelFormBuilderState extends State<EnterDataModelFormBuilder> {
  late FormGroup _form;

  late EnterDataModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = EnterDataModelForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant EnterDataModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = EnterDataModelForm(widget.model, _form, null);
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
    return ReactiveEnterDataModelForm(
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

class EnterDataModelForm implements FormModel<EnterDataModel> {
  EnterDataModelForm(
    this.enterDataModel,
    this.form,
    this.path,
  ) {
    confirmPasswordForm = ConfirmPasswordModelForm(
        enterDataModel?.confirmPassword, form, pathBuilder('confirmPassword'));
  }

  static String emailControlName = "email";

  static String confirmPasswordControlName = "confirmPassword";

  late ConfirmPasswordModelForm confirmPasswordForm;

  final EnterDataModel? enterDataModel;

  final FormGroup form;

  final String? path;

  String emailControlPath() => pathBuilder(emailControlName);
  String confirmPasswordControlPath() =>
      pathBuilder(confirmPasswordControlName);
  String get _emailValue => emailControl.value as String;
  ConfirmPasswordModel? get _confirmPasswordValue => confirmPasswordForm.model;
  bool get containsEmail {
    try {
      form.control(emailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsConfirmPassword {
    try {
      form.control(confirmPasswordControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get emailErrors => emailControl.errors;
  Object? get confirmPasswordErrors => confirmPasswordControl?.errors;
  void get emailFocus => form.focus(emailControlPath());
  void get confirmPasswordFocus => form.focus(confirmPasswordControlPath());
  void confirmPasswordRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsConfirmPassword) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          confirmPasswordControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            confirmPasswordControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void emailValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void confirmPasswordValueUpdate(
    ConfirmPasswordModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    confirmPasswordControl?.updateValue(
        ConfirmPasswordModelForm(value, FormGroup({}), null)
            .formElements()
            .rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void emailValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void confirmPasswordValuePatch(
    ConfirmPasswordModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    confirmPasswordControl?.updateValue(
        ConfirmPasswordModelForm(value, form, null).formElements().rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void emailValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void confirmPasswordValueReset(
    ConfirmPasswordModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      confirmPasswordControl?.reset(
          value: ConfirmPasswordModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
  FormGroup? get confirmPasswordControl => containsConfirmPassword
      ? form.control(confirmPasswordControlPath()) as FormGroup?
      : null;
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

  void confirmPasswordSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      confirmPasswordControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      confirmPasswordControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  EnterDataModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return EnterDataModel(
        email: _emailValue, confirmPassword: _confirmPasswordValue);
  }

  EnterDataModelForm copyWithPath(String? path) {
    return EnterDataModelForm(enterDataModel, form, path);
  }

  @override
  void updateValue(
    EnterDataModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          EnterDataModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    EnterDataModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: EnterDataModelForm(value, FormGroup({}), null)
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
        emailControlName: FormControl<String>(
            value: enterDataModel?.email,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        confirmPasswordControlName: confirmPasswordForm.formElements()
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ConfirmPasswordModelForm implements FormModel<ConfirmPasswordModel> {
  ConfirmPasswordModelForm(
    this.confirmPasswordModel,
    this.form,
    this.path,
  ) {}

  static String newPasswordControlName = "newPassword";

  static String confirmPasswordControlName = "confirmPassword";

  final ConfirmPasswordModel? confirmPasswordModel;

  final FormGroup form;

  final String? path;

  String newPasswordControlPath() => pathBuilder(newPasswordControlName);
  String confirmPasswordControlPath() =>
      pathBuilder(confirmPasswordControlName);
  String get _newPasswordValue => newPasswordControl.value ?? "";
  String get _confirmPasswordValue => confirmPasswordControl.value ?? "";
  bool get containsNewPassword {
    try {
      form.control(newPasswordControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsConfirmPassword {
    try {
      form.control(confirmPasswordControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get newPasswordErrors => newPasswordControl.errors;
  Object? get confirmPasswordErrors => confirmPasswordControl.errors;
  void get newPasswordFocus => form.focus(newPasswordControlPath());
  void get confirmPasswordFocus => form.focus(confirmPasswordControlPath());
  void newPasswordValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    newPasswordControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void confirmPasswordValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    confirmPasswordControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void newPasswordValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    newPasswordControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void confirmPasswordValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    confirmPasswordControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void newPasswordValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      newPasswordControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void confirmPasswordValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      confirmPasswordControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get newPasswordControl =>
      form.control(newPasswordControlPath()) as FormControl<String>;
  FormControl<String> get confirmPasswordControl =>
      form.control(confirmPasswordControlPath()) as FormControl<String>;
  void newPasswordSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      newPasswordControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      newPasswordControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void confirmPasswordSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      confirmPasswordControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      confirmPasswordControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ConfirmPasswordModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ConfirmPasswordModel(
        newPassword: _newPasswordValue, confirmPassword: _confirmPasswordValue);
  }

  ConfirmPasswordModelForm copyWithPath(String? path) {
    return ConfirmPasswordModelForm(confirmPasswordModel, form, path);
  }

  @override
  void updateValue(
    ConfirmPasswordModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ConfirmPasswordModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ConfirmPasswordModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ConfirmPasswordModelForm(value, FormGroup({}), null)
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
        newPasswordControlName: FormControl<String>(
            value: confirmPasswordModel?.newPassword,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        confirmPasswordControlName: FormControl<String>(
            value: confirmPasswordModel?.confirmPassword,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [
            passwordsMustMatch
          ],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveEnterDataModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveEnterDataModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(EnterDataModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      EnterDataModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, EnterDataModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveEnterDataModelForm.of(context);

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

class ReactiveEnterDataModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveEnterDataModelFormFormGroupArrayBuilder({
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
      EnterDataModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      EnterDataModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, EnterDataModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveEnterDataModelForm.of(context);

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

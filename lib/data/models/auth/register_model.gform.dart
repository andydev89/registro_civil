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
  String get _nuiValue => nuiControl.value ?? "";
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
    return NuiModel(nui: _nuiValue);
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
              length10Validator
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
  ) {}

  static String emailControlName = "email";

  static String phoneNumberControlName = "phoneNumber";

  final EnterDataModel? enterDataModel;

  final FormGroup form;

  final String? path;

  String emailControlPath() => pathBuilder(emailControlName);
  String phoneNumberControlPath() => pathBuilder(phoneNumberControlName);
  String get _emailValue => emailControl.value ?? "";
  String get _phoneNumberValue => phoneNumberControl.value ?? "";
  bool get containsEmail {
    try {
      form.control(emailControlPath());
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

  Object? get emailErrors => emailControl.errors;
  Object? get phoneNumberErrors => phoneNumberControl.errors;
  void get emailFocus => form.focus(emailControlPath());
  void get phoneNumberFocus => form.focus(phoneNumberControlPath());
  void emailValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.updateValue(value,
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

  void emailValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.patchValue(value,
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

  void emailValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailControl.reset(
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
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
  FormControl<String> get phoneNumberControl =>
      form.control(phoneNumberControlPath()) as FormControl<String>;
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

  @override
  EnterDataModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return EnterDataModel(email: _emailValue, phoneNumber: _phoneNumberValue);
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
            validators: [requiredValidator, emailValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        phoneNumberControlName: FormControl<String>(
            value: enterDataModel?.phoneNumber,
            validators: [requiredValidator, length10Validator],
            asyncValidators: [phoneNumberEcuadorValidation],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
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

class ReactiveOtpModelFormConsumer extends StatelessWidget {
  const ReactiveOtpModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, OtpModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveOtpModelForm.of(context);

    if (formModel is! OtpModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class OtpModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const OtpModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final OtpModelForm form;
}

class ReactiveOtpModelForm extends StatelessWidget {
  const ReactiveOtpModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final OtpModelForm form;

  final WillPopCallback? onWillPop;

  static OtpModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<OtpModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        OtpModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as OtpModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return OtpModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class OtpModelFormBuilder extends StatefulWidget {
  const OtpModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final OtpModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, OtpModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context, OtpModelForm formModel)? initState;

  @override
  _OtpModelFormBuilderState createState() => _OtpModelFormBuilderState();
}

class _OtpModelFormBuilderState extends State<OtpModelFormBuilder> {
  late FormGroup _form;

  late OtpModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = OtpModelForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant OtpModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = OtpModelForm(widget.model, _form, null);
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
    return ReactiveOtpModelForm(
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

class OtpModelForm implements FormModel<OtpModel> {
  OtpModelForm(
    this.otpModel,
    this.form,
    this.path,
  ) {}

  static String otpControlName = "otp";

  static String isVerifiedControlName = "isVerified";

  final OtpModel? otpModel;

  final FormGroup form;

  final String? path;

  String otpControlPath() => pathBuilder(otpControlName);
  String isVerifiedControlPath() => pathBuilder(isVerifiedControlName);
  String get _otpValue => otpControl.value ?? "";
  bool get _isVerifiedValue => isVerifiedControl.value as bool;
  bool get containsOtp {
    try {
      form.control(otpControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsIsVerified {
    try {
      form.control(isVerifiedControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get otpErrors => otpControl.errors;
  Object? get isVerifiedErrors => isVerifiedControl.errors;
  void get otpFocus => form.focus(otpControlPath());
  void get isVerifiedFocus => form.focus(isVerifiedControlPath());
  void otpValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    otpControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isVerifiedValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isVerifiedControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void otpValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    otpControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isVerifiedValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isVerifiedControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void otpValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      otpControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void isVerifiedValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isVerifiedControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get otpControl =>
      form.control(otpControlPath()) as FormControl<String>;
  FormControl<bool> get isVerifiedControl =>
      form.control(isVerifiedControlPath()) as FormControl<bool>;
  void otpSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      otpControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      otpControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void isVerifiedSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      isVerifiedControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      isVerifiedControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  OtpModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return OtpModel(otp: _otpValue, isVerified: _isVerifiedValue);
  }

  OtpModelForm copyWithPath(String? path) {
    return OtpModelForm(otpModel, form, path);
  }

  @override
  void updateValue(
    OtpModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          OtpModelForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    OtpModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value:
              OtpModelForm(value, FormGroup({}), null).formElements().rawValue,
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
        otpControlName: FormControl<String>(
            value: otpModel?.otp,
            validators: [requiredValidator, length6Validator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        isVerifiedControlName: FormControl<bool>(
            value: otpModel?.isVerified,
            validators: [requiredTrueValidator],
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

class ReactiveOtpModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveOtpModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(OtpModelForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, OtpModelForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, OtpModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveOtpModelForm.of(context);

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

class ReactiveOtpModelFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveOtpModelFormFormGroupArrayBuilder({
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
      OtpModelForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, OtpModelForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, V? item, OtpModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveOtpModelForm.of(context);

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

class ReactivePasswordModelFormConsumer extends StatelessWidget {
  const ReactivePasswordModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, PasswordModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePasswordModelForm.of(context);

    if (formModel is! PasswordModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class PasswordModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const PasswordModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final PasswordModelForm form;
}

class ReactivePasswordModelForm extends StatelessWidget {
  const ReactivePasswordModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final PasswordModelForm form;

  final WillPopCallback? onWillPop;

  static PasswordModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              PasswordModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        PasswordModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as PasswordModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return PasswordModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class PasswordModelFormBuilder extends StatefulWidget {
  const PasswordModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final PasswordModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, PasswordModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context, PasswordModelForm formModel)?
      initState;

  @override
  _PasswordModelFormBuilderState createState() =>
      _PasswordModelFormBuilderState();
}

class _PasswordModelFormBuilderState extends State<PasswordModelFormBuilder> {
  late FormGroup _form;

  late PasswordModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = PasswordModelForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant PasswordModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = PasswordModelForm(widget.model, _form, null);
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
    return ReactivePasswordModelForm(
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

class PasswordModelForm implements FormModel<PasswordModel> {
  PasswordModelForm(
    this.passwordModel,
    this.form,
    this.path,
  ) {
    confirmPasswordForm = ConfirmPasswordModelForm(
        passwordModel?.confirmPassword, form, pathBuilder('confirmPassword'));
  }

  static String confirmPasswordControlName = "confirmPassword";

  late ConfirmPasswordModelForm confirmPasswordForm;

  final PasswordModel? passwordModel;

  final FormGroup form;

  final String? path;

  String confirmPasswordControlPath() =>
      pathBuilder(confirmPasswordControlName);
  ConfirmPasswordModel? get _confirmPasswordValue => confirmPasswordForm.model;
  bool get containsConfirmPassword {
    try {
      form.control(confirmPasswordControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get confirmPasswordErrors => confirmPasswordControl?.errors;
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
  FormGroup? get confirmPasswordControl => containsConfirmPassword
      ? form.control(confirmPasswordControlPath()) as FormGroup?
      : null;
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
  PasswordModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return PasswordModel(confirmPassword: _confirmPasswordValue);
  }

  PasswordModelForm copyWithPath(String? path) {
    return PasswordModelForm(passwordModel, form, path);
  }

  @override
  void updateValue(
    PasswordModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          PasswordModelForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    PasswordModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: PasswordModelForm(value, FormGroup({}), null)
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
  FormGroup formElements() => FormGroup(
      {confirmPasswordControlName: confirmPasswordForm.formElements()},
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
            validators: [requiredValidator, passwordValidator],
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

class ReactivePasswordModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactivePasswordModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(PasswordModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PasswordModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, PasswordModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePasswordModelForm.of(context);

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

class ReactivePasswordModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactivePasswordModelFormFormGroupArrayBuilder({
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
      PasswordModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PasswordModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, PasswordModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePasswordModelForm.of(context);

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

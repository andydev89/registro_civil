// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'cedulacion_ext_primerav_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveCedulacionExtpVModelFormConsumer extends StatelessWidget {
  const ReactiveCedulacionExtpVModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      CedulacionExtpVModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCedulacionExtpVModelForm.of(context);

    if (formModel is! CedulacionExtpVModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class CedulacionExtpVModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const CedulacionExtpVModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final CedulacionExtpVModelForm form;
}

class ReactiveCedulacionExtpVModelForm extends StatelessWidget {
  const ReactiveCedulacionExtpVModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final CedulacionExtpVModelForm form;

  final WillPopCallback? onWillPop;

  static CedulacionExtpVModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              CedulacionExtpVModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        CedulacionExtpVModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as CedulacionExtpVModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return CedulacionExtpVModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class CedulacionExtpVModelFormBuilder extends StatefulWidget {
  const CedulacionExtpVModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final CedulacionExtpVModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      CedulacionExtpVModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context, CedulacionExtpVModelForm formModel)?
      initState;

  @override
  _CedulacionExtpVModelFormBuilderState createState() =>
      _CedulacionExtpVModelFormBuilderState();
}

class _CedulacionExtpVModelFormBuilderState
    extends State<CedulacionExtpVModelFormBuilder> {
  late CedulacionExtpVModelForm _formModel;

  @override
  void initState() {
    _formModel = CedulacionExtpVModelForm(widget.model,
        CedulacionExtpVModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant CedulacionExtpVModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = CedulacionExtpVModelForm(widget.model,
          CedulacionExtpVModelForm.formElements(widget.model), null);

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
    return ReactiveCedulacionExtpVModelForm(
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

class CedulacionExtpVModelForm implements FormModel<CedulacionExtpVModel> {
  CedulacionExtpVModelForm(
    this.cedulacionExtpVModel,
    this.form,
    this.path,
  ) {}

  static const String visaControlName = "visa";

  static const String emailControlName = "email";

  final CedulacionExtpVModel? cedulacionExtpVModel;

  final FormGroup form;

  final String? path;

  String visaControlPath() => pathBuilder(visaControlName);
  String emailControlPath() => pathBuilder(emailControlName);
  String get _visaValue => visaControl.value as String;
  String get _emailValue => emailControl.value as String;
  bool get containsVisa {
    try {
      form.control(visaControlPath());
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

  Object? get visaErrors => visaControl.errors;
  Object? get emailErrors => emailControl.errors;
  void get visaFocus => form.focus(visaControlPath());
  void get emailFocus => form.focus(emailControlPath());
  void visaValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    visaControl.updateValue(value,
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

  void visaValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    visaControl.patchValue(value,
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

  void visaValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      visaControl.reset(
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
  FormControl<String> get visaControl =>
      form.control(visaControlPath()) as FormControl<String>;
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
  void visaSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      visaControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      visaControl.markAsEnabled(
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

  @override
  CedulacionExtpVModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'CedulacionExtpVModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return CedulacionExtpVModel(visa: _visaValue, email: _emailValue);
  }

  CedulacionExtpVModelForm copyWithPath(String? path) {
    return CedulacionExtpVModelForm(cedulacionExtpVModel, form, path);
  }

  @override
  void updateValue(
    CedulacionExtpVModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(CedulacionExtpVModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    CedulacionExtpVModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(CedulacionExtpVModel? cedulacionExtpVModel) =>
      FormGroup({
        visaControlName: FormControl<String>(
            value: cedulacionExtpVModel?.visa,
            validators: [
              requiredValidator,
              lengthMax20Validator,
              lengthMin2Validator
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailControlName: FormControl<String>(
            value: cedulacionExtpVModel?.email,
            validators: [
              requiredValidator,
              lengthMax20Validator,
              lengthMin2Validator
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

class ReactiveCedulacionExtpVModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveCedulacionExtpVModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(CedulacionExtpVModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      CedulacionExtpVModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      CedulacionExtpVModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCedulacionExtpVModelForm.of(context);

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

class ReactiveCedulacionExtpVModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveCedulacionExtpVModelFormFormGroupArrayBuilder({
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
      CedulacionExtpVModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      CedulacionExtpVModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      CedulacionExtpVModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCedulacionExtpVModelForm.of(context);

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

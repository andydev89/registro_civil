// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'forgot_otp_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveForgotOtpModelFormConsumer extends StatelessWidget {
  const ReactiveForgotOtpModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, ForgotOtpModelForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveForgotOtpModelForm.of(context);

    if (formModel is! ForgotOtpModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ForgotOtpModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const ForgotOtpModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ForgotOtpModelForm form;
}

class ReactiveForgotOtpModelForm extends StatelessWidget {
  const ReactiveForgotOtpModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ForgotOtpModelForm form;

  final WillPopCallback? onWillPop;

  static ForgotOtpModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ForgotOtpModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ForgotOtpModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ForgotOtpModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ForgotOtpModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ForgotOtpModelFormBuilder extends StatefulWidget {
  const ForgotOtpModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ForgotOtpModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, ForgotOtpModelForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, ForgotOtpModelForm formModel)?
      initState;

  @override
  _ForgotOtpModelFormBuilderState createState() =>
      _ForgotOtpModelFormBuilderState();
}

class _ForgotOtpModelFormBuilderState extends State<ForgotOtpModelFormBuilder> {
  late ForgotOtpModelForm _formModel;

  @override
  void initState() {
    _formModel = ForgotOtpModelForm(
        widget.model, ForgotOtpModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ForgotOtpModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ForgotOtpModelForm(
          widget.model, ForgotOtpModelForm.formElements(widget.model), null);

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
    return ReactiveForgotOtpModelForm(
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

class ForgotOtpModelForm implements FormModel<ForgotOtpModel> {
  ForgotOtpModelForm(
    this.forgotOtpModel,
    this.form,
    this.path,
  ) {}

  static const String codeControlName = "code";

  final ForgotOtpModel? forgotOtpModel;

  final FormGroup form;

  final String? path;

  String codeControlPath() => pathBuilder(codeControlName);
  String get _codeValue => codeControl.value ?? "";
  bool get containsCode {
    try {
      form.control(codeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get codeErrors => codeControl.errors;
  void get codeFocus => form.focus(codeControlPath());
  void codeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    codeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void codeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    codeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void codeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      codeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get codeControl =>
      form.control(codeControlPath()) as FormControl<String>;
  void codeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      codeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      codeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ForgotOtpModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'ForgotOtpModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return ForgotOtpModel(code: _codeValue, userId: forgotOtpModel?.userId);
  }

  ForgotOtpModelForm copyWithPath(String? path) {
    return ForgotOtpModelForm(forgotOtpModel, form, path);
  }

  @override
  void updateValue(
    ForgotOtpModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ForgotOtpModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    ForgotOtpModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(ForgotOtpModel? forgotOtpModel) => FormGroup({
        codeControlName: FormControl<String>(
            value: forgotOtpModel?.code,
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

class ReactiveForgotOtpModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveForgotOtpModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ForgotOtpModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ForgotOtpModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, ForgotOtpModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveForgotOtpModelForm.of(context);

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

class ReactiveForgotOtpModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveForgotOtpModelFormFormGroupArrayBuilder({
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
      ForgotOtpModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ForgotOtpModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, ForgotOtpModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveForgotOtpModelForm.of(context);

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

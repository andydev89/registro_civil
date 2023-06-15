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

  static const String otpControlName = "otp";

  final ForgotOtpModel? forgotOtpModel;

  final FormGroup form;

  final String? path;

  String otpControlPath() => pathBuilder(otpControlName);
  String get _otpValue => otpControl.value ?? "";
  bool get containsOtp {
    try {
      form.control(otpControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get otpErrors => otpControl.errors;
  void get otpFocus => form.focus(otpControlPath());
  void otpValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    otpControl.updateValue(value,
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

  void otpValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      otpControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get otpControl =>
      form.control(otpControlPath()) as FormControl<String>;
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

  @override
  ForgotOtpModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'ForgotOtpModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return ForgotOtpModel(otp: _otpValue, userId: forgotOtpModel?.userId);
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
        otpControlName: FormControl<String>(
            value: forgotOtpModel?.otp,
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

class ReactiveForgotConfirmPasswordModelFormConsumer extends StatelessWidget {
  const ReactiveForgotConfirmPasswordModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ForgotConfirmPasswordModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveForgotConfirmPasswordModelForm.of(context);

    if (formModel is! ForgotConfirmPasswordModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ForgotConfirmPasswordModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ForgotConfirmPasswordModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ForgotConfirmPasswordModelForm form;
}

class ReactiveForgotConfirmPasswordModelForm extends StatelessWidget {
  const ReactiveForgotConfirmPasswordModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ForgotConfirmPasswordModelForm form;

  final WillPopCallback? onWillPop;

  static ForgotConfirmPasswordModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ForgotConfirmPasswordModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ForgotConfirmPasswordModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ForgotConfirmPasswordModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return ForgotConfirmPasswordModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ForgotConfirmPasswordModelFormBuilder extends StatefulWidget {
  const ForgotConfirmPasswordModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ForgotConfirmPasswordModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ForgotConfirmPasswordModelForm formModel, Widget? child) builder;

  final void Function(
          BuildContext context, ForgotConfirmPasswordModelForm formModel)?
      initState;

  @override
  _ForgotConfirmPasswordModelFormBuilderState createState() =>
      _ForgotConfirmPasswordModelFormBuilderState();
}

class _ForgotConfirmPasswordModelFormBuilderState
    extends State<ForgotConfirmPasswordModelFormBuilder> {
  late ForgotConfirmPasswordModelForm _formModel;

  @override
  void initState() {
    _formModel = ForgotConfirmPasswordModelForm(widget.model,
        ForgotConfirmPasswordModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(
      covariant ForgotConfirmPasswordModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ForgotConfirmPasswordModelForm(widget.model,
          ForgotConfirmPasswordModelForm.formElements(widget.model), null);

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
    return ReactiveForgotConfirmPasswordModelForm(
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

class ForgotConfirmPasswordModelForm
    implements FormModel<ForgotConfirmPasswordModel> {
  ForgotConfirmPasswordModelForm(
    this.forgotConfirmPasswordModel,
    this.form,
    this.path,
  ) {}

  static const String newPasswordControlName = "newPassword";

  static const String confirmPasswordControlName = "confirmPassword";

  final ForgotConfirmPasswordModel? forgotConfirmPasswordModel;

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
  ForgotConfirmPasswordModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'ForgotConfirmPasswordModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return ForgotConfirmPasswordModel(
        userId: forgotConfirmPasswordModel?.userId,
        newPassword: _newPasswordValue,
        confirmPassword: _confirmPasswordValue);
  }

  ForgotConfirmPasswordModelForm copyWithPath(String? path) {
    return ForgotConfirmPasswordModelForm(
        forgotConfirmPasswordModel, form, path);
  }

  @override
  void updateValue(
    ForgotConfirmPasswordModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ForgotConfirmPasswordModelForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void reset({
    ForgotConfirmPasswordModel? value,
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
          ForgotConfirmPasswordModel? forgotConfirmPasswordModel) =>
      FormGroup({
        newPasswordControlName: FormControl<String>(
            value: forgotConfirmPasswordModel?.newPassword,
            validators: [requiredValidator, passwordValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        confirmPasswordControlName: FormControl<String>(
            value: forgotConfirmPasswordModel?.confirmPassword,
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

class ReactiveForgotConfirmPasswordModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveForgotConfirmPasswordModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ForgotConfirmPasswordModelForm formModel)?
      control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ForgotConfirmPasswordModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ForgotConfirmPasswordModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveForgotConfirmPasswordModelForm.of(context);

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

class ReactiveForgotConfirmPasswordModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveForgotConfirmPasswordModelFormFormGroupArrayBuilder({
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
      ForgotConfirmPasswordModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ForgotConfirmPasswordModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ForgotConfirmPasswordModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveForgotConfirmPasswordModelForm.of(context);

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

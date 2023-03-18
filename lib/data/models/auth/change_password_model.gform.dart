// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'change_password_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveChangePasswordModelFormConsumer extends StatelessWidget {
  const ReactiveChangePasswordModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context, ChangePasswordModelForm formModel,
      Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveChangePasswordModelForm.of(context);

    if (formModel is! ChangePasswordModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ChangePasswordModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ChangePasswordModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ChangePasswordModelForm form;
}

class ReactiveChangePasswordModelForm extends StatelessWidget {
  const ReactiveChangePasswordModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ChangePasswordModelForm form;

  final WillPopCallback? onWillPop;

  static ChangePasswordModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ChangePasswordModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ChangePasswordModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ChangePasswordModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ChangePasswordModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ChangePasswordModelFormBuilder extends StatefulWidget {
  const ChangePasswordModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ChangePasswordModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context, ChangePasswordModelForm formModel,
      Widget? child) builder;

  final void Function(BuildContext context, ChangePasswordModelForm formModel)?
      initState;

  @override
  _ChangePasswordModelFormBuilderState createState() =>
      _ChangePasswordModelFormBuilderState();
}

class _ChangePasswordModelFormBuilderState
    extends State<ChangePasswordModelFormBuilder> {
  late FormGroup _form;

  late ChangePasswordModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = ChangePasswordModelForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant ChangePasswordModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ChangePasswordModelForm(widget.model, _form, null);
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
    return ReactiveChangePasswordModelForm(
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

class ChangePasswordModelForm implements FormModel<ChangePasswordModel> {
  ChangePasswordModelForm(
    this.changePasswordModel,
    this.form,
    this.path,
  ) {
    confirmPasswordForm = ConfirmPasswordModelForm(
        changePasswordModel?.confirmPassword,
        form,
        pathBuilder('confirmPassword'));
  }

  static String confirmPasswordControlName = "confirmPassword";

  late ConfirmPasswordModelForm confirmPasswordForm;

  final ChangePasswordModel? changePasswordModel;

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
  ChangePasswordModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ChangePasswordModel(_confirmPasswordValue);
  }

  ChangePasswordModelForm copyWithPath(String? path) {
    return ChangePasswordModelForm(changePasswordModel, form, path);
  }

  @override
  void updateValue(
    ChangePasswordModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ChangePasswordModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ChangePasswordModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ChangePasswordModelForm(value, FormGroup({}), null)
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

class ReactiveChangePasswordModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveChangePasswordModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ChangePasswordModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ChangePasswordModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ChangePasswordModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveChangePasswordModelForm.of(context);

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

class ReactiveChangePasswordModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveChangePasswordModelFormFormGroupArrayBuilder({
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
      ChangePasswordModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ChangePasswordModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ChangePasswordModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveChangePasswordModelForm.of(context);

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

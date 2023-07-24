// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'birth_abroad_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveRegisterOwnerSubModelFormConsumer extends StatelessWidget {
  const ReactiveRegisterOwnerSubModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      RegisterOwnerSubModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveRegisterOwnerSubModelForm.of(context);

    if (formModel is! RegisterOwnerSubModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class RegisterOwnerSubModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const RegisterOwnerSubModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final RegisterOwnerSubModelForm form;
}

class ReactiveRegisterOwnerSubModelForm extends StatelessWidget {
  const ReactiveRegisterOwnerSubModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final RegisterOwnerSubModelForm form;

  final WillPopCallback? onWillPop;

  static RegisterOwnerSubModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              RegisterOwnerSubModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        RegisterOwnerSubModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as RegisterOwnerSubModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return RegisterOwnerSubModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class RegisterOwnerSubModelFormBuilder extends StatefulWidget {
  const RegisterOwnerSubModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final RegisterOwnerSubModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      RegisterOwnerSubModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, RegisterOwnerSubModelForm formModel)? initState;

  @override
  _RegisterOwnerSubModelFormBuilderState createState() =>
      _RegisterOwnerSubModelFormBuilderState();
}

class _RegisterOwnerSubModelFormBuilderState
    extends State<RegisterOwnerSubModelFormBuilder> {
  late RegisterOwnerSubModelForm _formModel;

  @override
  void initState() {
    _formModel = RegisterOwnerSubModelForm(widget.model,
        RegisterOwnerSubModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant RegisterOwnerSubModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = RegisterOwnerSubModelForm(widget.model,
          RegisterOwnerSubModelForm.formElements(widget.model), null);

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
    return ReactiveRegisterOwnerSubModelForm(
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

class RegisterOwnerSubModelForm implements FormModel<RegisterOwnerSubModel> {
  RegisterOwnerSubModelForm(
    this.registerOwnerSubModel,
    this.form,
    this.path,
  ) {}

  static const String registerOwnerTypeControlName = "registerOwnerType";

  static const String identificationControlName = "identification";

  static const String nameControlName = "name";

  static const String emailControlName = "email";

  static const String phoneControlName = "phone";

  final RegisterOwnerSubModel? registerOwnerSubModel;

  final FormGroup form;

  final String? path;

  String registerOwnerTypeControlPath() =>
      pathBuilder(registerOwnerTypeControlName);
  String identificationControlPath() => pathBuilder(identificationControlName);
  String nameControlPath() => pathBuilder(nameControlName);
  String emailControlPath() => pathBuilder(emailControlName);
  String phoneControlPath() => pathBuilder(phoneControlName);
  RegisterOwnerType? get _registerOwnerTypeValue =>
      registerOwnerTypeControl?.value;
  String? get _identificationValue => identificationControl?.value;
  String? get _nameValue => nameControl?.value;
  String? get _emailValue => emailControl?.value;
  String? get _phoneValue => phoneControl?.value;
  bool get containsRegisterOwnerType {
    try {
      form.control(registerOwnerTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsIdentification {
    try {
      form.control(identificationControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsName {
    try {
      form.control(nameControlPath());
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

  bool get containsPhone {
    try {
      form.control(phoneControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get registerOwnerTypeErrors => registerOwnerTypeControl?.errors;
  Object? get identificationErrors => identificationControl?.errors;
  Object? get nameErrors => nameControl?.errors;
  Object? get emailErrors => emailControl?.errors;
  Object? get phoneErrors => phoneControl?.errors;
  void get registerOwnerTypeFocus => form.focus(registerOwnerTypeControlPath());
  void get identificationFocus => form.focus(identificationControlPath());
  void get nameFocus => form.focus(nameControlPath());
  void get emailFocus => form.focus(emailControlPath());
  void get phoneFocus => form.focus(phoneControlPath());
  void registerOwnerTypeRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsRegisterOwnerType) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          registerOwnerTypeControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            registerOwnerTypeControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void identificationRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsIdentification) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          identificationControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            identificationControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void nameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          nameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            nameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void emailRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsEmail) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          emailControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            emailControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void phoneRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPhone) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          phoneControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            phoneControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void registerOwnerTypeValueUpdate(
    RegisterOwnerType? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    registerOwnerTypeControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void identificationValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    identificationControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void registerOwnerTypeValuePatch(
    RegisterOwnerType? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    registerOwnerTypeControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void identificationValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    identificationControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void registerOwnerTypeValueReset(
    RegisterOwnerType? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      registerOwnerTypeControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void identificationValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      identificationControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void nameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void emailValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void phoneValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      phoneControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<RegisterOwnerType>? get registerOwnerTypeControl =>
      containsRegisterOwnerType
          ? form.control(registerOwnerTypeControlPath())
              as FormControl<RegisterOwnerType>?
          : null;
  FormControl<String>? get identificationControl => containsIdentification
      ? form.control(identificationControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get nameControl => containsName
      ? form.control(nameControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get emailControl => containsEmail
      ? form.control(emailControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get phoneControl => containsPhone
      ? form.control(phoneControlPath()) as FormControl<String>?
      : null;
  void registerOwnerTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      registerOwnerTypeControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      registerOwnerTypeControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void identificationSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      identificationControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      identificationControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl?.markAsEnabled(
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
      emailControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      emailControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void phoneSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      phoneControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      phoneControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  RegisterOwnerSubModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'RegisterOwnerSubModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return RegisterOwnerSubModel(
        registerOwnerType: _registerOwnerTypeValue,
        identification: _identificationValue,
        name: _nameValue,
        email: _emailValue,
        phone: _phoneValue);
  }

  RegisterOwnerSubModelForm copyWithPath(String? path) {
    return RegisterOwnerSubModelForm(registerOwnerSubModel, form, path);
  }

  @override
  void updateValue(
    RegisterOwnerSubModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(RegisterOwnerSubModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    RegisterOwnerSubModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(RegisterOwnerSubModel? registerOwnerSubModel) =>
      FormGroup({
        registerOwnerTypeControlName: FormControl<RegisterOwnerType>(
            value: registerOwnerSubModel?.registerOwnerType,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        identificationControlName: FormControl<String>(
            value: registerOwnerSubModel?.identification,
            validators: [
              requiredValidator,
              ecuadorDniValidator,
              length10Validator
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nameControlName: FormControl<String>(
            value: registerOwnerSubModel?.name,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailControlName: FormControl<String>(
            value: registerOwnerSubModel?.email,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        phoneControlName: FormControl<String>(
            value: registerOwnerSubModel?.phone,
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

class ReactiveRegisterOwnerSubModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveRegisterOwnerSubModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(RegisterOwnerSubModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      RegisterOwnerSubModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      RegisterOwnerSubModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveRegisterOwnerSubModelForm.of(context);

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

class ReactiveRegisterOwnerSubModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveRegisterOwnerSubModelFormFormGroupArrayBuilder({
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
      RegisterOwnerSubModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      RegisterOwnerSubModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      RegisterOwnerSubModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveRegisterOwnerSubModelForm.of(context);

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

class ReactiveDocumentsSubModelFormConsumer extends StatelessWidget {
  const ReactiveDocumentsSubModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, DocumentsSubModelForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDocumentsSubModelForm.of(context);

    if (formModel is! DocumentsSubModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class DocumentsSubModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const DocumentsSubModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final DocumentsSubModelForm form;
}

class ReactiveDocumentsSubModelForm extends StatelessWidget {
  const ReactiveDocumentsSubModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final DocumentsSubModelForm form;

  final WillPopCallback? onWillPop;

  static DocumentsSubModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              DocumentsSubModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        DocumentsSubModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as DocumentsSubModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return DocumentsSubModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class DocumentsSubModelFormBuilder extends StatefulWidget {
  const DocumentsSubModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final DocumentsSubModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, DocumentsSubModelForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, DocumentsSubModelForm formModel)?
      initState;

  @override
  _DocumentsSubModelFormBuilderState createState() =>
      _DocumentsSubModelFormBuilderState();
}

class _DocumentsSubModelFormBuilderState
    extends State<DocumentsSubModelFormBuilder> {
  late DocumentsSubModelForm _formModel;

  @override
  void initState() {
    _formModel = DocumentsSubModelForm(
        widget.model, DocumentsSubModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant DocumentsSubModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = DocumentsSubModelForm(
          widget.model, DocumentsSubModelForm.formElements(widget.model), null);

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
    return ReactiveDocumentsSubModelForm(
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

class DocumentsSubModelForm implements FormModel<DocumentsSubModel> {
  DocumentsSubModelForm(
    this.documentsSubModel,
    this.form,
    this.path,
  ) {}

  static const String registerOwnerTypeControlName = "registerOwnerType";

  static const String birthCertificateControlName = "birthCertificate";

  static const String identityControlName = "identity";

  static const String powerOfAttorneyControlName = "powerOfAttorney";

  final DocumentsSubModel? documentsSubModel;

  final FormGroup form;

  final String? path;

  String registerOwnerTypeControlPath() =>
      pathBuilder(registerOwnerTypeControlName);
  String birthCertificateControlPath() =>
      pathBuilder(birthCertificateControlName);
  String identityControlPath() => pathBuilder(identityControlName);
  String powerOfAttorneyControlPath() =>
      pathBuilder(powerOfAttorneyControlName);
  RegisterOwnerType get _registerOwnerTypeValue =>
      registerOwnerTypeControl.value as RegisterOwnerType;
  Certificate? get _birthCertificateValue => birthCertificateControl?.value;
  Certificate? get _identityValue => identityControl?.value;
  Certificate? get _powerOfAttorneyValue => powerOfAttorneyControl?.value;
  bool get containsRegisterOwnerType {
    try {
      form.control(registerOwnerTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsBirthCertificate {
    try {
      form.control(birthCertificateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsIdentity {
    try {
      form.control(identityControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPowerOfAttorney {
    try {
      form.control(powerOfAttorneyControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get registerOwnerTypeErrors => registerOwnerTypeControl.errors;
  Object? get birthCertificateErrors => birthCertificateControl?.errors;
  Object? get identityErrors => identityControl?.errors;
  Object? get powerOfAttorneyErrors => powerOfAttorneyControl?.errors;
  void get registerOwnerTypeFocus => form.focus(registerOwnerTypeControlPath());
  void get birthCertificateFocus => form.focus(birthCertificateControlPath());
  void get identityFocus => form.focus(identityControlPath());
  void get powerOfAttorneyFocus => form.focus(powerOfAttorneyControlPath());
  void birthCertificateRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsBirthCertificate) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          birthCertificateControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            birthCertificateControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void identityRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsIdentity) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          identityControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            identityControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void powerOfAttorneyRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPowerOfAttorney) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          powerOfAttorneyControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            powerOfAttorneyControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void registerOwnerTypeValueUpdate(
    RegisterOwnerType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    registerOwnerTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthCertificateValueUpdate(
    Certificate? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthCertificateControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void identityValueUpdate(
    Certificate? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    identityControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void powerOfAttorneyValueUpdate(
    Certificate? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    powerOfAttorneyControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void registerOwnerTypeValuePatch(
    RegisterOwnerType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    registerOwnerTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthCertificateValuePatch(
    Certificate? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthCertificateControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void identityValuePatch(
    Certificate? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    identityControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void powerOfAttorneyValuePatch(
    Certificate? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    powerOfAttorneyControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void registerOwnerTypeValueReset(
    RegisterOwnerType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      registerOwnerTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void birthCertificateValueReset(
    Certificate? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      birthCertificateControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void identityValueReset(
    Certificate? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      identityControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void powerOfAttorneyValueReset(
    Certificate? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      powerOfAttorneyControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<RegisterOwnerType> get registerOwnerTypeControl =>
      form.control(registerOwnerTypeControlPath())
          as FormControl<RegisterOwnerType>;
  FormControl<Certificate>? get birthCertificateControl =>
      containsBirthCertificate
          ? form.control(birthCertificateControlPath())
              as FormControl<Certificate>?
          : null;
  FormControl<Certificate>? get identityControl => containsIdentity
      ? form.control(identityControlPath()) as FormControl<Certificate>?
      : null;
  FormControl<Certificate>? get powerOfAttorneyControl =>
      containsPowerOfAttorney
          ? form.control(powerOfAttorneyControlPath())
              as FormControl<Certificate>?
          : null;
  void registerOwnerTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      registerOwnerTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      registerOwnerTypeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void birthCertificateSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      birthCertificateControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      birthCertificateControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void identitySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      identityControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      identityControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void powerOfAttorneySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      powerOfAttorneyControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      powerOfAttorneyControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  DocumentsSubModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'DocumentsSubModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return DocumentsSubModel(
        registerOwnerType: _registerOwnerTypeValue,
        birthCertificate: _birthCertificateValue,
        identity: _identityValue,
        powerOfAttorney: _powerOfAttorneyValue);
  }

  DocumentsSubModelForm copyWithPath(String? path) {
    return DocumentsSubModelForm(documentsSubModel, form, path);
  }

  @override
  void updateValue(
    DocumentsSubModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(DocumentsSubModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    DocumentsSubModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(DocumentsSubModel? documentsSubModel) =>
      FormGroup({
        registerOwnerTypeControlName: FormControl<RegisterOwnerType>(
            value: documentsSubModel?.registerOwnerType,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        birthCertificateControlName: FormControl<Certificate>(
            value: documentsSubModel?.birthCertificate,
            validators: [
              (control) =>
                  requiredValidator(control as FormControl<Certificate>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        identityControlName: FormControl<Certificate>(
            value: documentsSubModel?.identity,
            validators: [
              (control) =>
                  requiredValidator(control as FormControl<Certificate>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        powerOfAttorneyControlName: FormControl<Certificate>(
            value: documentsSubModel?.powerOfAttorney,
            validators: [
              (control) =>
                  requiredValidator(control as FormControl<Certificate>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [
            powerOfAttorneyValidatorGroup
          ],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveDocumentsSubModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveDocumentsSubModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(DocumentsSubModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      DocumentsSubModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, DocumentsSubModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDocumentsSubModelForm.of(context);

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

class ReactiveDocumentsSubModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveDocumentsSubModelFormFormGroupArrayBuilder({
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
      DocumentsSubModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      DocumentsSubModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, DocumentsSubModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDocumentsSubModelForm.of(context);

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

class ReactiveLocationSubModelFormConsumer extends StatelessWidget {
  const ReactiveLocationSubModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, LocationSubModelForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveLocationSubModelForm.of(context);

    if (formModel is! LocationSubModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class LocationSubModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const LocationSubModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final LocationSubModelForm form;
}

class ReactiveLocationSubModelForm extends StatelessWidget {
  const ReactiveLocationSubModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final LocationSubModelForm form;

  final WillPopCallback? onWillPop;

  static LocationSubModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              LocationSubModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        LocationSubModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as LocationSubModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return LocationSubModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class LocationSubModelFormBuilder extends StatefulWidget {
  const LocationSubModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final LocationSubModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, LocationSubModelForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, LocationSubModelForm formModel)?
      initState;

  @override
  _LocationSubModelFormBuilderState createState() =>
      _LocationSubModelFormBuilderState();
}

class _LocationSubModelFormBuilderState
    extends State<LocationSubModelFormBuilder> {
  late LocationSubModelForm _formModel;

  @override
  void initState() {
    _formModel = LocationSubModelForm(
        widget.model, LocationSubModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant LocationSubModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = LocationSubModelForm(
          widget.model, LocationSubModelForm.formElements(widget.model), null);

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
    return ReactiveLocationSubModelForm(
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

class LocationSubModelForm implements FormModel<LocationSubModel> {
  LocationSubModelForm(
    this.locationSubModel,
    this.form,
    this.path,
  ) {}

  static const String provinceControlName = "province";

  static const String cantonControlName = "canton";

  static const String agencyControlName = "agency";

  final LocationSubModel? locationSubModel;

  final FormGroup form;

  final String? path;

  String provinceControlPath() => pathBuilder(provinceControlName);
  String cantonControlPath() => pathBuilder(cantonControlName);
  String agencyControlPath() => pathBuilder(agencyControlName);
  LocationModel? get _provinceValue => provinceControl?.value;
  LocationModel? get _cantonValue => cantonControl?.value;
  AgencyModel? get _agencyValue => agencyControl?.value;
  bool get containsProvince {
    try {
      form.control(provinceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCanton {
    try {
      form.control(cantonControlPath());
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

  Object? get provinceErrors => provinceControl?.errors;
  Object? get cantonErrors => cantonControl?.errors;
  Object? get agencyErrors => agencyControl?.errors;
  void get provinceFocus => form.focus(provinceControlPath());
  void get cantonFocus => form.focus(cantonControlPath());
  void get agencyFocus => form.focus(agencyControlPath());
  void provinceRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsProvince) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          provinceControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            provinceControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void cantonRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsCanton) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          cantonControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            cantonControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

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

  void provinceValueUpdate(
    LocationModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    provinceControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cantonValueUpdate(
    LocationModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cantonControl?.updateValue(value,
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

  void provinceValuePatch(
    LocationModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    provinceControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cantonValuePatch(
    LocationModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cantonControl?.patchValue(value,
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

  void provinceValueReset(
    LocationModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      provinceControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void cantonValueReset(
    LocationModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      cantonControl?.reset(
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
  FormControl<LocationModel>? get provinceControl => containsProvince
      ? form.control(provinceControlPath()) as FormControl<LocationModel>?
      : null;
  FormControl<LocationModel>? get cantonControl => containsCanton
      ? form.control(cantonControlPath()) as FormControl<LocationModel>?
      : null;
  FormControl<AgencyModel>? get agencyControl => containsAgency
      ? form.control(agencyControlPath()) as FormControl<AgencyModel>?
      : null;
  void provinceSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      provinceControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      provinceControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void cantonSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      cantonControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      cantonControl?.markAsEnabled(
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

  @override
  LocationSubModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'LocationSubModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return LocationSubModel(
        province: _provinceValue, canton: _cantonValue, agency: _agencyValue);
  }

  LocationSubModelForm copyWithPath(String? path) {
    return LocationSubModelForm(locationSubModel, form, path);
  }

  @override
  void updateValue(
    LocationSubModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(LocationSubModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    LocationSubModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(LocationSubModel? locationSubModel) =>
      FormGroup({
        provinceControlName: FormControl<LocationModel>(
            value: locationSubModel?.province,
            validators: [
              (control) =>
                  requiredValidator(control as FormControl<LocationModel>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        cantonControlName: FormControl<LocationModel>(
            value: locationSubModel?.canton,
            validators: [
              (control) =>
                  requiredValidator(control as FormControl<LocationModel>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        agencyControlName: FormControl<AgencyModel>(
            value: locationSubModel?.agency,
            validators: [
              (control) =>
                  requiredValidator(control as FormControl<AgencyModel>)
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

class ReactiveLocationSubModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveLocationSubModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(LocationSubModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      LocationSubModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, LocationSubModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveLocationSubModelForm.of(context);

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

class ReactiveLocationSubModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveLocationSubModelFormFormGroupArrayBuilder({
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
      LocationSubModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      LocationSubModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, LocationSubModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveLocationSubModelForm.of(context);

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

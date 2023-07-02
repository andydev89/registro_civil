// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'electronic_signature_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveESignatureFirstSubModelFormConsumer extends StatelessWidget {
  const ReactiveESignatureFirstSubModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ESignatureFirstSubModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveESignatureFirstSubModelForm.of(context);

    if (formModel is! ESignatureFirstSubModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ESignatureFirstSubModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ESignatureFirstSubModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ESignatureFirstSubModelForm form;
}

class ReactiveESignatureFirstSubModelForm extends StatelessWidget {
  const ReactiveESignatureFirstSubModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ESignatureFirstSubModelForm form;

  final WillPopCallback? onWillPop;

  static ESignatureFirstSubModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ESignatureFirstSubModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ESignatureFirstSubModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ESignatureFirstSubModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ESignatureFirstSubModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ESignatureFirstSubModelFormBuilder extends StatefulWidget {
  const ESignatureFirstSubModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ESignatureFirstSubModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ESignatureFirstSubModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, ESignatureFirstSubModelForm formModel)? initState;

  @override
  _ESignatureFirstSubModelFormBuilderState createState() =>
      _ESignatureFirstSubModelFormBuilderState();
}

class _ESignatureFirstSubModelFormBuilderState
    extends State<ESignatureFirstSubModelFormBuilder> {
  late ESignatureFirstSubModelForm _formModel;

  @override
  void initState() {
    _formModel = ESignatureFirstSubModelForm(widget.model,
        ESignatureFirstSubModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ESignatureFirstSubModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ESignatureFirstSubModelForm(widget.model,
          ESignatureFirstSubModelForm.formElements(widget.model), null);

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
    return ReactiveESignatureFirstSubModelForm(
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

class ESignatureFirstSubModelForm
    implements FormModel<ESignatureFirstSubModel> {
  ESignatureFirstSubModelForm(
    this.eSignatureFirstSubModel,
    this.form,
    this.path,
  ) {}

  static const String userNuiControlName = "userNui";

  static const String personTypeControlName = "personType";

  static const String signatureTypeControlName = "signatureType";

  static const String isTokenRenovationControlName = "isTokenRenovation";

  static const String hasDeviceTokenControlName = "hasDeviceToken";

  static const String isACustomsAgentControlName = "isACustomsAgent";

  final ESignatureFirstSubModel? eSignatureFirstSubModel;

  final FormGroup form;

  final String? path;

  String userNuiControlPath() => pathBuilder(userNuiControlName);
  String personTypeControlPath() => pathBuilder(personTypeControlName);
  String signatureTypeControlPath() => pathBuilder(signatureTypeControlName);
  String isTokenRenovationControlPath() =>
      pathBuilder(isTokenRenovationControlName);
  String hasDeviceTokenControlPath() => pathBuilder(hasDeviceTokenControlName);
  String isACustomsAgentControlPath() =>
      pathBuilder(isACustomsAgentControlName);
  String get _userNuiValue => userNuiControl.value ?? "";
  PersonType get _personTypeValue => personTypeControl.value as PersonType;
  SignatureType get _signatureTypeValue =>
      signatureTypeControl.value as SignatureType;
  bool? get _isTokenRenovationValue => isTokenRenovationControl?.value;
  bool? get _hasDeviceTokenValue => hasDeviceTokenControl?.value;
  bool? get _isACustomsAgentValue => isACustomsAgentControl?.value;
  bool get containsUserNui {
    try {
      form.control(userNuiControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPersonType {
    try {
      form.control(personTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSignatureType {
    try {
      form.control(signatureTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsIsTokenRenovation {
    try {
      form.control(isTokenRenovationControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsHasDeviceToken {
    try {
      form.control(hasDeviceTokenControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsIsACustomsAgent {
    try {
      form.control(isACustomsAgentControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get userNuiErrors => userNuiControl.errors;
  Object? get personTypeErrors => personTypeControl.errors;
  Object? get signatureTypeErrors => signatureTypeControl.errors;
  Object? get isTokenRenovationErrors => isTokenRenovationControl?.errors;
  Object? get hasDeviceTokenErrors => hasDeviceTokenControl?.errors;
  Object? get isACustomsAgentErrors => isACustomsAgentControl?.errors;
  void get userNuiFocus => form.focus(userNuiControlPath());
  void get personTypeFocus => form.focus(personTypeControlPath());
  void get signatureTypeFocus => form.focus(signatureTypeControlPath());
  void get isTokenRenovationFocus => form.focus(isTokenRenovationControlPath());
  void get hasDeviceTokenFocus => form.focus(hasDeviceTokenControlPath());
  void get isACustomsAgentFocus => form.focus(isACustomsAgentControlPath());
  void isTokenRenovationRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsIsTokenRenovation) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          isTokenRenovationControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            isTokenRenovationControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void hasDeviceTokenRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsHasDeviceToken) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          hasDeviceTokenControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            hasDeviceTokenControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void isACustomsAgentRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsIsACustomsAgent) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          isACustomsAgentControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            isACustomsAgentControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void userNuiValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    userNuiControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void personTypeValueUpdate(
    PersonType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    personTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void signatureTypeValueUpdate(
    SignatureType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    signatureTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isTokenRenovationValueUpdate(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isTokenRenovationControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void hasDeviceTokenValueUpdate(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    hasDeviceTokenControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isACustomsAgentValueUpdate(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isACustomsAgentControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void userNuiValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    userNuiControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void personTypeValuePatch(
    PersonType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    personTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void signatureTypeValuePatch(
    SignatureType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    signatureTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isTokenRenovationValuePatch(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isTokenRenovationControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void hasDeviceTokenValuePatch(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    hasDeviceTokenControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isACustomsAgentValuePatch(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isACustomsAgentControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void userNuiValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      userNuiControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void personTypeValueReset(
    PersonType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      personTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void signatureTypeValueReset(
    SignatureType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      signatureTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void isTokenRenovationValueReset(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isTokenRenovationControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void hasDeviceTokenValueReset(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      hasDeviceTokenControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void isACustomsAgentValueReset(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isACustomsAgentControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get userNuiControl =>
      form.control(userNuiControlPath()) as FormControl<String>;
  FormControl<PersonType> get personTypeControl =>
      form.control(personTypeControlPath()) as FormControl<PersonType>;
  FormControl<SignatureType> get signatureTypeControl =>
      form.control(signatureTypeControlPath()) as FormControl<SignatureType>;
  FormControl<bool>? get isTokenRenovationControl => containsIsTokenRenovation
      ? form.control(isTokenRenovationControlPath()) as FormControl<bool>?
      : null;
  FormControl<bool>? get hasDeviceTokenControl => containsHasDeviceToken
      ? form.control(hasDeviceTokenControlPath()) as FormControl<bool>?
      : null;
  FormControl<bool>? get isACustomsAgentControl => containsIsACustomsAgent
      ? form.control(isACustomsAgentControlPath()) as FormControl<bool>?
      : null;
  void userNuiSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      userNuiControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      userNuiControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void personTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      personTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      personTypeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void signatureTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      signatureTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      signatureTypeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void isTokenRenovationSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      isTokenRenovationControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      isTokenRenovationControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void hasDeviceTokenSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      hasDeviceTokenControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      hasDeviceTokenControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void isACustomsAgentSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      isACustomsAgentControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      isACustomsAgentControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ESignatureFirstSubModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'ESignatureFirstSubModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return ESignatureFirstSubModel(
        userNui: _userNuiValue,
        personType: _personTypeValue,
        signatureType: _signatureTypeValue,
        isTokenRenovation: _isTokenRenovationValue,
        hasDeviceToken: _hasDeviceTokenValue,
        isACustomsAgent: _isACustomsAgentValue);
  }

  ESignatureFirstSubModelForm copyWithPath(String? path) {
    return ESignatureFirstSubModelForm(eSignatureFirstSubModel, form, path);
  }

  @override
  void updateValue(
    ESignatureFirstSubModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ESignatureFirstSubModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    ESignatureFirstSubModel? value,
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
          ESignatureFirstSubModel? eSignatureFirstSubModel) =>
      FormGroup({
        userNuiControlName: FormControl<String>(
            value: eSignatureFirstSubModel?.userNui,
            validators: [
              requiredValidator,
              ecuadorDniValidator,
              length10Validator
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        personTypeControlName: FormControl<PersonType>(
            value: eSignatureFirstSubModel?.personType,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        signatureTypeControlName: FormControl<SignatureType>(
            value: eSignatureFirstSubModel?.signatureType,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        isTokenRenovationControlName: FormControl<bool>(
            value: eSignatureFirstSubModel?.isTokenRenovation,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        hasDeviceTokenControlName: FormControl<bool>(
            value: eSignatureFirstSubModel?.hasDeviceToken,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        isACustomsAgentControlName: FormControl<bool>(
            value: eSignatureFirstSubModel?.isACustomsAgent,
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

class ReactiveESignatureFirstSubModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveESignatureFirstSubModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ESignatureFirstSubModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ESignatureFirstSubModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ESignatureFirstSubModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveESignatureFirstSubModelForm.of(context);

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

class ReactiveESignatureFirstSubModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveESignatureFirstSubModelFormFormGroupArrayBuilder({
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
      ESignatureFirstSubModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ESignatureFirstSubModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ESignatureFirstSubModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveESignatureFirstSubModelForm.of(context);

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

class ReactiveESignaturePersonalModelFormConsumer extends StatelessWidget {
  const ReactiveESignaturePersonalModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ESignaturePersonalModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveESignaturePersonalModelForm.of(context);

    if (formModel is! ESignaturePersonalModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ESignaturePersonalModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ESignaturePersonalModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ESignaturePersonalModelForm form;
}

class ReactiveESignaturePersonalModelForm extends StatelessWidget {
  const ReactiveESignaturePersonalModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ESignaturePersonalModelForm form;

  final WillPopCallback? onWillPop;

  static ESignaturePersonalModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ESignaturePersonalModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ESignaturePersonalModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ESignaturePersonalModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ESignaturePersonalModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ESignaturePersonalModelFormBuilder extends StatefulWidget {
  const ESignaturePersonalModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ESignaturePersonalModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ESignaturePersonalModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, ESignaturePersonalModelForm formModel)? initState;

  @override
  _ESignaturePersonalModelFormBuilderState createState() =>
      _ESignaturePersonalModelFormBuilderState();
}

class _ESignaturePersonalModelFormBuilderState
    extends State<ESignaturePersonalModelFormBuilder> {
  late ESignaturePersonalModelForm _formModel;

  @override
  void initState() {
    _formModel = ESignaturePersonalModelForm(widget.model,
        ESignaturePersonalModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ESignaturePersonalModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ESignaturePersonalModelForm(widget.model,
          ESignaturePersonalModelForm.formElements(widget.model), null);

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
    return ReactiveESignaturePersonalModelForm(
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

class ESignaturePersonalModelForm
    implements FormModel<ESignaturePersonalModel> {
  ESignaturePersonalModelForm(
    this.eSignaturePersonalModel,
    this.form,
    this.path,
  ) {}

  static const String fullNameControlName = "fullName";

  static const String emailControlName = "email";

  static const String phoneControlName = "phone";

  static const String addressControlName = "address";

  static const String postalCodeControlName = "postalCode";

  static const String provinceControlName = "province";

  static const String cityControlName = "city";

  static const String parishControlName = "parish";

  final ESignaturePersonalModel? eSignaturePersonalModel;

  final FormGroup form;

  final String? path;

  String fullNameControlPath() => pathBuilder(fullNameControlName);
  String emailControlPath() => pathBuilder(emailControlName);
  String phoneControlPath() => pathBuilder(phoneControlName);
  String addressControlPath() => pathBuilder(addressControlName);
  String postalCodeControlPath() => pathBuilder(postalCodeControlName);
  String provinceControlPath() => pathBuilder(provinceControlName);
  String cityControlPath() => pathBuilder(cityControlName);
  String parishControlPath() => pathBuilder(parishControlName);
  String? get _fullNameValue => fullNameControl?.value;
  String? get _emailValue => emailControl?.value;
  String? get _phoneValue => phoneControl?.value;
  String get _addressValue => addressControl.value as String;
  String get _postalCodeValue => postalCodeControl.value as String;
  LocationModel get _provinceValue => provinceControl.value as LocationModel;
  LocationModel get _cityValue => cityControl.value as LocationModel;
  LocationModel get _parishValue => parishControl.value as LocationModel;
  bool get containsFullName {
    try {
      form.control(fullNameControlPath());
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

  bool get containsAddress {
    try {
      form.control(addressControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPostalCode {
    try {
      form.control(postalCodeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsProvince {
    try {
      form.control(provinceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCity {
    try {
      form.control(cityControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsParish {
    try {
      form.control(parishControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get fullNameErrors => fullNameControl?.errors;
  Object? get emailErrors => emailControl?.errors;
  Object? get phoneErrors => phoneControl?.errors;
  Object? get addressErrors => addressControl.errors;
  Object? get postalCodeErrors => postalCodeControl.errors;
  Object? get provinceErrors => provinceControl.errors;
  Object? get cityErrors => cityControl.errors;
  Object? get parishErrors => parishControl.errors;
  void get fullNameFocus => form.focus(fullNameControlPath());
  void get emailFocus => form.focus(emailControlPath());
  void get phoneFocus => form.focus(phoneControlPath());
  void get addressFocus => form.focus(addressControlPath());
  void get postalCodeFocus => form.focus(postalCodeControlPath());
  void get provinceFocus => form.focus(provinceControlPath());
  void get cityFocus => form.focus(cityControlPath());
  void get parishFocus => form.focus(parishControlPath());
  void fullNameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsFullName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          fullNameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            fullNameControlName,
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

  void fullNameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fullNameControl?.updateValue(value,
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

  void addressValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void postalCodeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    postalCodeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void provinceValueUpdate(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    provinceControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cityValueUpdate(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cityControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void parishValueUpdate(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    parishControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fullNameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fullNameControl?.patchValue(value,
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

  void addressValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void postalCodeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    postalCodeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void provinceValuePatch(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    provinceControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cityValuePatch(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cityControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void parishValuePatch(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    parishControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fullNameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      fullNameControl?.reset(
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
  void addressValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      addressControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void postalCodeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      postalCodeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void provinceValueReset(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      provinceControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void cityValueReset(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      cityControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void parishValueReset(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      parishControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String>? get fullNameControl => containsFullName
      ? form.control(fullNameControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get emailControl => containsEmail
      ? form.control(emailControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get phoneControl => containsPhone
      ? form.control(phoneControlPath()) as FormControl<String>?
      : null;
  FormControl<String> get addressControl =>
      form.control(addressControlPath()) as FormControl<String>;
  FormControl<String> get postalCodeControl =>
      form.control(postalCodeControlPath()) as FormControl<String>;
  FormControl<LocationModel> get provinceControl =>
      form.control(provinceControlPath()) as FormControl<LocationModel>;
  FormControl<LocationModel> get cityControl =>
      form.control(cityControlPath()) as FormControl<LocationModel>;
  FormControl<LocationModel> get parishControl =>
      form.control(parishControlPath()) as FormControl<LocationModel>;
  void fullNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      fullNameControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      fullNameControl?.markAsEnabled(
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

  void addressSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      addressControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      addressControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void postalCodeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      postalCodeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      postalCodeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void provinceSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      provinceControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      provinceControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void citySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      cityControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      cityControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void parishSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      parishControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      parishControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ESignaturePersonalModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'ESignaturePersonalModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return ESignaturePersonalModel(
        fullName: _fullNameValue,
        email: _emailValue,
        phone: _phoneValue,
        address: _addressValue,
        postalCode: _postalCodeValue,
        province: _provinceValue,
        city: _cityValue,
        parish: _parishValue);
  }

  ESignaturePersonalModelForm copyWithPath(String? path) {
    return ESignaturePersonalModelForm(eSignaturePersonalModel, form, path);
  }

  @override
  void updateValue(
    ESignaturePersonalModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ESignaturePersonalModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    ESignaturePersonalModel? value,
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
          ESignaturePersonalModel? eSignaturePersonalModel) =>
      FormGroup({
        fullNameControlName: FormControl<String>(
            value: eSignaturePersonalModel?.fullName,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailControlName: FormControl<String>(
            value: eSignaturePersonalModel?.email,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        phoneControlName: FormControl<String>(
            value: eSignaturePersonalModel?.phone,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        addressControlName: FormControl<String>(
            value: eSignaturePersonalModel?.address,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        postalCodeControlName: FormControl<String>(
            value: eSignaturePersonalModel?.postalCode,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        provinceControlName: FormControl<LocationModel>(
            value: eSignaturePersonalModel?.province,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        cityControlName: FormControl<LocationModel>(
            value: eSignaturePersonalModel?.city,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        parishControlName: FormControl<LocationModel>(
            value: eSignaturePersonalModel?.parish,
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

class ReactiveESignaturePersonalModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveESignaturePersonalModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ESignaturePersonalModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ESignaturePersonalModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ESignaturePersonalModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveESignaturePersonalModelForm.of(context);

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

class ReactiveESignaturePersonalModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveESignaturePersonalModelFormFormGroupArrayBuilder({
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
      ESignaturePersonalModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ESignaturePersonalModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ESignaturePersonalModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveESignaturePersonalModelForm.of(context);

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

class ReactiveESignatureBillingModelFormConsumer extends StatelessWidget {
  const ReactiveESignatureBillingModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ESignatureBillingModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveESignatureBillingModelForm.of(context);

    if (formModel is! ESignatureBillingModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ESignatureBillingModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ESignatureBillingModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ESignatureBillingModelForm form;
}

class ReactiveESignatureBillingModelForm extends StatelessWidget {
  const ReactiveESignatureBillingModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ESignatureBillingModelForm form;

  final WillPopCallback? onWillPop;

  static ESignatureBillingModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ESignatureBillingModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ESignatureBillingModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ESignatureBillingModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ESignatureBillingModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ESignatureBillingModelFormBuilder extends StatefulWidget {
  const ESignatureBillingModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ESignatureBillingModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ESignatureBillingModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, ESignatureBillingModelForm formModel)? initState;

  @override
  _ESignatureBillingModelFormBuilderState createState() =>
      _ESignatureBillingModelFormBuilderState();
}

class _ESignatureBillingModelFormBuilderState
    extends State<ESignatureBillingModelFormBuilder> {
  late ESignatureBillingModelForm _formModel;

  @override
  void initState() {
    _formModel = ESignatureBillingModelForm(widget.model,
        ESignatureBillingModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ESignatureBillingModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ESignatureBillingModelForm(widget.model,
          ESignatureBillingModelForm.formElements(widget.model), null);

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
    return ReactiveESignatureBillingModelForm(
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

class ESignatureBillingModelForm implements FormModel<ESignatureBillingModel> {
  ESignatureBillingModelForm(
    this.eSignatureBillingModel,
    this.form,
    this.path,
  ) {}

  static const String hasRUCIncludedControlName = "hasRUCIncluded";

  static const String validityTimeControlName = "validityTime";

  static const String useCaseControlName = "useCase";

  final ESignatureBillingModel? eSignatureBillingModel;

  final FormGroup form;

  final String? path;

  String hasRUCIncludedControlPath() => pathBuilder(hasRUCIncludedControlName);
  String validityTimeControlPath() => pathBuilder(validityTimeControlName);
  String useCaseControlPath() => pathBuilder(useCaseControlName);
  bool? get _hasRUCIncludedValue => hasRUCIncludedControl?.value;
  int get _validityTimeValue => validityTimeControl.value as int;
  SignatureUseCaseType get _useCaseValue =>
      useCaseControl.value as SignatureUseCaseType;
  bool get containsHasRUCIncluded {
    try {
      form.control(hasRUCIncludedControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsValidityTime {
    try {
      form.control(validityTimeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsUseCase {
    try {
      form.control(useCaseControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get hasRUCIncludedErrors => hasRUCIncludedControl?.errors;
  Object? get validityTimeErrors => validityTimeControl.errors;
  Object? get useCaseErrors => useCaseControl.errors;
  void get hasRUCIncludedFocus => form.focus(hasRUCIncludedControlPath());
  void get validityTimeFocus => form.focus(validityTimeControlPath());
  void get useCaseFocus => form.focus(useCaseControlPath());
  void hasRUCIncludedRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsHasRUCIncluded) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          hasRUCIncludedControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            hasRUCIncludedControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void hasRUCIncludedValueUpdate(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    hasRUCIncludedControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void validityTimeValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    validityTimeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void useCaseValueUpdate(
    SignatureUseCaseType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    useCaseControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void hasRUCIncludedValuePatch(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    hasRUCIncludedControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void validityTimeValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    validityTimeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void useCaseValuePatch(
    SignatureUseCaseType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    useCaseControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void hasRUCIncludedValueReset(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      hasRUCIncludedControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void validityTimeValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      validityTimeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void useCaseValueReset(
    SignatureUseCaseType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      useCaseControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<bool>? get hasRUCIncludedControl => containsHasRUCIncluded
      ? form.control(hasRUCIncludedControlPath()) as FormControl<bool>?
      : null;
  FormControl<int> get validityTimeControl =>
      form.control(validityTimeControlPath()) as FormControl<int>;
  FormControl<SignatureUseCaseType> get useCaseControl =>
      form.control(useCaseControlPath()) as FormControl<SignatureUseCaseType>;
  void hasRUCIncludedSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      hasRUCIncludedControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      hasRUCIncludedControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void validityTimeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      validityTimeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      validityTimeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void useCaseSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      useCaseControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      useCaseControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ESignatureBillingModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'ESignatureBillingModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return ESignatureBillingModel(
        hasRUCIncluded: _hasRUCIncludedValue,
        ruc: eSignatureBillingModel?.ruc,
        validityTime: _validityTimeValue,
        useCase: _useCaseValue);
  }

  ESignatureBillingModelForm copyWithPath(String? path) {
    return ESignatureBillingModelForm(eSignatureBillingModel, form, path);
  }

  @override
  void updateValue(
    ESignatureBillingModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ESignatureBillingModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    ESignatureBillingModel? value,
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
          ESignatureBillingModel? eSignatureBillingModel) =>
      FormGroup({
        hasRUCIncludedControlName: FormControl<bool>(
            value: eSignatureBillingModel?.hasRUCIncluded,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        validityTimeControlName: FormControl<int>(
            value: eSignatureBillingModel?.validityTime,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        useCaseControlName: FormControl<SignatureUseCaseType>(
            value: eSignatureBillingModel?.useCase,
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

class ReactiveESignatureBillingModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveESignatureBillingModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ESignatureBillingModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ESignatureBillingModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ESignatureBillingModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveESignatureBillingModelForm.of(context);

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

class ReactiveESignatureBillingModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveESignatureBillingModelFormFormGroupArrayBuilder({
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
      ESignatureBillingModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ESignatureBillingModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ESignatureBillingModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveESignatureBillingModelForm.of(context);

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

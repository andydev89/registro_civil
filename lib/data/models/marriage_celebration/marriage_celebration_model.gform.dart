// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'marriage_celebration_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveMarriageCelebrationModelFormConsumer extends StatelessWidget {
  const ReactiveMarriageCelebrationModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      MarriageCelebrationModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMarriageCelebrationModelForm.of(context);

    if (formModel is! MarriageCelebrationModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class MarriageCelebrationModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const MarriageCelebrationModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final MarriageCelebrationModelForm form;
}

class ReactiveMarriageCelebrationModelForm extends StatelessWidget {
  const ReactiveMarriageCelebrationModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final MarriageCelebrationModelForm form;

  final WillPopCallback? onWillPop;

  static MarriageCelebrationModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              MarriageCelebrationModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        MarriageCelebrationModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as MarriageCelebrationModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return MarriageCelebrationModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class MarriageCelebrationModelFormBuilder extends StatefulWidget {
  const MarriageCelebrationModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final MarriageCelebrationModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      MarriageCelebrationModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, MarriageCelebrationModelForm formModel)? initState;

  @override
  _MarriageCelebrationModelFormBuilderState createState() =>
      _MarriageCelebrationModelFormBuilderState();
}

class _MarriageCelebrationModelFormBuilderState
    extends State<MarriageCelebrationModelFormBuilder> {
  late MarriageCelebrationModelForm _formModel;

  @override
  void initState() {
    _formModel = MarriageCelebrationModelForm(widget.model,
        MarriageCelebrationModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(
      covariant MarriageCelebrationModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = MarriageCelebrationModelForm(widget.model,
          MarriageCelebrationModelForm.formElements(widget.model), null);

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
    return ReactiveMarriageCelebrationModelForm(
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

class MarriageCelebrationModelForm
    implements FormModel<MarriageCelebrationModel> {
  MarriageCelebrationModelForm(
    this.marriageCelebrationModel,
    this.form,
    this.path,
  ) {
    firstPartnerForm = PartnerForm(marriageCelebrationModel?.firstPartner, form,
        pathBuilder('firstPartner'));
    secondPartnerForm = PartnerForm(marriageCelebrationModel?.secondPartner,
        form, pathBuilder('secondPartner'));
  }

  static const String requestOwnerTypeControlName = "requestOwnerType";

  static const String agencyControlName = "agency";

  static const String requestOwnerControlName = "requestOwner";

  static const String firstWitnessControlName = "firstWitness";

  static const String secondWitnessControlName = "secondWitness";

  static const String firstPartnerControlName = "firstPartner";

  static const String secondPartnerControlName = "secondPartner";

  static const String isOutsideControlName = "isOutside";

  late PartnerForm firstPartnerForm;

  late PartnerForm secondPartnerForm;

  final MarriageCelebrationModel? marriageCelebrationModel;

  final FormGroup form;

  final String? path;

  String requestOwnerTypeControlPath() =>
      pathBuilder(requestOwnerTypeControlName);
  String agencyControlPath() => pathBuilder(agencyControlName);
  String requestOwnerControlPath() => pathBuilder(requestOwnerControlName);
  String firstWitnessControlPath() => pathBuilder(firstWitnessControlName);
  String secondWitnessControlPath() => pathBuilder(secondWitnessControlName);
  String isOutsideControlPath() => pathBuilder(isOutsideControlName);
  String firstPartnerControlPath() => pathBuilder(firstPartnerControlName);
  String secondPartnerControlPath() => pathBuilder(secondPartnerControlName);
  MarriageCelebrationType get _requestOwnerTypeValue =>
      requestOwnerTypeControl.value as MarriageCelebrationType;
  AgencyModel? get _agencyValue => agencyControl?.value;
  RequestOwner? get _requestOwnerValue => requestOwnerControl?.value;
  Witness? get _firstWitnessValue => firstWitnessControl?.value;
  Witness? get _secondWitnessValue => secondWitnessControl?.value;
  bool get _isOutsideValue => isOutsideControl.value as bool;
  Partner? get _firstPartnerValue => firstPartnerForm.model;
  Partner? get _secondPartnerValue => secondPartnerForm.model;
  bool get containsRequestOwnerType {
    try {
      form.control(requestOwnerTypeControlPath());
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

  bool get containsRequestOwner {
    try {
      form.control(requestOwnerControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsFirstWitness {
    try {
      form.control(firstWitnessControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSecondWitness {
    try {
      form.control(secondWitnessControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsIsOutside {
    try {
      form.control(isOutsideControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsFirstPartner {
    try {
      form.control(firstPartnerControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSecondPartner {
    try {
      form.control(secondPartnerControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get requestOwnerTypeErrors => requestOwnerTypeControl.errors;
  Object? get agencyErrors => agencyControl?.errors;
  Object? get requestOwnerErrors => requestOwnerControl?.errors;
  Object? get firstWitnessErrors => firstWitnessControl?.errors;
  Object? get secondWitnessErrors => secondWitnessControl?.errors;
  Object? get isOutsideErrors => isOutsideControl.errors;
  Object? get firstPartnerErrors => firstPartnerControl?.errors;
  Object? get secondPartnerErrors => secondPartnerControl?.errors;
  void get requestOwnerTypeFocus => form.focus(requestOwnerTypeControlPath());
  void get agencyFocus => form.focus(agencyControlPath());
  void get requestOwnerFocus => form.focus(requestOwnerControlPath());
  void get firstWitnessFocus => form.focus(firstWitnessControlPath());
  void get secondWitnessFocus => form.focus(secondWitnessControlPath());
  void get isOutsideFocus => form.focus(isOutsideControlPath());
  void get firstPartnerFocus => form.focus(firstPartnerControlPath());
  void get secondPartnerFocus => form.focus(secondPartnerControlPath());
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

  void requestOwnerRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsRequestOwner) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          requestOwnerControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            requestOwnerControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void firstWitnessRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsFirstWitness) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          firstWitnessControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            firstWitnessControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void secondWitnessRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsSecondWitness) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          secondWitnessControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            secondWitnessControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void firstPartnerRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsFirstPartner) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          firstPartnerControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            firstPartnerControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void secondPartnerRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsSecondPartner) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          secondPartnerControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            secondPartnerControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void requestOwnerTypeValueUpdate(
    MarriageCelebrationType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    requestOwnerTypeControl.updateValue(value,
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

  void requestOwnerValueUpdate(
    RequestOwner? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    requestOwnerControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void firstWitnessValueUpdate(
    Witness? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    firstWitnessControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void secondWitnessValueUpdate(
    Witness? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    secondWitnessControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isOutsideValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isOutsideControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void firstPartnerValueUpdate(
    Partner? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    firstPartnerControl?.updateValue(PartnerForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void secondPartnerValueUpdate(
    Partner? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    secondPartnerControl?.updateValue(PartnerForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void requestOwnerTypeValuePatch(
    MarriageCelebrationType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    requestOwnerTypeControl.patchValue(value,
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

  void requestOwnerValuePatch(
    RequestOwner? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    requestOwnerControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void firstWitnessValuePatch(
    Witness? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    firstWitnessControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void secondWitnessValuePatch(
    Witness? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    secondWitnessControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isOutsideValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isOutsideControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void firstPartnerValuePatch(
    Partner? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    firstPartnerControl?.updateValue(PartnerForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void secondPartnerValuePatch(
    Partner? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    secondPartnerControl?.updateValue(PartnerForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void requestOwnerTypeValueReset(
    MarriageCelebrationType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      requestOwnerTypeControl.reset(
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
  void requestOwnerValueReset(
    RequestOwner? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      requestOwnerControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void firstWitnessValueReset(
    Witness? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      firstWitnessControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void secondWitnessValueReset(
    Witness? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      secondWitnessControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void isOutsideValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isOutsideControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void firstPartnerValueReset(
    Partner? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      firstPartnerControl?.reset(
          value: PartnerForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void secondPartnerValueReset(
    Partner? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      secondPartnerControl?.reset(
          value: PartnerForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormControl<MarriageCelebrationType> get requestOwnerTypeControl =>
      form.control(requestOwnerTypeControlPath())
          as FormControl<MarriageCelebrationType>;
  FormControl<AgencyModel>? get agencyControl => containsAgency
      ? form.control(agencyControlPath()) as FormControl<AgencyModel>?
      : null;
  FormControl<RequestOwner>? get requestOwnerControl => containsRequestOwner
      ? form.control(requestOwnerControlPath()) as FormControl<RequestOwner>?
      : null;
  FormControl<Witness>? get firstWitnessControl => containsFirstWitness
      ? form.control(firstWitnessControlPath()) as FormControl<Witness>?
      : null;
  FormControl<Witness>? get secondWitnessControl => containsSecondWitness
      ? form.control(secondWitnessControlPath()) as FormControl<Witness>?
      : null;
  FormControl<bool> get isOutsideControl =>
      form.control(isOutsideControlPath()) as FormControl<bool>;
  FormGroup? get firstPartnerControl => containsFirstPartner
      ? form.control(firstPartnerControlPath()) as FormGroup?
      : null;
  FormGroup? get secondPartnerControl => containsSecondPartner
      ? form.control(secondPartnerControlPath()) as FormGroup?
      : null;
  void requestOwnerTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      requestOwnerTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      requestOwnerTypeControl.markAsEnabled(
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

  void requestOwnerSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      requestOwnerControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      requestOwnerControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void firstWitnessSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      firstWitnessControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      firstWitnessControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void secondWitnessSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      secondWitnessControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      secondWitnessControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void isOutsideSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      isOutsideControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      isOutsideControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void firstPartnerSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      firstPartnerControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      firstPartnerControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void secondPartnerSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      secondPartnerControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      secondPartnerControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  MarriageCelebrationModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return MarriageCelebrationModel(
        requestOwnerType: _requestOwnerTypeValue,
        agency: _agencyValue,
        requestOwner: _requestOwnerValue,
        firstWitness: _firstWitnessValue,
        secondWitness: _secondWitnessValue,
        firstPartner: _firstPartnerValue,
        secondPartner: _secondPartnerValue,
        isOutside: _isOutsideValue,
        outside: marriageCelebrationModel?.outside,
        state: marriageCelebrationModel?.state,
        id: marriageCelebrationModel?.id);
  }

  MarriageCelebrationModelForm copyWithPath(String? path) {
    return MarriageCelebrationModelForm(marriageCelebrationModel, form, path);
  }

  @override
  void updateValue(
    MarriageCelebrationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          MarriageCelebrationModelForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void reset({
    MarriageCelebrationModel? value,
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
          MarriageCelebrationModel? marriageCelebrationModel) =>
      FormGroup({
        requestOwnerTypeControlName: FormControl<MarriageCelebrationType>(
            value: marriageCelebrationModel?.requestOwnerType,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        agencyControlName: FormControl<AgencyModel>(
            value: marriageCelebrationModel?.agency,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        requestOwnerControlName: FormControl<RequestOwner>(
            value: marriageCelebrationModel?.requestOwner,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        firstWitnessControlName: FormControl<Witness>(
            value: marriageCelebrationModel?.firstWitness,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        secondWitnessControlName: FormControl<Witness>(
            value: marriageCelebrationModel?.secondWitness,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        isOutsideControlName: FormControl<bool>(
            value: marriageCelebrationModel?.isOutside,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        firstPartnerControlName:
            PartnerForm.formElements(marriageCelebrationModel?.firstPartner),
        secondPartnerControlName:
            PartnerForm.formElements(marriageCelebrationModel?.secondPartner)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class PartnerForm implements FormModel<Partner> {
  PartnerForm(
    this.partner,
    this.form,
    this.path,
  ) {}

  static const String nuiControlName = "nui";

  static const String nameControlName = "name";

  static const String maritalStatusControlName = "maritalStatus";

  static const String hasChildrenControlName = "hasChildren";

  static const String childrenRelationshipControlName = "childrenRelationship";

  static const String conadisControlName = "conadis";

  static const String conadisNumberControlName = "conadisNumber";

  static const String documentsControlName = "documents";

  final Partner? partner;

  final FormGroup form;

  final String? path;

  String nuiControlPath() => pathBuilder(nuiControlName);
  String nameControlPath() => pathBuilder(nameControlName);
  String maritalStatusControlPath() => pathBuilder(maritalStatusControlName);
  String hasChildrenControlPath() => pathBuilder(hasChildrenControlName);
  String childrenRelationshipControlPath() =>
      pathBuilder(childrenRelationshipControlName);
  String conadisControlPath() => pathBuilder(conadisControlName);
  String conadisNumberControlPath() => pathBuilder(conadisNumberControlName);
  String documentsControlPath() => pathBuilder(documentsControlName);
  String get _nuiValue => nuiControl.value ?? "";
  String get _nameValue => nameControl.value ?? "";
  MaritalStatusType? get _maritalStatusValue => maritalStatusControl?.value;
  Binary? get _hasChildrenValue => hasChildrenControl?.value;
  ChildrenRelationShipType? get _childrenRelationshipValue =>
      childrenRelationshipControl?.value;
  bool get _conadisValue => conadisControl.value as bool;
  String get _conadisNumberValue => conadisNumberControl.value ?? "";
  List<Document> get _documentsValue =>
      documentsControl.value?.whereType<Document>().toList() ?? [];
  bool get containsNui {
    try {
      form.control(nuiControlPath());
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

  bool get containsMaritalStatus {
    try {
      form.control(maritalStatusControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsHasChildren {
    try {
      form.control(hasChildrenControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsChildrenRelationship {
    try {
      form.control(childrenRelationshipControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsConadis {
    try {
      form.control(conadisControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsConadisNumber {
    try {
      form.control(conadisNumberControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDocuments {
    try {
      form.control(documentsControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get nuiErrors => nuiControl.errors;
  Object? get nameErrors => nameControl.errors;
  Object? get maritalStatusErrors => maritalStatusControl?.errors;
  Object? get hasChildrenErrors => hasChildrenControl?.errors;
  Object? get childrenRelationshipErrors => childrenRelationshipControl?.errors;
  Object? get conadisErrors => conadisControl.errors;
  Object? get conadisNumberErrors => conadisNumberControl.errors;
  Object? get documentsErrors => documentsControl.errors;
  void get nuiFocus => form.focus(nuiControlPath());
  void get nameFocus => form.focus(nameControlPath());
  void get maritalStatusFocus => form.focus(maritalStatusControlPath());
  void get hasChildrenFocus => form.focus(hasChildrenControlPath());
  void get childrenRelationshipFocus =>
      form.focus(childrenRelationshipControlPath());
  void get conadisFocus => form.focus(conadisControlPath());
  void get conadisNumberFocus => form.focus(conadisNumberControlPath());
  void get documentsFocus => form.focus(documentsControlPath());
  void maritalStatusRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsMaritalStatus) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          maritalStatusControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            maritalStatusControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void hasChildrenRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsHasChildren) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          hasChildrenControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            hasChildrenControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void childrenRelationshipRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsChildrenRelationship) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          childrenRelationshipControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            childrenRelationshipControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void nuiValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nuiControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void maritalStatusValueUpdate(
    MaritalStatusType? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    maritalStatusControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void hasChildrenValueUpdate(
    Binary? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    hasChildrenControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void childrenRelationshipValueUpdate(
    ChildrenRelationShipType? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    childrenRelationshipControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void conadisValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    conadisControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void conadisNumberValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    conadisNumberControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void documentsValueUpdate(
    List<Document> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    documentsControl.updateValue(value,
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

  void nameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void maritalStatusValuePatch(
    MaritalStatusType? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    maritalStatusControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void hasChildrenValuePatch(
    Binary? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    hasChildrenControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void childrenRelationshipValuePatch(
    ChildrenRelationShipType? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    childrenRelationshipControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void conadisValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    conadisControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void conadisNumberValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    conadisNumberControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void documentsValuePatch(
    List<Document> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    documentsControl.patchValue(value,
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
  void nameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void maritalStatusValueReset(
    MaritalStatusType? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      maritalStatusControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void hasChildrenValueReset(
    Binary? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      hasChildrenControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void childrenRelationshipValueReset(
    ChildrenRelationShipType? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      childrenRelationshipControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void conadisValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      conadisControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void conadisNumberValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      conadisNumberControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void documentsValueReset(
    List<Document> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      documentsControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get nuiControl =>
      form.control(nuiControlPath()) as FormControl<String>;
  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;
  FormControl<MaritalStatusType>? get maritalStatusControl =>
      containsMaritalStatus
          ? form.control(maritalStatusControlPath())
              as FormControl<MaritalStatusType>?
          : null;
  FormControl<Binary>? get hasChildrenControl => containsHasChildren
      ? form.control(hasChildrenControlPath()) as FormControl<Binary>?
      : null;
  FormControl<ChildrenRelationShipType>? get childrenRelationshipControl =>
      containsChildrenRelationship
          ? form.control(childrenRelationshipControlPath())
              as FormControl<ChildrenRelationShipType>?
          : null;
  FormControl<bool> get conadisControl =>
      form.control(conadisControlPath()) as FormControl<bool>;
  FormControl<String> get conadisNumberControl =>
      form.control(conadisNumberControlPath()) as FormControl<String>;
  FormArray<Document> get documentsControl =>
      form.control(documentsControlPath()) as FormArray<Document>;
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

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void maritalStatusSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      maritalStatusControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      maritalStatusControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void hasChildrenSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      hasChildrenControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      hasChildrenControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void childrenRelationshipSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      childrenRelationshipControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      childrenRelationshipControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void conadisSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      conadisControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      conadisControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void conadisNumberSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      conadisNumberControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      conadisNumberControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void documentsSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      documentsControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      documentsControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addDocumentsItem(
    Document value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    documentsControl.add(FormControl<Document>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  @override
  Partner get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return Partner(
        nui: _nuiValue,
        name: _nameValue,
        maritalStatus: _maritalStatusValue,
        hasChildren: _hasChildrenValue,
        childrenRelationship: _childrenRelationshipValue,
        conadis: _conadisValue,
        conadisNumber: _conadisNumberValue,
        documents: _documentsValue);
  }

  PartnerForm copyWithPath(String? path) {
    return PartnerForm(partner, form, path);
  }

  @override
  void updateValue(
    Partner? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PartnerForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    Partner? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(Partner? partner) => FormGroup({
        nuiControlName: FormControl<String>(
            value: partner?.nui,
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
            value: partner?.name,
            validators: [requiredValidator, nameValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        maritalStatusControlName: FormControl<MaritalStatusType>(
            value: partner?.maritalStatus,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        hasChildrenControlName: FormControl<Binary>(
            value: partner?.hasChildren,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        childrenRelationshipControlName: FormControl<ChildrenRelationShipType>(
            value: partner?.childrenRelationship,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        conadisControlName: FormControl<bool>(
            value: partner?.conadis,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        conadisNumberControlName: FormControl<String>(
            value: partner?.conadisNumber,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        documentsControlName: FormArray<Document>(
            (partner?.documents ?? [])
                .map((e) => FormControl<Document>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [
            conadisNumberValidatorGroup,
            childrenRelationshipValidatorGroup
          ],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveMarriageCelebrationModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveMarriageCelebrationModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(MarriageCelebrationModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      MarriageCelebrationModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      MarriageCelebrationModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMarriageCelebrationModelForm.of(context);

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

class ReactiveMarriageCelebrationModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveMarriageCelebrationModelFormFormGroupArrayBuilder({
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
      MarriageCelebrationModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      MarriageCelebrationModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      MarriageCelebrationModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMarriageCelebrationModelForm.of(context);

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

class ReactiveRequestOwnerFormConsumer extends StatelessWidget {
  const ReactiveRequestOwnerFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, RequestOwnerForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveRequestOwnerForm.of(context);

    if (formModel is! RequestOwnerForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class RequestOwnerFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const RequestOwnerFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final RequestOwnerForm form;
}

class ReactiveRequestOwnerForm extends StatelessWidget {
  const ReactiveRequestOwnerForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final RequestOwnerForm form;

  final WillPopCallback? onWillPop;

  static RequestOwnerForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              RequestOwnerFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        RequestOwnerFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as RequestOwnerFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return RequestOwnerFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class RequestOwnerFormBuilder extends StatefulWidget {
  const RequestOwnerFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final RequestOwner? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, RequestOwnerForm formModel, Widget? child) builder;

  final void Function(BuildContext context, RequestOwnerForm formModel)?
      initState;

  @override
  _RequestOwnerFormBuilderState createState() =>
      _RequestOwnerFormBuilderState();
}

class _RequestOwnerFormBuilderState extends State<RequestOwnerFormBuilder> {
  late RequestOwnerForm _formModel;

  @override
  void initState() {
    _formModel = RequestOwnerForm(
        widget.model, RequestOwnerForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant RequestOwnerFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = RequestOwnerForm(
          widget.model, RequestOwnerForm.formElements(widget.model), null);

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
    return ReactiveRequestOwnerForm(
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

class RequestOwnerForm implements FormModel<RequestOwner> {
  RequestOwnerForm(
    this.requestOwner,
    this.form,
    this.path,
  ) {}

  static const String nuiControlName = "nui";

  static const String nameControlName = "name";

  static const String phoneControlName = "phone";

  static const String emailControlName = "email";

  static const String identityCardControlName = "identityCard";

  static const String powerOfAttorneyControlName = "powerOfAttorney";

  final RequestOwner? requestOwner;

  final FormGroup form;

  final String? path;

  String nuiControlPath() => pathBuilder(nuiControlName);
  String nameControlPath() => pathBuilder(nameControlName);
  String phoneControlPath() => pathBuilder(phoneControlName);
  String emailControlPath() => pathBuilder(emailControlName);
  String identityCardControlPath() => pathBuilder(identityCardControlName);
  String powerOfAttorneyControlPath() =>
      pathBuilder(powerOfAttorneyControlName);
  String get _nuiValue => nuiControl.value as String;
  String get _nameValue => nameControl.value as String;
  String get _phoneValue => phoneControl.value as String;
  String get _emailValue => emailControl.value as String;
  String? get _identityCardValue => identityCardControl?.value;
  String? get _powerOfAttorneyValue => powerOfAttorneyControl?.value;
  bool get containsNui {
    try {
      form.control(nuiControlPath());
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

  bool get containsPhone {
    try {
      form.control(phoneControlPath());
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

  bool get containsIdentityCard {
    try {
      form.control(identityCardControlPath());
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

  Object? get nuiErrors => nuiControl.errors;
  Object? get nameErrors => nameControl.errors;
  Object? get phoneErrors => phoneControl.errors;
  Object? get emailErrors => emailControl.errors;
  Object? get identityCardErrors => identityCardControl?.errors;
  Object? get powerOfAttorneyErrors => powerOfAttorneyControl?.errors;
  void get nuiFocus => form.focus(nuiControlPath());
  void get nameFocus => form.focus(nameControlPath());
  void get phoneFocus => form.focus(phoneControlPath());
  void get emailFocus => form.focus(emailControlPath());
  void get identityCardFocus => form.focus(identityCardControlPath());
  void get powerOfAttorneyFocus => form.focus(powerOfAttorneyControlPath());
  void identityCardRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsIdentityCard) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          identityCardControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            identityCardControlName,
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

  void nuiValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nuiControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneControl.updateValue(value,
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

  void identityCardValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    identityCardControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void powerOfAttorneyValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    powerOfAttorneyControl?.updateValue(value,
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

  void nameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneControl.patchValue(value,
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

  void identityCardValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    identityCardControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void powerOfAttorneyValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    powerOfAttorneyControl?.patchValue(value,
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
  void nameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void phoneValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      phoneControl.reset(
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
  void identityCardValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      identityCardControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void powerOfAttorneyValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      powerOfAttorneyControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get nuiControl =>
      form.control(nuiControlPath()) as FormControl<String>;
  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;
  FormControl<String> get phoneControl =>
      form.control(phoneControlPath()) as FormControl<String>;
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
  FormControl<String>? get identityCardControl => containsIdentityCard
      ? form.control(identityCardControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get powerOfAttorneyControl => containsPowerOfAttorney
      ? form.control(powerOfAttorneyControlPath()) as FormControl<String>?
      : null;
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

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl.markAsEnabled(
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
      phoneControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      phoneControl.markAsEnabled(
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

  void identityCardSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      identityCardControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      identityCardControl?.markAsEnabled(
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
  RequestOwner get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return RequestOwner(
        nui: _nuiValue,
        name: _nameValue,
        phone: _phoneValue,
        email: _emailValue,
        identityCard: _identityCardValue,
        powerOfAttorney: _powerOfAttorneyValue);
  }

  RequestOwnerForm copyWithPath(String? path) {
    return RequestOwnerForm(requestOwner, form, path);
  }

  @override
  void updateValue(
    RequestOwner value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(RequestOwnerForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    RequestOwner? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(RequestOwner? requestOwner) => FormGroup({
        nuiControlName: FormControl<String>(
            value: requestOwner?.nui,
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
            value: requestOwner?.name,
            validators: [requiredValidator, nameValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        phoneControlName: FormControl<String>(
            value: requestOwner?.phone,
            validators: [requiredValidator, length10Validator],
            asyncValidators: [phoneNumberEcuadorValidation],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailControlName: FormControl<String>(
            value: requestOwner?.email,
            validators: [requiredValidator, emailValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        identityCardControlName: FormControl<String>(
            value: requestOwner?.identityCard,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        powerOfAttorneyControlName: FormControl<String>(
            value: requestOwner?.powerOfAttorney,
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

class ReactiveRequestOwnerFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveRequestOwnerFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(RequestOwnerForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      RequestOwnerForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, RequestOwnerForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveRequestOwnerForm.of(context);

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

class ReactiveRequestOwnerFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveRequestOwnerFormFormGroupArrayBuilder({
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
      RequestOwnerForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      RequestOwnerForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, RequestOwnerForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveRequestOwnerForm.of(context);

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

class ReactiveOutsideFormConsumer extends StatelessWidget {
  const ReactiveOutsideFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, OutsideForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveOutsideForm.of(context);

    if (formModel is! OutsideForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class OutsideFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const OutsideFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final OutsideForm form;
}

class ReactiveOutsideForm extends StatelessWidget {
  const ReactiveOutsideForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final OutsideForm form;

  final WillPopCallback? onWillPop;

  static OutsideForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<OutsideFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        OutsideFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as OutsideFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return OutsideFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class OutsideFormBuilder extends StatefulWidget {
  const OutsideFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Outside? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, OutsideForm formModel, Widget? child) builder;

  final void Function(BuildContext context, OutsideForm formModel)? initState;

  @override
  _OutsideFormBuilderState createState() => _OutsideFormBuilderState();
}

class _OutsideFormBuilderState extends State<OutsideFormBuilder> {
  late OutsideForm _formModel;

  @override
  void initState() {
    _formModel =
        OutsideForm(widget.model, OutsideForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant OutsideFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = OutsideForm(
          widget.model, OutsideForm.formElements(widget.model), null);

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
    return ReactiveOutsideForm(
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

class OutsideForm implements FormModel<Outside> {
  OutsideForm(
    this.outside,
    this.form,
    this.path,
  ) {}

  static const String latitudeControlName = "latitude";

  static const String longitudeControlName = "longitude";

  static const String principalStreetControlName = "principalStreet";

  static const String secondaryStreetControlName = "secondaryStreet";

  final Outside? outside;

  final FormGroup form;

  final String? path;

  String latitudeControlPath() => pathBuilder(latitudeControlName);
  String longitudeControlPath() => pathBuilder(longitudeControlName);
  String principalStreetControlPath() =>
      pathBuilder(principalStreetControlName);
  String secondaryStreetControlPath() =>
      pathBuilder(secondaryStreetControlName);
  String get _latitudeValue => latitudeControl.value ?? "";
  String get _longitudeValue => longitudeControl.value ?? "";
  String get _principalStreetValue => principalStreetControl.value ?? "";
  String get _secondaryStreetValue => secondaryStreetControl.value ?? "";
  bool get containsLatitude {
    try {
      form.control(latitudeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLongitude {
    try {
      form.control(longitudeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPrincipalStreet {
    try {
      form.control(principalStreetControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSecondaryStreet {
    try {
      form.control(secondaryStreetControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get latitudeErrors => latitudeControl.errors;
  Object? get longitudeErrors => longitudeControl.errors;
  Object? get principalStreetErrors => principalStreetControl.errors;
  Object? get secondaryStreetErrors => secondaryStreetControl.errors;
  void get latitudeFocus => form.focus(latitudeControlPath());
  void get longitudeFocus => form.focus(longitudeControlPath());
  void get principalStreetFocus => form.focus(principalStreetControlPath());
  void get secondaryStreetFocus => form.focus(secondaryStreetControlPath());
  void latitudeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    latitudeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void longitudeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    longitudeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void principalStreetValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    principalStreetControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void secondaryStreetValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    secondaryStreetControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void latitudeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    latitudeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void longitudeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    longitudeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void principalStreetValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    principalStreetControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void secondaryStreetValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    secondaryStreetControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void latitudeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      latitudeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void longitudeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      longitudeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void principalStreetValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      principalStreetControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void secondaryStreetValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      secondaryStreetControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get latitudeControl =>
      form.control(latitudeControlPath()) as FormControl<String>;
  FormControl<String> get longitudeControl =>
      form.control(longitudeControlPath()) as FormControl<String>;
  FormControl<String> get principalStreetControl =>
      form.control(principalStreetControlPath()) as FormControl<String>;
  FormControl<String> get secondaryStreetControl =>
      form.control(secondaryStreetControlPath()) as FormControl<String>;
  void latitudeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      latitudeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      latitudeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void longitudeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      longitudeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      longitudeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void principalStreetSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      principalStreetControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      principalStreetControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void secondaryStreetSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      secondaryStreetControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      secondaryStreetControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Outside get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return Outside(
        latitude: _latitudeValue,
        longitude: _longitudeValue,
        principalStreet: _principalStreetValue,
        secondaryStreet: _secondaryStreetValue);
  }

  OutsideForm copyWithPath(String? path) {
    return OutsideForm(outside, form, path);
  }

  @override
  void updateValue(
    Outside value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(OutsideForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    Outside? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(Outside? outside) => FormGroup({
        latitudeControlName: FormControl<String>(
            value: outside?.latitude,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        longitudeControlName: FormControl<String>(
            value: outside?.longitude,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        principalStreetControlName: FormControl<String>(
            value: outside?.principalStreet,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        secondaryStreetControlName: FormControl<String>(
            value: outside?.secondaryStreet,
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

class ReactiveOutsideFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveOutsideFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(OutsideForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, OutsideForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, OutsideForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveOutsideForm.of(context);

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

class ReactiveOutsideFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveOutsideFormFormGroupArrayBuilder({
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
      OutsideForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, OutsideForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, V? item, OutsideForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveOutsideForm.of(context);

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

class ReactiveWitnessFormConsumer extends StatelessWidget {
  const ReactiveWitnessFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, WitnessForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveWitnessForm.of(context);

    if (formModel is! WitnessForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class WitnessFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const WitnessFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final WitnessForm form;
}

class ReactiveWitnessForm extends StatelessWidget {
  const ReactiveWitnessForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final WitnessForm form;

  final WillPopCallback? onWillPop;

  static WitnessForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<WitnessFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        WitnessFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as WitnessFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return WitnessFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class WitnessFormBuilder extends StatefulWidget {
  const WitnessFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Witness? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, WitnessForm formModel, Widget? child) builder;

  final void Function(BuildContext context, WitnessForm formModel)? initState;

  @override
  _WitnessFormBuilderState createState() => _WitnessFormBuilderState();
}

class _WitnessFormBuilderState extends State<WitnessFormBuilder> {
  late WitnessForm _formModel;

  @override
  void initState() {
    _formModel =
        WitnessForm(widget.model, WitnessForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant WitnessFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = WitnessForm(
          widget.model, WitnessForm.formElements(widget.model), null);

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
    return ReactiveWitnessForm(
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

class WitnessForm implements FormModel<Witness> {
  WitnessForm(
    this.witness,
    this.form,
    this.path,
  ) {}

  static const String nuiControlName = "nui";

  static const String nameControlName = "name";

  final Witness? witness;

  final FormGroup form;

  final String? path;

  String nuiControlPath() => pathBuilder(nuiControlName);
  String nameControlPath() => pathBuilder(nameControlName);
  String get _nuiValue => nuiControl.value ?? "";
  String get _nameValue => nameControl.value ?? "";
  bool get containsNui {
    try {
      form.control(nuiControlPath());
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

  Object? get nuiErrors => nuiControl.errors;
  Object? get nameErrors => nameControl.errors;
  void get nuiFocus => form.focus(nuiControlPath());
  void get nameFocus => form.focus(nameControlPath());
  void nuiValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nuiControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
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

  void nameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(value,
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
  void nameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get nuiControl =>
      form.control(nuiControlPath()) as FormControl<String>;
  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;
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

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Witness get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return Witness(nui: _nuiValue, name: _nameValue);
  }

  WitnessForm copyWithPath(String? path) {
    return WitnessForm(witness, form, path);
  }

  @override
  void updateValue(
    Witness value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(WitnessForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    Witness? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(Witness? witness) => FormGroup({
        nuiControlName: FormControl<String>(
            value: witness?.nui,
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
            value: witness?.name,
            validators: [requiredValidator, nameValidator],
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

class ReactiveWitnessFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveWitnessFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(WitnessForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, WitnessForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, WitnessForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveWitnessForm.of(context);

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

class ReactiveWitnessFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveWitnessFormFormGroupArrayBuilder({
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
      WitnessForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, WitnessForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, V? item, WitnessForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveWitnessForm.of(context);

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

class ReactivePartnerFormConsumer extends StatelessWidget {
  const ReactivePartnerFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, PartnerForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePartnerForm.of(context);

    if (formModel is! PartnerForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class PartnerFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const PartnerFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final PartnerForm form;
}

class ReactivePartnerForm extends StatelessWidget {
  const ReactivePartnerForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final PartnerForm form;

  final WillPopCallback? onWillPop;

  static PartnerForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<PartnerFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        PartnerFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as PartnerFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return PartnerFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class PartnerFormBuilder extends StatefulWidget {
  const PartnerFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Partner? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, PartnerForm formModel, Widget? child) builder;

  final void Function(BuildContext context, PartnerForm formModel)? initState;

  @override
  _PartnerFormBuilderState createState() => _PartnerFormBuilderState();
}

class _PartnerFormBuilderState extends State<PartnerFormBuilder> {
  late PartnerForm _formModel;

  @override
  void initState() {
    _formModel =
        PartnerForm(widget.model, PartnerForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant PartnerFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = PartnerForm(
          widget.model, PartnerForm.formElements(widget.model), null);

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
    return ReactivePartnerForm(
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

class ReactivePartnerFormArrayBuilder<T> extends StatelessWidget {
  const ReactivePartnerFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(PartnerForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, PartnerForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, PartnerForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePartnerForm.of(context);

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

class ReactivePartnerFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactivePartnerFormFormGroupArrayBuilder({
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
      PartnerForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, PartnerForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, V? item, PartnerForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePartnerForm.of(context);

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

class ReactiveDocumentFormConsumer extends StatelessWidget {
  const ReactiveDocumentFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, DocumentForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDocumentForm.of(context);

    if (formModel is! DocumentForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class DocumentFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const DocumentFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final DocumentForm form;
}

class ReactiveDocumentForm extends StatelessWidget {
  const ReactiveDocumentForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final DocumentForm form;

  final WillPopCallback? onWillPop;

  static DocumentForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<DocumentFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        DocumentFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as DocumentFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return DocumentFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class DocumentFormBuilder extends StatefulWidget {
  const DocumentFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Document? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, DocumentForm formModel, Widget? child) builder;

  final void Function(BuildContext context, DocumentForm formModel)? initState;

  @override
  _DocumentFormBuilderState createState() => _DocumentFormBuilderState();
}

class _DocumentFormBuilderState extends State<DocumentFormBuilder> {
  late DocumentForm _formModel;

  @override
  void initState() {
    _formModel = DocumentForm(
        widget.model, DocumentForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant DocumentFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = DocumentForm(
          widget.model, DocumentForm.formElements(widget.model), null);

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
    return ReactiveDocumentForm(
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

class DocumentForm implements FormModel<Document> {
  DocumentForm(
    this.document,
    this.form,
    this.path,
  ) {}

  static const String referenceIdControlName = "referenceId";

  static const String fileControlName = "file";

  final Document? document;

  final FormGroup form;

  final String? path;

  String referenceIdControlPath() => pathBuilder(referenceIdControlName);
  String fileControlPath() => pathBuilder(fileControlName);
  String get _referenceIdValue => referenceIdControl.value as String;
  String get _fileValue => fileControl.value ?? "";
  bool get containsReferenceId {
    try {
      form.control(referenceIdControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsFile {
    try {
      form.control(fileControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get referenceIdErrors => referenceIdControl.errors;
  Object? get fileErrors => fileControl.errors;
  void get referenceIdFocus => form.focus(referenceIdControlPath());
  void get fileFocus => form.focus(fileControlPath());
  void referenceIdValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    referenceIdControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fileValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fileControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void referenceIdValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    referenceIdControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fileValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fileControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void referenceIdValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      referenceIdControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void fileValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      fileControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get referenceIdControl =>
      form.control(referenceIdControlPath()) as FormControl<String>;
  FormControl<String> get fileControl =>
      form.control(fileControlPath()) as FormControl<String>;
  void referenceIdSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      referenceIdControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      referenceIdControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void fileSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      fileControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      fileControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Document get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return Document(
        referenceId: _referenceIdValue,
        file: _fileValue,
        id: document?.id,
        name: document?.name,
        state: document?.state,
        comment: document?.comment,
        documentPath: document?.documentPath,
        rejectionTypeId: document?.rejectionTypeId);
  }

  DocumentForm copyWithPath(String? path) {
    return DocumentForm(document, form, path);
  }

  @override
  void updateValue(
    Document value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(DocumentForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    Document? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(Document? document) => FormGroup({
        referenceIdControlName: FormControl<String>(
            value: document?.referenceId,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        fileControlName: FormControl<String>(
            value: document?.file,
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

class ReactiveDocumentFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveDocumentFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(DocumentForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, DocumentForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, DocumentForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDocumentForm.of(context);

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

class ReactiveDocumentFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveDocumentFormFormGroupArrayBuilder({
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
      DocumentForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, DocumentForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, V? item, DocumentForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDocumentForm.of(context);

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

class ReactiveSelectAgencyFormConsumer extends StatelessWidget {
  const ReactiveSelectAgencyFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, SelectAgencyForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSelectAgencyForm.of(context);

    if (formModel is! SelectAgencyForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class SelectAgencyFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const SelectAgencyFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final SelectAgencyForm form;
}

class ReactiveSelectAgencyForm extends StatelessWidget {
  const ReactiveSelectAgencyForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final SelectAgencyForm form;

  final WillPopCallback? onWillPop;

  static SelectAgencyForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              SelectAgencyFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        SelectAgencyFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as SelectAgencyFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return SelectAgencyFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class SelectAgencyFormBuilder extends StatefulWidget {
  const SelectAgencyFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final SelectAgency? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, SelectAgencyForm formModel, Widget? child) builder;

  final void Function(BuildContext context, SelectAgencyForm formModel)?
      initState;

  @override
  _SelectAgencyFormBuilderState createState() =>
      _SelectAgencyFormBuilderState();
}

class _SelectAgencyFormBuilderState extends State<SelectAgencyFormBuilder> {
  late SelectAgencyForm _formModel;

  @override
  void initState() {
    _formModel = SelectAgencyForm(
        widget.model, SelectAgencyForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant SelectAgencyFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = SelectAgencyForm(
          widget.model, SelectAgencyForm.formElements(widget.model), null);

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
    return ReactiveSelectAgencyForm(
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

class SelectAgencyForm implements FormModel<SelectAgency> {
  SelectAgencyForm(
    this.selectAgency,
    this.form,
    this.path,
  ) {}

  static const String provinceControlName = "province";

  static const String agencyControlName = "agency";

  final SelectAgency? selectAgency;

  final FormGroup form;

  final String? path;

  String provinceControlPath() => pathBuilder(provinceControlName);
  String agencyControlPath() => pathBuilder(agencyControlName);
  LocationModel get _provinceValue => provinceControl.value as LocationModel;
  AgencyModel get _agencyValue => agencyControl.value as AgencyModel;
  bool get containsProvince {
    try {
      form.control(provinceControlPath());
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

  Object? get provinceErrors => provinceControl.errors;
  Object? get agencyErrors => agencyControl.errors;
  void get provinceFocus => form.focus(provinceControlPath());
  void get agencyFocus => form.focus(agencyControlPath());
  void provinceValueUpdate(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    provinceControl.updateValue(value,
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

  void provinceValuePatch(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    provinceControl.patchValue(value,
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

  void provinceValueReset(
    LocationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      provinceControl.reset(
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
  FormControl<LocationModel> get provinceControl =>
      form.control(provinceControlPath()) as FormControl<LocationModel>;
  FormControl<AgencyModel> get agencyControl =>
      form.control(agencyControlPath()) as FormControl<AgencyModel>;
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

  @override
  SelectAgency get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return SelectAgency(province: _provinceValue, agency: _agencyValue);
  }

  SelectAgencyForm copyWithPath(String? path) {
    return SelectAgencyForm(selectAgency, form, path);
  }

  @override
  void updateValue(
    SelectAgency value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(SelectAgencyForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    SelectAgency? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(SelectAgency? selectAgency) => FormGroup({
        provinceControlName: FormControl<LocationModel>(
            value: selectAgency?.province,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        agencyControlName: FormControl<AgencyModel>(
            value: selectAgency?.agency,
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

class ReactiveSelectAgencyFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveSelectAgencyFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(SelectAgencyForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      SelectAgencyForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, SelectAgencyForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSelectAgencyForm.of(context);

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

class ReactiveSelectAgencyFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveSelectAgencyFormFormGroupArrayBuilder({
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
      SelectAgencyForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      SelectAgencyForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, SelectAgencyForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSelectAgencyForm.of(context);

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

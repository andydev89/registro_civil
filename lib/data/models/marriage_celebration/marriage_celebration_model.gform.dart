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
    required this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final MarriageCelebrationModel model;

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
  late FormGroup _form;

  late MarriageCelebrationModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = MarriageCelebrationModelForm(widget.model, _form, null);

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
  void didUpdateWidget(
      covariant MarriageCelebrationModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = MarriageCelebrationModelForm(widget.model, _form, null);
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
    return ReactiveMarriageCelebrationModelForm(
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

class MarriageCelebrationModelForm
    implements FormModel<MarriageCelebrationModel> {
  MarriageCelebrationModelForm(
    this.marriageCelebrationModel,
    this.form,
    this.path,
  ) {
    firstPartnerForm = PartnerForm(marriageCelebrationModel.firstPartner, form,
        pathBuilder('firstPartner'));
    secondPartnerForm = PartnerForm(marriageCelebrationModel.secondPartner,
        form, pathBuilder('secondPartner'));
  }

  static String firstPartnerControlName = "firstPartner";

  static String secondPartnerControlName = "secondPartner";

  late PartnerForm firstPartnerForm;

  late PartnerForm secondPartnerForm;

  final MarriageCelebrationModel marriageCelebrationModel;

  final FormGroup form;

  final String? path;

  String firstPartnerControlPath() => pathBuilder(firstPartnerControlName);
  String secondPartnerControlPath() => pathBuilder(secondPartnerControlName);
  Partner get _firstPartnerValue => firstPartnerForm.model;
  Partner get _secondPartnerValue => secondPartnerForm.model;
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

  Object? get firstPartnerErrors => firstPartnerControl.errors;
  Object? get secondPartnerErrors => secondPartnerControl.errors;
  void get firstPartnerFocus => form.focus(firstPartnerControlPath());
  void get secondPartnerFocus => form.focus(secondPartnerControlPath());
  void firstPartnerValueUpdate(
    Partner value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    firstPartnerControl.updateValue(
        PartnerForm(value, FormGroup({}), null).formElements().rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void secondPartnerValueUpdate(
    Partner value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    secondPartnerControl.updateValue(
        PartnerForm(value, FormGroup({}), null).formElements().rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void firstPartnerValuePatch(
    Partner value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    firstPartnerControl.updateValue(
        PartnerForm(value, form, null).formElements().rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void secondPartnerValuePatch(
    Partner value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    secondPartnerControl.updateValue(
        PartnerForm(value, form, null).formElements().rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void firstPartnerValueReset(
    Partner value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      firstPartnerControl.reset(
          value:
              PartnerForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void secondPartnerValueReset(
    Partner value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      secondPartnerControl.reset(
          value:
              PartnerForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormGroup get firstPartnerControl =>
      form.control(firstPartnerControlPath()) as FormGroup;
  FormGroup get secondPartnerControl =>
      form.control(secondPartnerControlPath()) as FormGroup;
  void firstPartnerSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      firstPartnerControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      firstPartnerControl.markAsEnabled(
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
      secondPartnerControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      secondPartnerControl.markAsEnabled(
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
        requestOwnerType: marriageCelebrationModel.requestOwnerType,
        agencyId: marriageCelebrationModel.agencyId,
        requestOwner: marriageCelebrationModel.requestOwner,
        isOutside: marriageCelebrationModel.isOutside,
        outside: marriageCelebrationModel.outside,
        firstWitness: marriageCelebrationModel.firstWitness,
        secondWitness: marriageCelebrationModel.secondWitness,
        firstPartner: _firstPartnerValue,
        secondPartner: _secondPartnerValue);
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
          MarriageCelebrationModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    MarriageCelebrationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: MarriageCelebrationModelForm(value, FormGroup({}), null)
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
        firstPartnerControlName: firstPartnerForm.formElements(),
        secondPartnerControlName: secondPartnerForm.formElements()
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

  static String nuiControlName = "nui";

  static String nameControlName = "name";

  static String maritalStatusControlName = "maritalStatus";

  static String hasChildrenControlName = "hasChildren";

  static String documentsControlName = "documents";

  final Partner? partner;

  final FormGroup form;

  final String? path;

  String nuiControlPath() => pathBuilder(nuiControlName);
  String nameControlPath() => pathBuilder(nameControlName);
  String maritalStatusControlPath() => pathBuilder(maritalStatusControlName);
  String hasChildrenControlPath() => pathBuilder(hasChildrenControlName);
  String documentsControlPath() => pathBuilder(documentsControlName);
  String get _nuiValue => nuiControl.value as String;
  String get _nameValue => nameControl.value as String;
  String get _maritalStatusValue => maritalStatusControl.value as String;
  bool get _hasChildrenValue => hasChildrenControl.value as bool;
  List<Document> get _documentsValue =>
      documentsControl.value as List<Document>;
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
  Object? get maritalStatusErrors => maritalStatusControl.errors;
  Object? get hasChildrenErrors => hasChildrenControl.errors;
  Object? get documentsErrors => documentsControl.errors;
  void get nuiFocus => form.focus(nuiControlPath());
  void get nameFocus => form.focus(nameControlPath());
  void get maritalStatusFocus => form.focus(maritalStatusControlPath());
  void get hasChildrenFocus => form.focus(hasChildrenControlPath());
  void get documentsFocus => form.focus(documentsControlPath());
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
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    maritalStatusControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void hasChildrenValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    hasChildrenControl.updateValue(value,
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
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    maritalStatusControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void hasChildrenValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    hasChildrenControl.patchValue(value,
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
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      maritalStatusControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void hasChildrenValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      hasChildrenControl.reset(
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
  FormControl<String> get maritalStatusControl =>
      form.control(maritalStatusControlPath()) as FormControl<String>;
  FormControl<bool> get hasChildrenControl =>
      form.control(hasChildrenControlPath()) as FormControl<bool>;
  FormControl<List<Document>> get documentsControl =>
      form.control(documentsControlPath()) as FormControl<List<Document>>;
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
      maritalStatusControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      maritalStatusControl.markAsEnabled(
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
      hasChildrenControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      hasChildrenControl.markAsEnabled(
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
        childrenRelationship: partner.childrenRelationship,
        conadis: partner.conadis,
        conadisNumber: partner.conadisNumber,
        documents: _documentsValue);
  }

  PartnerForm copyWithPath(String? path) {
    return PartnerForm(partner, form, path);
  }

  @override
  void updateValue(
    Partner value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          PartnerForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    Partner value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value:
              PartnerForm(value, FormGroup({}), null).formElements().rawValue,
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
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        maritalStatusControlName: FormControl<String>(
            value: partner?.maritalStatus,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        hasChildrenControlName: FormControl<bool>(
            value: partner?.hasChildren,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        documentsControlName: FormControl<List<Document>>(
            value: partner?.documents,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
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
  late FormGroup _form;

  late RequestOwnerForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = RequestOwnerForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant RequestOwnerFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = RequestOwnerForm(widget.model, _form, null);
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
    return ReactiveRequestOwnerForm(
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

class RequestOwnerForm implements FormModel<RequestOwner> {
  RequestOwnerForm(
    this.requestOwner,
    this.form,
    this.path,
  ) {}

  static String nuiControlName = "nui";

  static String nameControlName = "name";

  static String phoneControlName = "phone";

  static String emailControlName = "email";

  final RequestOwner? requestOwner;

  final FormGroup form;

  final String? path;

  String nuiControlPath() => pathBuilder(nuiControlName);
  String nameControlPath() => pathBuilder(nameControlName);
  String phoneControlPath() => pathBuilder(phoneControlName);
  String emailControlPath() => pathBuilder(emailControlName);
  String get _nuiValue => nuiControl.value as String;
  String get _nameValue => nameControl.value as String;
  String get _phoneValue => phoneControl.value as String;
  String get _emailValue => emailControl.value as String;
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

  Object? get nuiErrors => nuiControl.errors;
  Object? get nameErrors => nameControl.errors;
  Object? get phoneErrors => phoneControl.errors;
  Object? get emailErrors => emailControl.errors;
  void get nuiFocus => form.focus(nuiControlPath());
  void get nameFocus => form.focus(nameControlPath());
  void get phoneFocus => form.focus(phoneControlPath());
  void get emailFocus => form.focus(emailControlPath());
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
  FormControl<String> get nuiControl =>
      form.control(nuiControlPath()) as FormControl<String>;
  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;
  FormControl<String> get phoneControl =>
      form.control(phoneControlPath()) as FormControl<String>;
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
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
        identityCard: requestOwner?.identityCard,
        powerOfAttorney: requestOwner?.powerOfAttorney);
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
      form.updateValue(
          RequestOwnerForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    RequestOwner value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: RequestOwnerForm(value, FormGroup({}), null)
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
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        phoneControlName: FormControl<String>(
            value: requestOwner?.phone,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailControlName: FormControl<String>(
            value: requestOwner?.email,
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
  late FormGroup _form;

  late OutsideForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = OutsideForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant OutsideFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = OutsideForm(widget.model, _form, null);
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
    return ReactiveOutsideForm(
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

class OutsideForm implements FormModel<Outside> {
  OutsideForm(
    this.outside,
    this.form,
    this.path,
  ) {}

  static String latitudeControlName = "latitude";

  static String longitudeControlName = "longitude";

  static String principalStreetControlName = "principalStreet";

  static String secondaryStreetControlName = "secondaryStreet";

  final Outside? outside;

  final FormGroup form;

  final String? path;

  String latitudeControlPath() => pathBuilder(latitudeControlName);
  String longitudeControlPath() => pathBuilder(longitudeControlName);
  String principalStreetControlPath() =>
      pathBuilder(principalStreetControlName);
  String secondaryStreetControlPath() =>
      pathBuilder(secondaryStreetControlName);
  String get _latitudeValue => latitudeControl.value as String;
  String get _longitudeValue => longitudeControl.value as String;
  String get _principalStreetValue => principalStreetControl.value as String;
  String get _secondaryStreetValue => secondaryStreetControl.value as String;
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
      form.updateValue(
          OutsideForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    Outside value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value:
              OutsideForm(value, FormGroup({}), null).formElements().rawValue,
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
  late FormGroup _form;

  late WitnessForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = WitnessForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant WitnessFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = WitnessForm(widget.model, _form, null);
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
    return ReactiveWitnessForm(
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

class WitnessForm implements FormModel<Witness> {
  WitnessForm(
    this.witness,
    this.form,
    this.path,
  ) {}

  static String nuiControlName = "nui";

  static String nameControlName = "name";

  final Witness? witness;

  final FormGroup form;

  final String? path;

  String nuiControlPath() => pathBuilder(nuiControlName);
  String nameControlPath() => pathBuilder(nameControlName);
  String get _nuiValue => nuiControl.value as String;
  String get _nameValue => nameControl.value as String;
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
      form.updateValue(
          WitnessForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    Witness value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value:
              WitnessForm(value, FormGroup({}), null).formElements().rawValue,
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
            value: witness?.nui,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nameControlName: FormControl<String>(
            value: witness?.name,
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
  late FormGroup _form;

  late DocumentForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = DocumentForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant DocumentFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = DocumentForm(widget.model, _form, null);
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
    return ReactiveDocumentForm(
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

class DocumentForm implements FormModel<Document> {
  DocumentForm(
    this.document,
    this.form,
    this.path,
  ) {}

  static String referenceIdControlName = "referenceId";

  static String fileControlName = "file";

  final Document? document;

  final FormGroup form;

  final String? path;

  String referenceIdControlPath() => pathBuilder(referenceIdControlName);
  String fileControlPath() => pathBuilder(fileControlName);
  String get _referenceIdValue => referenceIdControl.value as String;
  String get _fileValue => fileControl.value as String;
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
    return Document(referenceId: _referenceIdValue, file: _fileValue);
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
      form.updateValue(
          DocumentForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    Document value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value:
              DocumentForm(value, FormGroup({}), null).formElements().rawValue,
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
        referenceIdControlName: FormControl<String>(
            value: document?.referenceId,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        fileControlName: FormControl<String>(
            value: document?.file,
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

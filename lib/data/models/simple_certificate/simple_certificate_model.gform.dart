// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'simple_certificate_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveSimpleCertificateFirstStepFamiliarModelFormConsumer
    extends StatelessWidget {
  const ReactiveSimpleCertificateFirstStepFamiliarModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context,
      SimpleCertificateFirstStepFamiliarModelForm formModel,
      Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveSimpleCertificateFirstStepFamiliarModelForm.of(context);

    if (formModel is! SimpleCertificateFirstStepFamiliarModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class SimpleCertificateFirstStepFamiliarModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const SimpleCertificateFirstStepFamiliarModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final SimpleCertificateFirstStepFamiliarModelForm form;
}

class ReactiveSimpleCertificateFirstStepFamiliarModelForm
    extends StatelessWidget {
  const ReactiveSimpleCertificateFirstStepFamiliarModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final SimpleCertificateFirstStepFamiliarModelForm form;

  final WillPopCallback? onWillPop;

  static SimpleCertificateFirstStepFamiliarModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              SimpleCertificateFirstStepFamiliarModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        SimpleCertificateFirstStepFamiliarModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget
                as SimpleCertificateFirstStepFamiliarModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return SimpleCertificateFirstStepFamiliarModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class SimpleCertificateFirstStepFamiliarModelFormBuilder
    extends StatefulWidget {
  const SimpleCertificateFirstStepFamiliarModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final SimpleCertificateFirstStepFamiliarModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context,
      SimpleCertificateFirstStepFamiliarModelForm formModel,
      Widget? child) builder;

  final void Function(BuildContext context,
      SimpleCertificateFirstStepFamiliarModelForm formModel)? initState;

  @override
  _SimpleCertificateFirstStepFamiliarModelFormBuilderState createState() =>
      _SimpleCertificateFirstStepFamiliarModelFormBuilderState();
}

class _SimpleCertificateFirstStepFamiliarModelFormBuilderState
    extends State<SimpleCertificateFirstStepFamiliarModelFormBuilder> {
  late SimpleCertificateFirstStepFamiliarModelForm _formModel;

  @override
  void initState() {
    _formModel = SimpleCertificateFirstStepFamiliarModelForm(
        widget.model,
        SimpleCertificateFirstStepFamiliarModelForm.formElements(widget.model),
        null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(
      covariant SimpleCertificateFirstStepFamiliarModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = SimpleCertificateFirstStepFamiliarModelForm(
          widget.model,
          SimpleCertificateFirstStepFamiliarModelForm.formElements(
              widget.model),
          null);

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
    return ReactiveSimpleCertificateFirstStepFamiliarModelForm(
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

class SimpleCertificateFirstStepFamiliarModelForm
    implements FormModel<SimpleCertificateFirstStepFamiliarModel> {
  SimpleCertificateFirstStepFamiliarModelForm(
    this.simpleCertificateFirstStepFamiliarModel,
    this.form,
    this.path,
  ) {
    conadisModelForm = ConadisModelForm(
        simpleCertificateFirstStepFamiliarModel?.conadisModel,
        form,
        pathBuilder('conadisModel'));
  }

  static const String nuiControlName = "nui";

  static const String relationshipControlName = "relationship";

  static const String conadisModelControlName = "conadisModel";

  late ConadisModelForm conadisModelForm;

  final SimpleCertificateFirstStepFamiliarModel?
      simpleCertificateFirstStepFamiliarModel;

  final FormGroup form;

  final String? path;

  String nuiControlPath() => pathBuilder(nuiControlName);
  String relationshipControlPath() => pathBuilder(relationshipControlName);
  String conadisModelControlPath() => pathBuilder(conadisModelControlName);
  String get _nuiValue => nuiControl.value ?? "";
  RelationshipSimpleCertificateType get _relationshipValue =>
      relationshipControl.value as RelationshipSimpleCertificateType;
  ConadisModel get _conadisModelValue => conadisModelForm.model;
  bool get containsNui {
    try {
      form.control(nuiControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsRelationship {
    try {
      form.control(relationshipControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsConadisModel {
    try {
      form.control(conadisModelControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get nuiErrors => nuiControl.errors;
  Object? get relationshipErrors => relationshipControl.errors;
  Object? get conadisModelErrors => conadisModelControl.errors;
  void get nuiFocus => form.focus(nuiControlPath());
  void get relationshipFocus => form.focus(relationshipControlPath());
  void get conadisModelFocus => form.focus(conadisModelControlPath());
  void nuiValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nuiControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void relationshipValueUpdate(
    RelationshipSimpleCertificateType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    relationshipControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void conadisModelValueUpdate(
    ConadisModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    conadisModelControl.updateValue(
        ConadisModelForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void nuiValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nuiControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void relationshipValuePatch(
    RelationshipSimpleCertificateType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    relationshipControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void conadisModelValuePatch(
    ConadisModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    conadisModelControl.updateValue(
        ConadisModelForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
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
  void relationshipValueReset(
    RelationshipSimpleCertificateType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      relationshipControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void conadisModelValueReset(
    ConadisModel value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      conadisModelControl.reset(
          value: ConadisModelForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormControl<String> get nuiControl =>
      form.control(nuiControlPath()) as FormControl<String>;
  FormControl<RelationshipSimpleCertificateType> get relationshipControl =>
      form.control(relationshipControlPath())
          as FormControl<RelationshipSimpleCertificateType>;
  FormGroup get conadisModelControl =>
      form.control(conadisModelControlPath()) as FormGroup;
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

  void relationshipSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      relationshipControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      relationshipControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void conadisModelSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      conadisModelControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      conadisModelControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  SimpleCertificateFirstStepFamiliarModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'SimpleCertificateFirstStepFamiliarModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return SimpleCertificateFirstStepFamiliarModel(
        nui: _nuiValue,
        relationship: _relationshipValue,
        conadisModel: _conadisModelValue);
  }

  SimpleCertificateFirstStepFamiliarModelForm copyWithPath(String? path) {
    return SimpleCertificateFirstStepFamiliarModelForm(
        simpleCertificateFirstStepFamiliarModel, form, path);
  }

  @override
  void updateValue(
    SimpleCertificateFirstStepFamiliarModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          SimpleCertificateFirstStepFamiliarModelForm.formElements(value)
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void reset({
    SimpleCertificateFirstStepFamiliarModel? value,
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
          SimpleCertificateFirstStepFamiliarModel?
              simpleCertificateFirstStepFamiliarModel) =>
      FormGroup({
        nuiControlName: FormControl<String>(
            value: simpleCertificateFirstStepFamiliarModel?.nui,
            validators: [
              requiredValidator,
              ecuadorDniValidator,
              length10Validator
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        relationshipControlName: FormControl<RelationshipSimpleCertificateType>(
            value: simpleCertificateFirstStepFamiliarModel?.relationship,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        conadisModelControlName: ConadisModelForm.formElements(
            simpleCertificateFirstStepFamiliarModel?.conadisModel)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ConadisModelForm implements FormModel<ConadisModel> {
  ConadisModelForm(
    this.conadisModel,
    this.form,
    this.path,
  ) {}

  static const String conadisControlName = "conadis";

  static const String conadisNumberControlName = "conadisNumber";

  final ConadisModel? conadisModel;

  final FormGroup form;

  final String? path;

  String conadisControlPath() => pathBuilder(conadisControlName);
  String conadisNumberControlPath() => pathBuilder(conadisNumberControlName);
  bool get _conadisValue => conadisControl.value as bool;
  String get _conadisNumberValue => conadisNumberControl.value ?? "";
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

  Object? get conadisErrors => conadisControl.errors;
  Object? get conadisNumberErrors => conadisNumberControl.errors;
  void get conadisFocus => form.focus(conadisControlPath());
  void get conadisNumberFocus => form.focus(conadisNumberControlPath());
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
  FormControl<bool> get conadisControl =>
      form.control(conadisControlPath()) as FormControl<bool>;
  FormControl<String> get conadisNumberControl =>
      form.control(conadisNumberControlPath()) as FormControl<String>;
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

  @override
  ConadisModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'ConadisModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return ConadisModel(
        conadis: _conadisValue, conadisNumber: _conadisNumberValue);
  }

  ConadisModelForm copyWithPath(String? path) {
    return ConadisModelForm(conadisModel, form, path);
  }

  @override
  void updateValue(
    ConadisModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ConadisModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    ConadisModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(ConadisModel? conadisModel) => FormGroup({
        conadisControlName: FormControl<bool>(
            value: conadisModel?.conadis,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        conadisNumberControlName: FormControl<String>(
            value: conadisModel?.conadisNumber,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [
            conadisNumberValidatorGroup
          ],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveSimpleCertificateFirstStepFamiliarModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveSimpleCertificateFirstStepFamiliarModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(
      SimpleCertificateFirstStepFamiliarModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      SimpleCertificateFirstStepFamiliarModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      SimpleCertificateFirstStepFamiliarModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveSimpleCertificateFirstStepFamiliarModelForm.of(context);

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

class ReactiveSimpleCertificateFirstStepFamiliarModelFormFormGroupArrayBuilder<
    V> extends StatelessWidget {
  const ReactiveSimpleCertificateFirstStepFamiliarModelFormFormGroupArrayBuilder({
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
      SimpleCertificateFirstStepFamiliarModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      SimpleCertificateFirstStepFamiliarModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      SimpleCertificateFirstStepFamiliarModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel =
        ReactiveSimpleCertificateFirstStepFamiliarModelForm.of(context);

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

class ReactiveRejectInformationFormConsumer extends StatelessWidget {
  const ReactiveRejectInformationFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, RejectInformationForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveRejectInformationForm.of(context);

    if (formModel is! RejectInformationForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class RejectInformationFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const RejectInformationFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final RejectInformationForm form;
}

class ReactiveRejectInformationForm extends StatelessWidget {
  const ReactiveRejectInformationForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final RejectInformationForm form;

  final WillPopCallback? onWillPop;

  static RejectInformationForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              RejectInformationFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        RejectInformationFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as RejectInformationFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return RejectInformationFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class RejectInformationFormBuilder extends StatefulWidget {
  const RejectInformationFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final RejectInformation? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, RejectInformationForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, RejectInformationForm formModel)?
      initState;

  @override
  _RejectInformationFormBuilderState createState() =>
      _RejectInformationFormBuilderState();
}

class _RejectInformationFormBuilderState
    extends State<RejectInformationFormBuilder> {
  late RejectInformationForm _formModel;

  @override
  void initState() {
    _formModel = RejectInformationForm(
        widget.model, RejectInformationForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant RejectInformationFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = RejectInformationForm(
          widget.model, RejectInformationForm.formElements(widget.model), null);

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
    return ReactiveRejectInformationForm(
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

class RejectInformationForm implements FormModel<RejectInformation> {
  RejectInformationForm(
    this.rejectInformation,
    this.form,
    this.path,
  ) {}

  static const String rejectReasonControlName = "rejectReason";

  static const String rejectDescriptionControlName = "rejectDescription";

  final RejectInformation? rejectInformation;

  final FormGroup form;

  final String? path;

  String rejectReasonControlPath() => pathBuilder(rejectReasonControlName);
  String rejectDescriptionControlPath() =>
      pathBuilder(rejectDescriptionControlName);
  OrdersRejectingReasonType get _rejectReasonValue =>
      rejectReasonControl.value as OrdersRejectingReasonType;
  String get _rejectDescriptionValue =>
      rejectDescriptionControl.value as String;
  bool get containsRejectReason {
    try {
      form.control(rejectReasonControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsRejectDescription {
    try {
      form.control(rejectDescriptionControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get rejectReasonErrors => rejectReasonControl.errors;
  Object? get rejectDescriptionErrors => rejectDescriptionControl.errors;
  void get rejectReasonFocus => form.focus(rejectReasonControlPath());
  void get rejectDescriptionFocus => form.focus(rejectDescriptionControlPath());
  void rejectReasonValueUpdate(
    OrdersRejectingReasonType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    rejectReasonControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void rejectDescriptionValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    rejectDescriptionControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void rejectReasonValuePatch(
    OrdersRejectingReasonType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    rejectReasonControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void rejectDescriptionValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    rejectDescriptionControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void rejectReasonValueReset(
    OrdersRejectingReasonType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      rejectReasonControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void rejectDescriptionValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      rejectDescriptionControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<OrdersRejectingReasonType> get rejectReasonControl =>
      form.control(rejectReasonControlPath())
          as FormControl<OrdersRejectingReasonType>;
  FormControl<String> get rejectDescriptionControl =>
      form.control(rejectDescriptionControlPath()) as FormControl<String>;
  void rejectReasonSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      rejectReasonControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      rejectReasonControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void rejectDescriptionSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      rejectDescriptionControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      rejectDescriptionControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  RejectInformation get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'RejectInformationForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return RejectInformation(
        rejectReason: _rejectReasonValue,
        rejectDescription: _rejectDescriptionValue);
  }

  RejectInformationForm copyWithPath(String? path) {
    return RejectInformationForm(rejectInformation, form, path);
  }

  @override
  void updateValue(
    RejectInformation value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(RejectInformationForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    RejectInformation? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(RejectInformation? rejectInformation) =>
      FormGroup({
        rejectReasonControlName: FormControl<OrdersRejectingReasonType>(
            value: rejectInformation?.rejectReason,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        rejectDescriptionControlName: FormControl<String>(
            value: rejectInformation?.rejectDescription,
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

class ReactiveRejectInformationFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveRejectInformationFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(RejectInformationForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      RejectInformationForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, RejectInformationForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveRejectInformationForm.of(context);

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

class ReactiveRejectInformationFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveRejectInformationFormFormGroupArrayBuilder({
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
      RejectInformationForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      RejectInformationForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, RejectInformationForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveRejectInformationForm.of(context);

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

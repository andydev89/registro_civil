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
  late FormGroup _form;

  late SimpleCertificateFirstStepFamiliarModelForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel =
        SimpleCertificateFirstStepFamiliarModelForm(widget.model, _form, null);

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
      covariant SimpleCertificateFirstStepFamiliarModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = SimpleCertificateFirstStepFamiliarModelForm(
          widget.model, _form, null);
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
    return ReactiveSimpleCertificateFirstStepFamiliarModelForm(
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

  static String nuiControlName = "nui";

  static String relationshipControlName = "relationship";

  static String conadisModelControlName = "conadisModel";

  late ConadisModelForm conadisModelForm;

  final SimpleCertificateFirstStepFamiliarModel?
      simpleCertificateFirstStepFamiliarModel;

  final FormGroup form;

  final String? path;

  String nuiControlPath() => pathBuilder(nuiControlName);
  String relationshipControlPath() => pathBuilder(relationshipControlName);
  String conadisModelControlPath() => pathBuilder(conadisModelControlName);
  String get _nuiValue => nuiControl.value ?? "";
  RelationshipSimpleCertificateEnum get _relationshipValue =>
      relationshipControl.value as RelationshipSimpleCertificateEnum;
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
    RelationshipSimpleCertificateEnum value, {
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
        ConadisModelForm(value, FormGroup({}), null).formElements().rawValue,
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
    RelationshipSimpleCertificateEnum value, {
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
        ConadisModelForm(value, form, null).formElements().rawValue,
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
    RelationshipSimpleCertificateEnum value, {
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
          value: ConadisModelForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormControl<String> get nuiControl =>
      form.control(nuiControlPath()) as FormControl<String>;
  FormControl<RelationshipSimpleCertificateEnum> get relationshipControl =>
      form.control(relationshipControlPath())
          as FormControl<RelationshipSimpleCertificateEnum>;
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
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
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
          SimpleCertificateFirstStepFamiliarModelForm(
                  value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    SimpleCertificateFirstStepFamiliarModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: SimpleCertificateFirstStepFamiliarModelForm(
                  value, FormGroup({}), null)
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
        relationshipControlName: FormControl<RelationshipSimpleCertificateEnum>(
            value: simpleCertificateFirstStepFamiliarModel?.relationship,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        conadisModelControlName: conadisModelForm.formElements()
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

  static String conadisControlName = "conadis";

  static String conadisNumberControlName = "conadisNumber";

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
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
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
      form.updateValue(
          ConadisModelForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    ConadisModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ConadisModelForm(value, FormGroup({}), null)
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
  late FormGroup _form;

  late RejectInformationForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = RejectInformationForm(widget.model, _form, null);

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
  void didUpdateWidget(covariant RejectInformationFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = RejectInformationForm(widget.model, _form, null);
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
    return ReactiveRejectInformationForm(
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

class RejectInformationForm implements FormModel<RejectInformation> {
  RejectInformationForm(
    this.rejectInformation,
    this.form,
    this.path,
  ) {}

  static String rejectReasonControlName = "rejectReason";

  static String rejectDescriptionControlName = "rejectDescription";

  final RejectInformation? rejectInformation;

  final FormGroup form;

  final String? path;

  String rejectReasonControlPath() => pathBuilder(rejectReasonControlName);
  String rejectDescriptionControlPath() =>
      pathBuilder(rejectDescriptionControlName);
  OrdersRejectingReason get _rejectReasonValue =>
      rejectReasonControl.value as OrdersRejectingReason;
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
    OrdersRejectingReason value, {
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
    OrdersRejectingReason value, {
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
    OrdersRejectingReason value, {
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
  FormControl<OrdersRejectingReason> get rejectReasonControl =>
      form.control(rejectReasonControlPath())
          as FormControl<OrdersRejectingReason>;
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
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
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
      form.updateValue(
          RejectInformationForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void resetValue(
    RejectInformation value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: RejectInformationForm(value, FormGroup({}), null)
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
        rejectReasonControlName: FormControl<OrdersRejectingReason>(
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

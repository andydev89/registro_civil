// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'term_and_use_conditions_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveTermAndUseConditionsModelFormConsumer extends StatelessWidget {
  const ReactiveTermAndUseConditionsModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      TermAndUseConditionsModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveTermAndUseConditionsModelForm.of(context);

    if (formModel is! TermAndUseConditionsModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class TermAndUseConditionsModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const TermAndUseConditionsModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final TermAndUseConditionsModelForm form;
}

class ReactiveTermAndUseConditionsModelForm extends StatelessWidget {
  const ReactiveTermAndUseConditionsModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final TermAndUseConditionsModelForm form;

  final WillPopCallback? onWillPop;

  static TermAndUseConditionsModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              TermAndUseConditionsModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        TermAndUseConditionsModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as TermAndUseConditionsModelFormInheritedStreamer)
            .form;
  }

  @override
  Widget build(BuildContext context) {
    return TermAndUseConditionsModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class TermAndUseConditionsModelFormBuilder extends StatefulWidget {
  const TermAndUseConditionsModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final TermAndUseConditionsModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      TermAndUseConditionsModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, TermAndUseConditionsModelForm formModel)? initState;

  @override
  _TermAndUseConditionsModelFormBuilderState createState() =>
      _TermAndUseConditionsModelFormBuilderState();
}

class _TermAndUseConditionsModelFormBuilderState
    extends State<TermAndUseConditionsModelFormBuilder> {
  late TermAndUseConditionsModelForm _formModel;

  @override
  void initState() {
    _formModel = TermAndUseConditionsModelForm(widget.model,
        TermAndUseConditionsModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(
      covariant TermAndUseConditionsModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = TermAndUseConditionsModelForm(widget.model,
          TermAndUseConditionsModelForm.formElements(widget.model), null);

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
    return ReactiveTermAndUseConditionsModelForm(
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

class TermAndUseConditionsModelForm
    implements FormModel<TermAndUseConditionsModel> {
  TermAndUseConditionsModelForm(
    this.termAndUseConditionsModel,
    this.form,
    this.path,
  ) {}

  static const String acceptControlName = "accept";

  final TermAndUseConditionsModel? termAndUseConditionsModel;

  final FormGroup form;

  final String? path;

  String acceptControlPath() => pathBuilder(acceptControlName);
  bool get _acceptValue => acceptControl.value as bool;
  bool get containsAccept {
    try {
      form.control(acceptControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get acceptErrors => acceptControl.errors;
  void get acceptFocus => form.focus(acceptControlPath());
  void acceptValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    acceptControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void acceptValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    acceptControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void acceptValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      acceptControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<bool> get acceptControl =>
      form.control(acceptControlPath()) as FormControl<bool>;
  void acceptSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      acceptControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      acceptControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  TermAndUseConditionsModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return TermAndUseConditionsModel(accept: _acceptValue);
  }

  TermAndUseConditionsModelForm copyWithPath(String? path) {
    return TermAndUseConditionsModelForm(termAndUseConditionsModel, form, path);
  }

  @override
  void updateValue(
    TermAndUseConditionsModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          TermAndUseConditionsModelForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  @override
  void reset({
    TermAndUseConditionsModel? value,
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
          TermAndUseConditionsModel? termAndUseConditionsModel) =>
      FormGroup({
        acceptControlName: FormControl<bool>(
            value: termAndUseConditionsModel?.accept,
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

class ReactiveTermAndUseConditionsModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveTermAndUseConditionsModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(TermAndUseConditionsModelForm formModel)?
      control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      TermAndUseConditionsModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      TermAndUseConditionsModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveTermAndUseConditionsModelForm.of(context);

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

class ReactiveTermAndUseConditionsModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveTermAndUseConditionsModelFormFormGroupArrayBuilder({
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
      TermAndUseConditionsModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      TermAndUseConditionsModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      TermAndUseConditionsModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveTermAndUseConditionsModelForm.of(context);

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

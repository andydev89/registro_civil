// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'enter_email_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveEnterEmailModelFormConsumer extends StatelessWidget {
  const ReactiveEnterEmailModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, EnterEmailModelForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveEnterEmailModelForm.of(context);

    if (formModel is! EnterEmailModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class EnterEmailModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const EnterEmailModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final EnterEmailModelForm form;
}

class ReactiveEnterEmailModelForm extends StatelessWidget {
  const ReactiveEnterEmailModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final EnterEmailModelForm form;

  final WillPopCallback? onWillPop;

  static EnterEmailModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              EnterEmailModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        EnterEmailModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as EnterEmailModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return EnterEmailModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class EnterEmailModelFormBuilder extends StatefulWidget {
  const EnterEmailModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final EnterEmailModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, EnterEmailModelForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, EnterEmailModelForm formModel)?
      initState;

  @override
  _EnterEmailModelFormBuilderState createState() =>
      _EnterEmailModelFormBuilderState();
}

class _EnterEmailModelFormBuilderState
    extends State<EnterEmailModelFormBuilder> {
  late EnterEmailModelForm _formModel;

  @override
  void initState() {
    _formModel = EnterEmailModelForm(
        widget.model, EnterEmailModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant EnterEmailModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = EnterEmailModelForm(
          widget.model, EnterEmailModelForm.formElements(widget.model), null);

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
    return ReactiveEnterEmailModelForm(
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

class EnterEmailModelForm implements FormModel<EnterEmailModel> {
  EnterEmailModelForm(
    this.enterEmailModel,
    this.form,
    this.path,
  ) {}

  static const String emailControlName = "email";

  final EnterEmailModel? enterEmailModel;

  final FormGroup form;

  final String? path;

  String emailControlPath() => pathBuilder(emailControlName);
  String get _emailValue => emailControl.value ?? "";
  bool get containsEmail {
    try {
      form.control(emailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get emailErrors => emailControl.errors;
  void get emailFocus => form.focus(emailControlPath());
  void emailValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.updateValue(value,
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

  void emailValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
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
  EnterEmailModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return EnterEmailModel(email: _emailValue);
  }

  EnterEmailModelForm copyWithPath(String? path) {
    return EnterEmailModelForm(enterEmailModel, form, path);
  }

  @override
  void updateValue(
    EnterEmailModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(EnterEmailModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    EnterEmailModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(EnterEmailModel? enterEmailModel) => FormGroup({
        emailControlName: FormControl<String>(
            value: enterEmailModel?.email,
            validators: [requiredValidator, emailValidator],
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

class ReactiveEnterEmailModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveEnterEmailModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(EnterEmailModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      EnterEmailModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, EnterEmailModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveEnterEmailModelForm.of(context);

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

class ReactiveEnterEmailModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveEnterEmailModelFormFormGroupArrayBuilder({
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
      EnterEmailModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      EnterEmailModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, EnterEmailModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveEnterEmailModelForm.of(context);

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

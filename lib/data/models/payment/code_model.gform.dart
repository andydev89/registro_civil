// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'code_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveCodeModelFormConsumer extends StatelessWidget {
  const ReactiveCodeModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, CodeModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCodeModelForm.of(context);

    if (formModel is! CodeModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class CodeModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const CodeModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final CodeModelForm form;
}

class ReactiveCodeModelForm extends StatelessWidget {
  const ReactiveCodeModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final CodeModelForm form;

  final WillPopCallback? onWillPop;

  static CodeModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<CodeModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        CodeModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as CodeModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return CodeModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class CodeModelFormBuilder extends StatefulWidget {
  const CodeModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final CodeModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, CodeModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context, CodeModelForm formModel)? initState;

  @override
  _CodeModelFormBuilderState createState() => _CodeModelFormBuilderState();
}

class _CodeModelFormBuilderState extends State<CodeModelFormBuilder> {
  late CodeModelForm _formModel;

  @override
  void initState() {
    _formModel = CodeModelForm(
        widget.model, CodeModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant CodeModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = CodeModelForm(
          widget.model, CodeModelForm.formElements(widget.model), null);

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
    return ReactiveCodeModelForm(
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

class CodeModelForm implements FormModel<CodeModel> {
  CodeModelForm(
    this.codeModel,
    this.form,
    this.path,
  ) {}

  static const String codeControlName = "code";

  final CodeModel? codeModel;

  final FormGroup form;

  final String? path;

  String codeControlPath() => pathBuilder(codeControlName);
  String get _codeValue => codeControl.value as String;
  bool get containsCode {
    try {
      form.control(codeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get codeErrors => codeControl.errors;
  void get codeFocus => form.focus(codeControlPath());
  void codeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    codeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void codeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    codeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void codeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      codeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get codeControl =>
      form.control(codeControlPath()) as FormControl<String>;
  void codeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      codeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      codeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  CodeModel get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return CodeModel(code: _codeValue);
  }

  CodeModelForm copyWithPath(String? path) {
    return CodeModelForm(codeModel, form, path);
  }

  @override
  void updateValue(
    CodeModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(CodeModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    CodeModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(CodeModel? codeModel) => FormGroup({
        codeControlName: FormControl<String>(
            value: codeModel?.code,
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

class ReactiveCodeModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveCodeModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(CodeModelForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, CodeModelForm formModel)?
      builder;

  final Widget Function(
          BuildContext context, int i, T? item, CodeModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCodeModelForm.of(context);

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

class ReactiveCodeModelFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveCodeModelFormFormGroupArrayBuilder({
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
      CodeModelForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, CodeModelForm formModel)?
      builder;

  final Widget Function(
          BuildContext context, int i, V? item, CodeModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCodeModelForm.of(context);

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

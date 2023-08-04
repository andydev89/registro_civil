// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'document_validation_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveDocumentValidationModelFormConsumer extends StatelessWidget {
  const ReactiveDocumentValidationModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      DocumentValidationModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDocumentValidationModelForm.of(context);

    if (formModel is! DocumentValidationModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class DocumentValidationModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const DocumentValidationModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final DocumentValidationModelForm form;
}

class ReactiveDocumentValidationModelForm extends StatelessWidget {
  const ReactiveDocumentValidationModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final DocumentValidationModelForm form;

  final WillPopCallback? onWillPop;

  static DocumentValidationModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              DocumentValidationModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        DocumentValidationModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as DocumentValidationModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return DocumentValidationModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class DocumentValidationModelFormBuilder extends StatefulWidget {
  const DocumentValidationModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final DocumentValidationModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      DocumentValidationModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, DocumentValidationModelForm formModel)? initState;

  @override
  _DocumentValidationModelFormBuilderState createState() =>
      _DocumentValidationModelFormBuilderState();
}

class _DocumentValidationModelFormBuilderState
    extends State<DocumentValidationModelFormBuilder> {
  late DocumentValidationModelForm _formModel;

  @override
  void initState() {
    _formModel = DocumentValidationModelForm(widget.model,
        DocumentValidationModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant DocumentValidationModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = DocumentValidationModelForm(widget.model,
          DocumentValidationModelForm.formElements(widget.model), null);

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
    return ReactiveDocumentValidationModelForm(
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

class DocumentValidationModelForm
    implements FormModel<DocumentValidationModel> {
  DocumentValidationModelForm(
    this.documentValidationModel,
    this.form,
    this.path,
  ) {}

  static const String documentCodeControlName = "documentCode";

  static const String issueDateControlName = "issueDate";

  final DocumentValidationModel? documentValidationModel;

  final FormGroup form;

  final String? path;

  String documentCodeControlPath() => pathBuilder(documentCodeControlName);
  String issueDateControlPath() => pathBuilder(issueDateControlName);
  String get _documentCodeValue => documentCodeControl.value as String;
  DateTime get _issueDateValue => issueDateControl.value as DateTime;
  bool get containsDocumentCode {
    try {
      form.control(documentCodeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsIssueDate {
    try {
      form.control(issueDateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get documentCodeErrors => documentCodeControl.errors;
  Object? get issueDateErrors => issueDateControl.errors;
  void get documentCodeFocus => form.focus(documentCodeControlPath());
  void get issueDateFocus => form.focus(issueDateControlPath());
  void documentCodeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    documentCodeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void issueDateValueUpdate(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    issueDateControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void documentCodeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    documentCodeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void issueDateValuePatch(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    issueDateControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void documentCodeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      documentCodeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void issueDateValueReset(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      issueDateControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get documentCodeControl =>
      form.control(documentCodeControlPath()) as FormControl<String>;
  FormControl<DateTime> get issueDateControl =>
      form.control(issueDateControlPath()) as FormControl<DateTime>;
  void documentCodeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      documentCodeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      documentCodeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void issueDateSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      issueDateControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      issueDateControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  DocumentValidationModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'DocumentValidationModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return DocumentValidationModel(
        documentCode: _documentCodeValue, issueDate: _issueDateValue);
  }

  DocumentValidationModelForm copyWithPath(String? path) {
    return DocumentValidationModelForm(documentValidationModel, form, path);
  }

  @override
  void updateValue(
    DocumentValidationModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(DocumentValidationModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    DocumentValidationModel? value,
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
          DocumentValidationModel? documentValidationModel) =>
      FormGroup({
        documentCodeControlName: FormControl<String>(
            value: documentValidationModel?.documentCode,
            validators: [requiredValidator, length11Validator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        issueDateControlName: FormControl<DateTime>(
            value: documentValidationModel?.issueDate,
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

class ReactiveDocumentValidationModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveDocumentValidationModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(DocumentValidationModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      DocumentValidationModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      DocumentValidationModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDocumentValidationModelForm.of(context);

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

class ReactiveDocumentValidationModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveDocumentValidationModelFormFormGroupArrayBuilder({
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
      DocumentValidationModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      DocumentValidationModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      DocumentValidationModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDocumentValidationModelForm.of(context);

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

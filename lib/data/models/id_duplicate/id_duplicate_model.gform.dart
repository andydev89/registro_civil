// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'id_duplicate_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveIdDuplicateModelFormConsumer extends StatelessWidget {
  const ReactiveIdDuplicateModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, IdDuplicateModelForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveIdDuplicateModelForm.of(context);

    if (formModel is! IdDuplicateModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class IdDuplicateModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const IdDuplicateModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final IdDuplicateModelForm form;
}

class ReactiveIdDuplicateModelForm extends StatelessWidget {
  const ReactiveIdDuplicateModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final IdDuplicateModelForm form;

  final WillPopCallback? onWillPop;

  static IdDuplicateModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              IdDuplicateModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        IdDuplicateModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as IdDuplicateModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return IdDuplicateModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class IdDuplicateModelFormBuilder extends StatefulWidget {
  const IdDuplicateModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final IdDuplicateModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, IdDuplicateModelForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, IdDuplicateModelForm formModel)?
      initState;

  @override
  _IdDuplicateModelFormBuilderState createState() =>
      _IdDuplicateModelFormBuilderState();
}

class _IdDuplicateModelFormBuilderState
    extends State<IdDuplicateModelFormBuilder> {
  late IdDuplicateModelForm _formModel;

  @override
  void initState() {
    _formModel = IdDuplicateModelForm(
        widget.model, IdDuplicateModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant IdDuplicateModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = IdDuplicateModelForm(
          widget.model, IdDuplicateModelForm.formElements(widget.model), null);

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
    return ReactiveIdDuplicateModelForm(
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

class IdDuplicateModelForm implements FormModel<IdDuplicateModel> {
  IdDuplicateModelForm(
    this.idDuplicateModel,
    this.form,
    this.path,
  ) {}

  static const String agencyIdControlName = "agencyId";

  final IdDuplicateModel? idDuplicateModel;

  final FormGroup form;

  final String? path;

  String agencyIdControlPath() => pathBuilder(agencyIdControlName);
  AgencyModel? get _agencyIdValue => agencyIdControl?.value;
  bool get containsAgencyId {
    try {
      form.control(agencyIdControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get agencyIdErrors => agencyIdControl?.errors;
  void get agencyIdFocus => form.focus(agencyIdControlPath());
  void agencyIdRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsAgencyId) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          agencyIdControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            agencyIdControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void agencyIdValueUpdate(
    AgencyModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    agencyIdControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void agencyIdValuePatch(
    AgencyModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    agencyIdControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void agencyIdValueReset(
    AgencyModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      agencyIdControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<AgencyModel>? get agencyIdControl => containsAgencyId
      ? form.control(agencyIdControlPath()) as FormControl<AgencyModel>?
      : null;
  void agencyIdSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      agencyIdControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      agencyIdControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  IdDuplicateModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'IdDuplicateModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return IdDuplicateModel(
        type: idDuplicateModel?.type,
        requestOwner: idDuplicateModel?.requestOwner,
        nui: idDuplicateModel?.nui,
        birthdate: idDuplicateModel?.birthdate,
        reasonType: idDuplicateModel?.reasonType,
        agencyId: _agencyIdValue,
        provinceId: idDuplicateModel?.provinceId,
        paymentType: idDuplicateModel?.paymentType);
  }

  IdDuplicateModelForm copyWithPath(String? path) {
    return IdDuplicateModelForm(idDuplicateModel, form, path);
  }

  @override
  void updateValue(
    IdDuplicateModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(IdDuplicateModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    IdDuplicateModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(IdDuplicateModel? idDuplicateModel) =>
      FormGroup({
        agencyIdControlName: FormControl<AgencyModel>(
            value: idDuplicateModel?.agencyId,
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

class ReactiveIdDuplicateModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveIdDuplicateModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(IdDuplicateModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      IdDuplicateModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, IdDuplicateModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveIdDuplicateModelForm.of(context);

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

class ReactiveIdDuplicateModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveIdDuplicateModelFormFormGroupArrayBuilder({
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
      IdDuplicateModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      IdDuplicateModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, IdDuplicateModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveIdDuplicateModelForm.of(context);

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

class ReactiveProcedureTypeSubModelFormConsumer extends StatelessWidget {
  const ReactiveProcedureTypeSubModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ProcedureTypeSubModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProcedureTypeSubModelForm.of(context);

    if (formModel is! ProcedureTypeSubModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ProcedureTypeSubModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ProcedureTypeSubModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ProcedureTypeSubModelForm form;
}

class ReactiveProcedureTypeSubModelForm extends StatelessWidget {
  const ReactiveProcedureTypeSubModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ProcedureTypeSubModelForm form;

  final WillPopCallback? onWillPop;

  static ProcedureTypeSubModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ProcedureTypeSubModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ProcedureTypeSubModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ProcedureTypeSubModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ProcedureTypeSubModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ProcedureTypeSubModelFormBuilder extends StatefulWidget {
  const ProcedureTypeSubModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ProcedureTypeSubModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ProcedureTypeSubModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, ProcedureTypeSubModelForm formModel)? initState;

  @override
  _ProcedureTypeSubModelFormBuilderState createState() =>
      _ProcedureTypeSubModelFormBuilderState();
}

class _ProcedureTypeSubModelFormBuilderState
    extends State<ProcedureTypeSubModelFormBuilder> {
  late ProcedureTypeSubModelForm _formModel;

  @override
  void initState() {
    _formModel = ProcedureTypeSubModelForm(widget.model,
        ProcedureTypeSubModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ProcedureTypeSubModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ProcedureTypeSubModelForm(widget.model,
          ProcedureTypeSubModelForm.formElements(widget.model), null);

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
    return ReactiveProcedureTypeSubModelForm(
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

class ProcedureTypeSubModelForm implements FormModel<ProcedureTypeSubModel> {
  ProcedureTypeSubModelForm(
    this.procedureTypeSubModel,
    this.form,
    this.path,
  ) {}

  static const String idDuplicateProcedureTypeControlName =
      "idDuplicateProcedureType";

  static const String nuiControlName = "nui";

  static const String birthDateControlName = "birthDate";

  final ProcedureTypeSubModel? procedureTypeSubModel;

  final FormGroup form;

  final String? path;

  String idDuplicateProcedureTypeControlPath() =>
      pathBuilder(idDuplicateProcedureTypeControlName);
  String nuiControlPath() => pathBuilder(nuiControlName);
  String birthDateControlPath() => pathBuilder(birthDateControlName);
  IdDuplicateProcedureType get _idDuplicateProcedureTypeValue =>
      idDuplicateProcedureTypeControl.value as IdDuplicateProcedureType;
  String get _nuiValue => nuiControl.value as String;
  DateTime get _birthDateValue => birthDateControl.value as DateTime;
  bool get containsIdDuplicateProcedureType {
    try {
      form.control(idDuplicateProcedureTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsNui {
    try {
      form.control(nuiControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsBirthDate {
    try {
      form.control(birthDateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get idDuplicateProcedureTypeErrors =>
      idDuplicateProcedureTypeControl.errors;
  Object? get nuiErrors => nuiControl.errors;
  Object? get birthDateErrors => birthDateControl.errors;
  void get idDuplicateProcedureTypeFocus =>
      form.focus(idDuplicateProcedureTypeControlPath());
  void get nuiFocus => form.focus(nuiControlPath());
  void get birthDateFocus => form.focus(birthDateControlPath());
  void idDuplicateProcedureTypeValueUpdate(
    IdDuplicateProcedureType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idDuplicateProcedureTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nuiValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nuiControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void birthDateValueUpdate(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthDateControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idDuplicateProcedureTypeValuePatch(
    IdDuplicateProcedureType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idDuplicateProcedureTypeControl.patchValue(value,
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

  void birthDateValuePatch(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    birthDateControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idDuplicateProcedureTypeValueReset(
    IdDuplicateProcedureType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idDuplicateProcedureTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void nuiValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nuiControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void birthDateValueReset(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      birthDateControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<IdDuplicateProcedureType> get idDuplicateProcedureTypeControl =>
      form.control(idDuplicateProcedureTypeControlPath())
          as FormControl<IdDuplicateProcedureType>;
  FormControl<String> get nuiControl =>
      form.control(nuiControlPath()) as FormControl<String>;
  FormControl<DateTime> get birthDateControl =>
      form.control(birthDateControlPath()) as FormControl<DateTime>;
  void idDuplicateProcedureTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      idDuplicateProcedureTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      idDuplicateProcedureTypeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

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

  void birthDateSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      birthDateControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      birthDateControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ProcedureTypeSubModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'ProcedureTypeSubModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return ProcedureTypeSubModel(
        idDuplicateProcedureType: _idDuplicateProcedureTypeValue,
        nui: _nuiValue,
        birthDate: _birthDateValue);
  }

  ProcedureTypeSubModelForm copyWithPath(String? path) {
    return ProcedureTypeSubModelForm(procedureTypeSubModel, form, path);
  }

  @override
  void updateValue(
    ProcedureTypeSubModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ProcedureTypeSubModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    ProcedureTypeSubModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(ProcedureTypeSubModel? procedureTypeSubModel) =>
      FormGroup({
        idDuplicateProcedureTypeControlName:
            FormControl<IdDuplicateProcedureType>(
                value: procedureTypeSubModel?.idDuplicateProcedureType,
                validators: [requiredValidator],
                asyncValidators: [],
                asyncValidatorsDebounceTime: 250,
                disabled: false,
                touched: false),
        nuiControlName: FormControl<String>(
            value: procedureTypeSubModel?.nui,
            validators: [
              requiredValidator,
              ecuadorDniValidator,
              length10Validator
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        birthDateControlName: FormControl<DateTime>(
            value: procedureTypeSubModel?.birthDate,
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

class ReactiveProcedureTypeSubModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveProcedureTypeSubModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ProcedureTypeSubModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ProcedureTypeSubModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ProcedureTypeSubModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProcedureTypeSubModelForm.of(context);

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

class ReactiveProcedureTypeSubModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveProcedureTypeSubModelFormFormGroupArrayBuilder({
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
      ProcedureTypeSubModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ProcedureTypeSubModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ProcedureTypeSubModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProcedureTypeSubModelForm.of(context);

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

class ReactiveProcedureReasonSubModelFormConsumer extends StatelessWidget {
  const ReactiveProcedureReasonSubModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ProcedureReasonSubModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProcedureReasonSubModelForm.of(context);

    if (formModel is! ProcedureReasonSubModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ProcedureReasonSubModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const ProcedureReasonSubModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ProcedureReasonSubModelForm form;
}

class ReactiveProcedureReasonSubModelForm extends StatelessWidget {
  const ReactiveProcedureReasonSubModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ProcedureReasonSubModelForm form;

  final WillPopCallback? onWillPop;

  static ProcedureReasonSubModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ProcedureReasonSubModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ProcedureReasonSubModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ProcedureReasonSubModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ProcedureReasonSubModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ProcedureReasonSubModelFormBuilder extends StatefulWidget {
  const ProcedureReasonSubModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ProcedureReasonSubModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      ProcedureReasonSubModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, ProcedureReasonSubModelForm formModel)? initState;

  @override
  _ProcedureReasonSubModelFormBuilderState createState() =>
      _ProcedureReasonSubModelFormBuilderState();
}

class _ProcedureReasonSubModelFormBuilderState
    extends State<ProcedureReasonSubModelFormBuilder> {
  late ProcedureReasonSubModelForm _formModel;

  @override
  void initState() {
    _formModel = ProcedureReasonSubModelForm(widget.model,
        ProcedureReasonSubModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ProcedureReasonSubModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ProcedureReasonSubModelForm(widget.model,
          ProcedureReasonSubModelForm.formElements(widget.model), null);

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
    return ReactiveProcedureReasonSubModelForm(
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

class ProcedureReasonSubModelForm
    implements FormModel<ProcedureReasonSubModel> {
  ProcedureReasonSubModelForm(
    this.procedureReasonSubModel,
    this.form,
    this.path,
  ) {}

  static const String reasonControlName = "reason";

  static const String provinceControlName = "province";

  static const String agencyControlName = "agency";

  final ProcedureReasonSubModel? procedureReasonSubModel;

  final FormGroup form;

  final String? path;

  String reasonControlPath() => pathBuilder(reasonControlName);
  String provinceControlPath() => pathBuilder(provinceControlName);
  String agencyControlPath() => pathBuilder(agencyControlName);
  IdDuplicateReason get _reasonValue =>
      reasonControl.value as IdDuplicateReason;
  LocationModel get _provinceValue => provinceControl.value as LocationModel;
  AgencyModel get _agencyValue => agencyControl.value as AgencyModel;
  bool get containsReason {
    try {
      form.control(reasonControlPath());
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

  bool get containsAgency {
    try {
      form.control(agencyControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get reasonErrors => reasonControl.errors;
  Object? get provinceErrors => provinceControl.errors;
  Object? get agencyErrors => agencyControl.errors;
  void get reasonFocus => form.focus(reasonControlPath());
  void get provinceFocus => form.focus(provinceControlPath());
  void get agencyFocus => form.focus(agencyControlPath());
  void reasonValueUpdate(
    IdDuplicateReason value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    reasonControl.updateValue(value,
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

  void agencyValueUpdate(
    AgencyModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    agencyControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void reasonValuePatch(
    IdDuplicateReason value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    reasonControl.patchValue(value,
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

  void reasonValueReset(
    IdDuplicateReason value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      reasonControl.reset(
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
  void agencyValueReset(
    AgencyModel value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      agencyControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<IdDuplicateReason> get reasonControl =>
      form.control(reasonControlPath()) as FormControl<IdDuplicateReason>;
  FormControl<LocationModel> get provinceControl =>
      form.control(provinceControlPath()) as FormControl<LocationModel>;
  FormControl<AgencyModel> get agencyControl =>
      form.control(agencyControlPath()) as FormControl<AgencyModel>;
  void reasonSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      reasonControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      reasonControl.markAsEnabled(
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
  ProcedureReasonSubModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'ProcedureReasonSubModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return ProcedureReasonSubModel(
        reason: _reasonValue, province: _provinceValue, agency: _agencyValue);
  }

  ProcedureReasonSubModelForm copyWithPath(String? path) {
    return ProcedureReasonSubModelForm(procedureReasonSubModel, form, path);
  }

  @override
  void updateValue(
    ProcedureReasonSubModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ProcedureReasonSubModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    ProcedureReasonSubModel? value,
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
          ProcedureReasonSubModel? procedureReasonSubModel) =>
      FormGroup({
        reasonControlName: FormControl<IdDuplicateReason>(
            value: procedureReasonSubModel?.reason,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        provinceControlName: FormControl<LocationModel>(
            value: procedureReasonSubModel?.province,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        agencyControlName: FormControl<AgencyModel>(
            value: procedureReasonSubModel?.agency,
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

class ReactiveProcedureReasonSubModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveProcedureReasonSubModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ProcedureReasonSubModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ProcedureReasonSubModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      ProcedureReasonSubModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProcedureReasonSubModelForm.of(context);

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

class ReactiveProcedureReasonSubModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveProcedureReasonSubModelFormFormGroupArrayBuilder({
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
      ProcedureReasonSubModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ProcedureReasonSubModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      ProcedureReasonSubModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProcedureReasonSubModelForm.of(context);

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

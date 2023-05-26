// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'querys_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveQueryScheduleByUserFormConsumer extends StatelessWidget {
  const ReactiveQueryScheduleByUserFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context, QueryScheduleByUserForm formModel,
      Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveQueryScheduleByUserForm.of(context);

    if (formModel is! QueryScheduleByUserForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class QueryScheduleByUserFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const QueryScheduleByUserFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final QueryScheduleByUserForm form;
}

class ReactiveQueryScheduleByUserForm extends StatelessWidget {
  const ReactiveQueryScheduleByUserForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final QueryScheduleByUserForm form;

  final WillPopCallback? onWillPop;

  static QueryScheduleByUserForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              QueryScheduleByUserFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        QueryScheduleByUserFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as QueryScheduleByUserFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return QueryScheduleByUserFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class QueryScheduleByUserFormBuilder extends StatefulWidget {
  const QueryScheduleByUserFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final QueryScheduleByUser? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context, QueryScheduleByUserForm formModel,
      Widget? child) builder;

  final void Function(BuildContext context, QueryScheduleByUserForm formModel)?
      initState;

  @override
  _QueryScheduleByUserFormBuilderState createState() =>
      _QueryScheduleByUserFormBuilderState();
}

class _QueryScheduleByUserFormBuilderState
    extends State<QueryScheduleByUserFormBuilder> {
  late QueryScheduleByUserForm _formModel;

  @override
  void initState() {
    _formModel = QueryScheduleByUserForm(
        widget.model, QueryScheduleByUserForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant QueryScheduleByUserFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = QueryScheduleByUserForm(widget.model,
          QueryScheduleByUserForm.formElements(widget.model), null);

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
    return ReactiveQueryScheduleByUserForm(
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

class QueryScheduleByUserForm implements FormModel<QueryScheduleByUser> {
  QueryScheduleByUserForm(
    this.queryScheduleByUser,
    this.form,
    this.path,
  ) {}

  static const String pageNoControlName = "pageNo";

  static const String pageSizeControlName = "pageSize";

  static const String filterControlName = "filter";

  static const String sortByControlName = "sortBy";

  static const String fromControlName = "from";

  static const String toControlName = "to";

  static const String sortTypeControlName = "sortType";

  final QueryScheduleByUser? queryScheduleByUser;

  final FormGroup form;

  final String? path;

  String pageNoControlPath() => pathBuilder(pageNoControlName);
  String pageSizeControlPath() => pathBuilder(pageSizeControlName);
  String filterControlPath() => pathBuilder(filterControlName);
  String sortByControlPath() => pathBuilder(sortByControlName);
  String fromControlPath() => pathBuilder(fromControlName);
  String toControlPath() => pathBuilder(toControlName);
  String sortTypeControlPath() => pathBuilder(sortTypeControlName);
  int get _pageNoValue => pageNoControl.value as int;
  int get _pageSizeValue => pageSizeControl.value as int;
  String get _filterValue => filterControl.value as String;
  String get _sortByValue => sortByControl.value as String;
  DateTime? get _fromValue => fromControl?.value;
  DateTime? get _toValue => toControl?.value;
  SortType get _sortTypeValue => sortTypeControl.value as SortType;
  bool get containsPageNo {
    try {
      form.control(pageNoControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPageSize {
    try {
      form.control(pageSizeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsFilter {
    try {
      form.control(filterControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSortBy {
    try {
      form.control(sortByControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsFrom {
    try {
      form.control(fromControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsTo {
    try {
      form.control(toControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSortType {
    try {
      form.control(sortTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get pageNoErrors => pageNoControl.errors;
  Object? get pageSizeErrors => pageSizeControl.errors;
  Object? get filterErrors => filterControl.errors;
  Object? get sortByErrors => sortByControl.errors;
  Object? get fromErrors => fromControl?.errors;
  Object? get toErrors => toControl?.errors;
  Object? get sortTypeErrors => sortTypeControl.errors;
  void get pageNoFocus => form.focus(pageNoControlPath());
  void get pageSizeFocus => form.focus(pageSizeControlPath());
  void get filterFocus => form.focus(filterControlPath());
  void get sortByFocus => form.focus(sortByControlPath());
  void get fromFocus => form.focus(fromControlPath());
  void get toFocus => form.focus(toControlPath());
  void get sortTypeFocus => form.focus(sortTypeControlPath());
  void fromRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsFrom) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          fromControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            fromControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void toRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsTo) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          toControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            toControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void pageNoValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    pageNoControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void pageSizeValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    pageSizeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void filterValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    filterControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void sortByValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    sortByControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fromValueUpdate(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fromControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void toValueUpdate(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    toControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void sortTypeValueUpdate(
    SortType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    sortTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void pageNoValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    pageNoControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void pageSizeValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    pageSizeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void filterValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    filterControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void sortByValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    sortByControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fromValuePatch(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fromControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void toValuePatch(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    toControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void sortTypeValuePatch(
    SortType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    sortTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void pageNoValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      pageNoControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void pageSizeValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      pageSizeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void filterValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      filterControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void sortByValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      sortByControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void fromValueReset(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      fromControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void toValueReset(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      toControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void sortTypeValueReset(
    SortType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      sortTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<int> get pageNoControl =>
      form.control(pageNoControlPath()) as FormControl<int>;
  FormControl<int> get pageSizeControl =>
      form.control(pageSizeControlPath()) as FormControl<int>;
  FormControl<String> get filterControl =>
      form.control(filterControlPath()) as FormControl<String>;
  FormControl<String> get sortByControl =>
      form.control(sortByControlPath()) as FormControl<String>;
  FormControl<DateTime>? get fromControl => containsFrom
      ? form.control(fromControlPath()) as FormControl<DateTime>?
      : null;
  FormControl<DateTime>? get toControl => containsTo
      ? form.control(toControlPath()) as FormControl<DateTime>?
      : null;
  FormControl<SortType> get sortTypeControl =>
      form.control(sortTypeControlPath()) as FormControl<SortType>;
  void pageNoSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      pageNoControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      pageNoControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void pageSizeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      pageSizeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      pageSizeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void filterSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      filterControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      filterControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void sortBySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      sortByControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      sortByControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void fromSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      fromControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      fromControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void toSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      toControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      toControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void sortTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      sortTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      sortTypeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  QueryScheduleByUser get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'QueryScheduleByUserForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return QueryScheduleByUser(
        pageNo: _pageNoValue,
        pageSize: _pageSizeValue,
        filter: _filterValue,
        sortBy: _sortByValue,
        from: _fromValue,
        to: _toValue,
        sortType: _sortTypeValue);
  }

  QueryScheduleByUserForm copyWithPath(String? path) {
    return QueryScheduleByUserForm(queryScheduleByUser, form, path);
  }

  @override
  void updateValue(
    QueryScheduleByUser value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(QueryScheduleByUserForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    QueryScheduleByUser? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(QueryScheduleByUser? queryScheduleByUser) =>
      FormGroup({
        pageNoControlName: FormControl<int>(
            value: queryScheduleByUser?.pageNo,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        pageSizeControlName: FormControl<int>(
            value: queryScheduleByUser?.pageSize,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        filterControlName: FormControl<String>(
            value: queryScheduleByUser?.filter,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        sortByControlName: FormControl<String>(
            value: queryScheduleByUser?.sortBy,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        fromControlName: FormControl<DateTime>(
            value: queryScheduleByUser?.from,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        toControlName: FormControl<DateTime>(
            value: queryScheduleByUser?.to,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        sortTypeControlName: FormControl<SortType>(
            value: queryScheduleByUser?.sortType,
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

class ReactiveQueryScheduleByUserFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveQueryScheduleByUserFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(QueryScheduleByUserForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      QueryScheduleByUserForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      QueryScheduleByUserForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveQueryScheduleByUserForm.of(context);

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

class ReactiveQueryScheduleByUserFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveQueryScheduleByUserFormFormGroupArrayBuilder({
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
      QueryScheduleByUserForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      QueryScheduleByUserForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      QueryScheduleByUserForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveQueryScheduleByUserForm.of(context);

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

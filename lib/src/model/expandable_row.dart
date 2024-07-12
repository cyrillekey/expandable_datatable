import 'package:expandable_datatable/src/utility/condition_assert.dart';

class ExpandableRow {
  final List<ExpandableCell> _cells;
  ExpandableRow({
    required cells,
  }) : _cells = cells;

  List<ExpandableCell> get cells => _cells;
}

class ExpandableCell<T> {
  final String columnTitle;
  T? value;
  bool? cellEditable;
  bool isDropDown;
  List<String>? dropDownOptions;

  ExpandableCell(
      {required this.columnTitle,
      this.value,
      this.cellEditable,
      this.isDropDown = false,
      List<String>? dropDownOptions})
      : dropDownOptions = dropDownOptions ?? [] {
    alwaysAssert(
        (isDropDown == true &&
                (dropDownOptions == null || dropDownOptions.isEmpty) ||
            (dropDownOptions != null && dropDownOptions.isNotEmpty) &&
                isDropDown == false),
        "Drop down options must be provided if isDropDown is true");
  }
}

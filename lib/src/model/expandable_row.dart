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

  ExpandableCell({
    required this.columnTitle,
    this.value,
    this.cellEditable
  });
}

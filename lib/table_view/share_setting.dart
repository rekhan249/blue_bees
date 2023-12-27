import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ShareTable {
  final IconData iconData;
  final String invitation;
  final String email;
  final String name;

  ShareTable(
      {required this.iconData,
      required this.invitation,
      required this.email,
      required this.name});
}

class ShareTableDataSource extends DataGridSource {
  /// Creates the ShareTable data source class with required details.
  ShareTableDataSource({required List<ShareTable> shareTableData}) {
    _shareTableData = shareTableData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<IconData>(columnName: 'iconData', value: e.iconData),
              DataGridCell<String>(
                  columnName: 'Invitation', value: e.invitation),
              DataGridCell<String>(columnName: 'E-mail', value: e.email),
              DataGridCell<String>(columnName: 'The Name', value: e.name),
            ]))
        .toList();
  }

  List<DataGridRow> _shareTableData = [];

  @override
  List<DataGridRow> get rows => _shareTableData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      if (e.columnName == 'iconData') {
        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Icon(e.value),
        );
      } else {
        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Text(e.value.toString()),
        );
      }
    }).toList());
  }
}

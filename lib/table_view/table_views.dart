import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class AutomaticTable {
  final String serviceName;
  final String servicePrice;
  AutomaticTable({required this.serviceName, required this.servicePrice});
}

class AutomaticTableDataSource extends DataGridSource {
  /// Creates the automaticTable data source class with required details.
  AutomaticTableDataSource({required List<AutomaticTable> automaticTableData}) {
    _automaticTableData = automaticTableData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(
                  columnName: 'Service Name', value: e.serviceName),
              DataGridCell<String>(
                  columnName: 'Service Price', value: e.servicePrice),
            ]))
        .toList();
  }

  List<DataGridRow> _automaticTableData = [];

  @override
  List<DataGridRow> get rows => _automaticTableData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: Text(e.value.toString()),
      );
    }).toList());
  }
}

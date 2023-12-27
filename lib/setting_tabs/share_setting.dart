import 'package:blue_bees/table_view/share_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class SharedSetting extends StatefulWidget {
  const SharedSetting({super.key});

  @override
  State<SharedSetting> createState() => _SharedSettingState();
}

class _SharedSettingState extends State<SharedSetting> {
  final TextEditingController _firstcontrollers4 = TextEditingController();
  List<ShareTable> shareTable = <ShareTable>[];
  late ShareTableDataSource shareTableDataSource;
  @override
  void initState() {
    shareTable = getShareTableData();
    shareTableDataSource = ShareTableDataSource(shareTableData: shareTable);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                          style: const ButtonStyle(
                              shape: MaterialStatePropertyAll(LinearBorder()),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.green)),
                          onPressed: () {},
                          child: const Text(
                            'Invitation',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    SizedBox(width: 10.h),
                    Expanded(
                      child: TextFormField(
                        controller: _firstcontrollers4,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            hintText:
                                'Type the particular email to invite him'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Participant',
              style: TextStyle(color: Colors.black, fontSize: 18.sp),
            ),
            Container(
              margin: const EdgeInsets.all(05),
              child: Container(
                  margin: const EdgeInsets.all(05),
                  child: SfDataGrid(
                    source: shareTableDataSource,
                    columnWidthMode: ColumnWidthMode.fill,
                    columns: <GridColumn>[
                      GridColumn(
                          columnName: 'iconData',
                          label: Container(
                              padding: const EdgeInsets.all(8.0),
                              alignment: Alignment.center,
                              child: const Text(''))),
                      GridColumn(
                          columnName: 'invitation',
                          label: Container(
                              padding: const EdgeInsets.all(8.0),
                              alignment: Alignment.center,
                              child: const Text('Invitation'))),
                      GridColumn(
                          columnName: 'email',
                          label: Container(
                              padding: const EdgeInsets.all(8.0),
                              alignment: Alignment.center,
                              child: const Text('E-mail'))),
                      GridColumn(
                          columnName: 'name',
                          label: Container(
                              padding: const EdgeInsets.all(8.0),
                              alignment: Alignment.center,
                              child: const Text('Name'))),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }

  List<ShareTable> getShareTableData() {
    return [
      ShareTable(
          iconData: Icons.delete_forever,
          invitation: 'invitation',
          email: 'email',
          name: 'name'),
      ShareTable(
          iconData: Icons.delete_forever,
          invitation: 'invitation',
          email: 'email',
          name: 'name'),
    ];
  }
}

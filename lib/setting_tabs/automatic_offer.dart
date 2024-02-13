import 'package:blue_bees/table_view/table_views.dart';
import 'package:blue_bees/widgets/bottom_sheet_textform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class AutomaticOffer extends StatefulWidget {
  const AutomaticOffer({super.key});

  @override
  State<AutomaticOffer> createState() => _AutomaticOfferState();
}

class _AutomaticOfferState extends State<AutomaticOffer> {
  final TextEditingController _firstcontrollers4 = TextEditingController();
  final TextEditingController _namecontrollers = TextEditingController();
  List<AutomaticTable> automatics = <AutomaticTable>[];
  late AutomaticTableDataSource automaticTableDataSource;
  @override
  void initState() {
    automatics = getAutomaticTableData();
    automaticTableDataSource =
        AutomaticTableDataSource(automaticTableData: automatics);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Automatic Offers setting',
                  style: TextStyle(fontSize: 18.sp)),
              SizedBox(height: 10.h),
              Text('Previously added Offer', style: TextStyle(fontSize: 12.sp)),
              SizedBox(height: 10.h),
              Text('Offers to be Added', style: TextStyle(fontSize: 16.sp)),
              SizedBox(height: 10.h),
              Card(
                  elevation: 5,
                  child: Container(
                    height: 40.h,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.delete_forever,
                              color: Colors.red,
                            ),
                            Text('Insurance offer 1')
                          ]),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Select the price and interest offer to be automatically added to order',
                  style: TextStyle(fontSize: 12.sp),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormSingleIcon(
                    firstcontrollers: _namecontrollers,
                    hintText: 'Enter name here',
                    icon1: Icons.abc),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormBottomSheet(
                  firstcontrollers: _firstcontrollers4,
                  hintText: 'pressed here file',
                  icon1: Icons.file_copy,
                  icon2: Icons.abc,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.w),
                        child: ElevatedButton(
                            style: const ButtonStyle(
                                side: MaterialStatePropertyAll(
                                    BorderSide(color: Colors.black)),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                            onPressed: () {},
                            child: const Text("Upload xlsx file",
                                style: TextStyle(color: Colors.black))),
                      ),
                    ),
                    Text(
                      'Offer Price',
                      style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.all(05),
                  child: SfDataGrid(
                    source: automaticTableDataSource,
                    columnWidthMode: ColumnWidthMode.fill,
                    columns: <GridColumn>[
                      GridColumn(
                          columnName: 'serviceName',
                          label: Container(
                              padding: const EdgeInsets.all(8.0),
                              alignment: Alignment.center,
                              child: const Text('Service Name'))),
                      GridColumn(
                          columnName: 'servicePrice',
                          label: Container(
                              padding: const EdgeInsets.all(8.0),
                              alignment: Alignment.center,
                              child: const Text('Service Price'))),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                    Text('Favorite Place', style: TextStyle(fontSize: 15.sp)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormSingleIcon(
                    firstcontrollers: _namecontrollers,
                    hintText: 'Enter favorite place here',
                    icon1: Icons.abc),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                    Text('Favorite sector', style: TextStyle(fontSize: 15.sp)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormSingleIcon(
                    firstcontrollers: _namecontrollers,
                    hintText: 'Enter favorite sector here',
                    icon1: Icons.abc),
              ),
              Container(
                alignment: AlignmentDirectional.bottomEnd,
                width: double.infinity.w,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Colors.green)),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white)),
                      onPressed: () {},
                      child: const Text("Save the offer",
                          style: TextStyle(color: Colors.green))),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.bottomEnd,
                width: double.infinity.w,
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 12, 82, 205))),
                      onPressed: () {},
                      child: const Text("Add another offer",
                          style: TextStyle(color: Colors.white))),
                ),
              ),
              SizedBox(height: 10.h)
            ],
          ),
        ),
      ),
    );
  }

  List<AutomaticTable> getAutomaticTableData() {
    return [
      AutomaticTable(serviceName: 'serviceName', servicePrice: 'servicePrice'),
      AutomaticTable(serviceName: 'serviceName', servicePrice: 'servicePrice'),
    ];
  }
}

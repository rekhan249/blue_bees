import 'package:get/get.dart';

class SelectonOnlyOfCheckBoxes extends GetxController {
  CheckBoxesMain? _checkBoxesMain;
  final RxList<CheckBoxesMain> _checkBoxesMainList = [
    CheckBoxesMain(id: 0, value: false, title: "Service provider"),
    CheckBoxesMain(id: 1, value: false, title: "Service requester")
  ].obs;
  CheckBoxesMain? get checkBoxesMain => _checkBoxesMain;
  RxList<CheckBoxesMain> get checkBoxesMainList => _checkBoxesMainList;

  void particularSelectionofCheckboxes(bool? value, int index) {
    for (var element in _checkBoxesMainList) {
      element.value = false;
    }
    _checkBoxesMainList[index].value = value;

    update();
  }
}

class CheckBoxesMain {
  final int id;
  bool? value;
  final String title;

  CheckBoxesMain({required this.id, required this.value, required this.title});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'value': value,
      'title': title,
    };
  }

  factory CheckBoxesMain.fromMap(Map<String, dynamic> map) {
    return CheckBoxesMain(
      id: map['id'] as int,
      value: map['value'] as bool,
      title: map['title'] as String,
    );
  }
}

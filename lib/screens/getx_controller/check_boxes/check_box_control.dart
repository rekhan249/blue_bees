import 'package:get/get.dart';

class SelectonOnlyOfCheckBoxes extends GetxController {
  final RxList<CheckBoxesMain> _checkBoxesMainList = [
    CheckBoxesMain(id: 0, value: false, title: "Service provider"),
    CheckBoxesMain(id: 1, value: false, title: "Service requester")
  ].obs;

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

/*  

import 'package:get/get.dart';

class SelectonOnlyOfCheckBoxes extends GetxController {
  final RxList<CheckBoxesMain> _checkBoxesMainList = [
    CheckBoxesMain(
        id: 0, value: false, "Service provider", backendTitle: 'compeny'),
    CheckBoxesMain(
        id: 1, value: false, "Service requester", backendTitle: 'client')
  ].obs;

  RxList<CheckBoxesMain> get checkBoxesMainList => _checkBoxesMainList;

  void particularSelectionofCheckboxes(bool? value, int index) {
    for (var element in _checkBoxesMainList) {
      element.value = false;
    }
    _checkBoxesMainList[index].value = value!;

    update();
  }
}

class CheckBoxesMain {
  final int id;
  bool value;
  String? title;
  final String backendTitle;

  CheckBoxesMain(this.title,
      {required this.id, required this.value, required this.backendTitle});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'value': value,
      'title': title,
      'backendTitle': backendTitle,
    };
  }

  factory CheckBoxesMain.fromMap(Map<String, dynamic> map) {
    return CheckBoxesMain(
      map['title'] != null ? map['title'] as String : null,
      id: map['id'],
      value: map['value'],
      backendTitle: map['backendTitle'],
    );
  }
}


  */

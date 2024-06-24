import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'searchlift_widget.dart' show SearchliftWidget;
import 'package:flutter/material.dart';

class SearchliftModel extends FlutterFlowModel<SearchliftWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<LiftsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
  }
}

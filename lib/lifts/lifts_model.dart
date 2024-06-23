import '/flutter_flow/flutter_flow_util.dart';
import 'lifts_widget.dart' show LiftsWidget;
import 'package:flutter/material.dart';

class LiftsModel extends FlutterFlowModel<LiftsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

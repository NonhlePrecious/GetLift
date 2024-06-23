import '/flutter_flow/flutter_flow_util.dart';
import 'lift_details_widget.dart' show LiftDetailsWidget;
import 'package:flutter/material.dart';

class LiftDetailsModel extends FlutterFlowModel<LiftDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

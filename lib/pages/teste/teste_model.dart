import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'teste_widget.dart' show TesteWidget;
import 'package:flutter/material.dart';

class TesteModel extends FlutterFlowModel<TesteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.

  Map<ProdutosRecord, bool> checkboxValueMap = {};
  List<ProdutosRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
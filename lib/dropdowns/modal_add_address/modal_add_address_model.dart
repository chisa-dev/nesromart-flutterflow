import '/components/add_address_base/add_address_base_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'modal_add_address_widget.dart' show ModalAddAddressWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalAddAddressModel extends FlutterFlowModel<ModalAddAddressWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for addAddress_Base component.
  late AddAddressBaseModel addAddressBaseModel;

  @override
  void initState(BuildContext context) {
    addAddressBaseModel = createModel(context, () => AddAddressBaseModel());
  }

  @override
  void dispose() {
    addAddressBaseModel.dispose();
  }
}

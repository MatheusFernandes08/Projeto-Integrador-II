import '/components/countcontroler_widget.dart';
import '/components/imagebaunilha_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cupcake_baunilha_widget.dart' show CupcakeBaunilhaWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CupcakeBaunilhaModel extends FlutterFlowModel<CupcakeBaunilhaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Imagebaunilha component.
  late ImagebaunilhaModel imagebaunilhaModel;
  // Model for countcontroler component.
  late CountcontrolerModel countcontrolerModel;

  @override
  void initState(BuildContext context) {
    imagebaunilhaModel = createModel(context, () => ImagebaunilhaModel());
    countcontrolerModel = createModel(context, () => CountcontrolerModel());
  }

  @override
  void dispose() {
    imagebaunilhaModel.dispose();
    countcontrolerModel.dispose();
  }
}

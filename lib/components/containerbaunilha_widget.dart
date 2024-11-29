import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'containerbaunilha_model.dart';
export 'containerbaunilha_model.dart';

class ContainerbaunilhaWidget extends StatefulWidget {
  const ContainerbaunilhaWidget({super.key});

  @override
  State<ContainerbaunilhaWidget> createState() =>
      _ContainerbaunilhaWidgetState();
}

class _ContainerbaunilhaWidgetState extends State<ContainerbaunilhaWidget> {
  late ContainerbaunilhaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContainerbaunilhaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
      child: Container(
        width: double.infinity,
        height: 40.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              FlutterFlowTheme.of(context).primary,
              FlutterFlowTheme.of(context).secondary
            ],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        alignment: AlignmentDirectional(-0.9, 0.0),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            'Tamanho',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Plus Jakarta Sans',
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ),
    );
  }
}

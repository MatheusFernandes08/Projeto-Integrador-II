import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'countcontroler_model.dart';
export 'countcontroler_model.dart';

class CountcontrolerWidget extends StatefulWidget {
  const CountcontrolerWidget({super.key});

  @override
  State<CountcontrolerWidget> createState() => _CountcontrolerWidgetState();
}

class _CountcontrolerWidgetState extends State<CountcontrolerWidget> {
  late CountcontrolerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CountcontrolerModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
      child: Container(
        width: 160.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(25.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: FlutterFlowCountController(
          decrementIconBuilder: (enabled) => Icon(
            Icons.remove_rounded,
            color: enabled
                ? FlutterFlowTheme.of(context).secondaryText
                : FlutterFlowTheme.of(context).alternate,
            size: 20.0,
          ),
          incrementIconBuilder: (enabled) => Icon(
            Icons.add_rounded,
            color: enabled
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).alternate,
            size: 20.0,
          ),
          countBuilder: (count) => Text(
            count.toString(),
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: 'Outfit',
                  letterSpacing: 0.0,
                ),
          ),
          count: _model.countControllerValue ??= 1,
          updateCount: (count) =>
              safeSetState(() => _model.countControllerValue = count),
          stepSize: 1,
          minimum: 1,
          maximum: 10,
        ),
      ),
    );
  }
}

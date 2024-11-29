import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'imagebaunilha_model.dart';
export 'imagebaunilha_model.dart';

class ImagebaunilhaWidget extends StatefulWidget {
  const ImagebaunilhaWidget({super.key});

  @override
  State<ImagebaunilhaWidget> createState() => _ImagebaunilhaWidgetState();
}

class _ImagebaunilhaWidgetState extends State<ImagebaunilhaWidget> {
  late ImagebaunilhaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImagebaunilhaModel());

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
      padding: EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          'https://images.unsplash.com/photo-1531112868439-b6b658cfe48a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMnx8Y3VwY2FrZXxlbnwwfHx8fDE3MzI4MTY1Mzl8MA&ixlib=rb-4.0.3&q=80&w=1080',
          width: double.infinity,
          height: 363.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

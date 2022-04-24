import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfPdfViewer.asset(
          "lib/assets/resume/JohnnyCasaresPortfolioResume.pdf"),
    );
  }
}

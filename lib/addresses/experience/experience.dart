import 'dart:html';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SfPdfViewer.asset(
            "lib/assets/resume/JohnnyCasaresPortfolioResume.pdf"),
      ),
      appBar: AppBar(
        actions: [
          //print button
          // IconButton(onPressed: () {}, icon: Icon(Icons.print)),
          //Download button
          IconButton(
              onPressed: () {
                downloadFile(
                    "assets/lib/assets/resume/JohnnyCasaresPortfolioResume.pdf");
              },
              icon: Icon(Icons.download)),
        ],
      ),
    );
  }
}

downloadFile(url) {
  AnchorElement anchorElement = new AnchorElement(href: url);
  anchorElement.download = "Johnny Casares Resume";
  anchorElement.click();
}

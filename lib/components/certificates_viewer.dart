import 'package:flutter/material.dart';

//dynamic
class CertificateViewer extends StatefulWidget {
  @override
  State<CertificateViewer> createState() => _CertificateViewerState();
}

class _CertificateViewerState extends State<CertificateViewer> {
  final List<String> certificatePaths = [
    'asset/certificates/certificate-01.png',

  ];

  late PageController _pageController;
  int _currentPage = 0; // Start at the first certificate

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }


  @override
  Widget build(BuildContext context) {
    return Container( // Add a Container for sizing
      height: 200, // Adjust height as needed
      child: PageView.builder( // Use PageView for easier navigation
        controller: _pageController,
        itemCount: certificatePaths.length,
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
        itemBuilder: (context, index) {
          return Image.asset(
            certificatePaths[index],
            fit: BoxFit.contain, // Ensure images fit within the container
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
import 'package:flutter/material.dart';
import 'package:mobile_user/widgets/app_appbar.dart';

class CompabilityTestView extends StatefulWidget {
  const CompabilityTestView({super.key});

  @override
  State<CompabilityTestView> createState() => _CompabilityTestViewState();
}

class _CompabilityTestViewState extends State<CompabilityTestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        title: 'Tes Kompabilitas',
      ),
    );
  }
}

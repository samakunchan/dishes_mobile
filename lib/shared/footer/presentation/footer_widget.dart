import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({Key? key}) : super(key: key);
  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
  );

  void setStateIfMounted(f) {
    if (mounted) setState(f);
  }

  Future<void> _initPackageInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();

    setStateIfMounted(() {
      _packageInfo = info;
    });
  }

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Center(
        child: Text(
          'Copyright © 2022 Samaapps ${_packageInfo.version.isEmpty
              ? 'NONE'
              : ' v${_packageInfo.version}'} - Tous droits réservés',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleViewPage extends StatefulWidget {
  const ArticleViewPage({Key? key,}) : super(key: key);
  static const String routeName = '/articleviewpage';

  @override
  State<ArticleViewPage> createState() => _ArticleViewPageState();
}

class _ArticleViewPageState extends State<ArticleViewPage> {
  late WebViewController webViewController;
  @override
  Widget build(BuildContext context) {
    final articleUrl = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
      ),
      body: WillPopScope(
        onWillPop: () async{
          if(await webViewController.canGoBack()){
            webViewController.goBack();
            return false;
          }else{
            return true;
          }
        },
        child: WebView(
          initialUrl: articleUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller) {
            webViewController = controller;
          },
        ),
      ),
    );
  }
}

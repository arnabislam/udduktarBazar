import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
class WebViewScreen extends StatefulWidget {
  final String urlWeb;
  final String appBarName;
   const WebViewScreen({Key? key, required this.urlWeb, required this.appBarName,}) : super(key: key);

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  InAppWebViewController? webViewController;
  PullToRefreshController? refreshController;
  double progress = 0;
  var urlController = TextEditingController();
  var isloading=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        leading: IconButton(
            onPressed: () async {
              if (await webViewController!.canGoBack()) {
                webViewController!.goBack();
              }else {
                Get.back();
              }
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),

          child:  Text(widget.appBarName),

        ),
        actions: [
          IconButton(
              onPressed: () {
                webViewController!.reload();
              },
              icon: const Icon(Icons.refresh),),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Stack(
            alignment: Alignment.center,
            children: [
             InAppWebView(
                onLoadStart:(controller, url) {
                  setState(() {
                    isloading = true;
                  });
                },
                onLoadStop: (controller, url) {
                  setState(() {
                    isloading=false;
                  });
                },
                onProgressChanged: (progress,controller){
                  if(progress==100){
                    refreshController!.endRefreshing();
                  }
                },
                pullToRefreshController: refreshController,
                onWebViewCreated: (controller) =>
                    webViewController = controller,


               //main point//

                initialUrlRequest: URLRequest(url: Uri.parse(widget.urlWeb)),
              ),
              Visibility(
                visible: isloading,
              child:  const SpinKitDoubleBounce(
                color: Colors.red,
                size: 60,
              ),),
            ],
          ),),
        ],
      ),
    );

  }
}

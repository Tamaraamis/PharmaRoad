import 'package:url_launcher/url_launcher.dart';
 class MapUtils{
MapUtils._();
static Future<void> openMap(String url)async{
  String googleUrl = url;
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
}
//double latitude,double longitude

 }
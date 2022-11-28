import 'package:url_launcher/url_launcher.dart';
import 'package:get_it/get_it.dart';

class TelAndSmsService{
  /* 打电话 */  // ("tel:$number");
  void call(String number) => launchUrl(Uri(scheme: "tel",path:number));

  //"sms:$number"
  void sendSms(String number) => launchUrl(Uri(scheme: 'sms',path: number));

  //"mailto:$email"
  void sendEmail(String email) => launchUrl(Uri(scheme: 'mailto',path: email));

}
class GetItClass{
  final locator = GetIt.instance;
  void setupLocator(){
    locator.registerSingleton(TelAndSmsService());
  }
}
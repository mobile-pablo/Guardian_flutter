import 'package:auto_route/auto_route.dart';
import 'package:flutter_drift_1/core/route/app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')           
class AppRouter extends $AppRouter {      
   
 @override      
 List<AutoRoute> get routes => <AutoRoute>[      
    AutoRoute(page:HomeRoute.page, initial: true),
  ];    
}    

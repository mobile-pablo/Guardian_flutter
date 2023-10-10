import 'package:auto_route/auto_route.dart';
import 'package:guardian_flutter/core/route/app_route.gr.dart';
import 'package:injectable/injectable.dart';

@injectable
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')           
class AppRouter extends $AppRouter {      
   
 @override      
 List<AutoRoute> get routes => <AutoRoute>[      
    AutoRoute(page:HomeRoute.page, initial: true),
  ];    
}    

import 'package:go_router/go_router.dart';
import 'package:todoapp/importer.dart';
import 'package:todoapp/view/add_page.dart';
import 'package:todoapp/view/list_page.dart';
import 'package:todoapp/view/login_page.dart';

/// The route configuration.
final GoRouter MyRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return loginPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'list',
          builder: (BuildContext context, GoRouterState state) {
            return const listPage();
          },
        ),
        
        GoRoute(
          path: 'add',
          builder: (BuildContext context, GoRouterState state) {
            return const addPage();
          },
        ),

      ],
    ),
  ],
);

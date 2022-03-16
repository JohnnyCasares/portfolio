import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/addresses/experience/experience.dart';
import 'package:portfolio/addresses/home/home.dart';
import 'package:portfolio/addresses/projects/projects.dart';
import 'package:portfolio/routing/route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    // Use route keys or names
    //for example: AboutRoute is used as input in NavBarItem constructor
    //The NavBarItem has a gesture detector, and the AboutRoute name/key
    //works as that key that takes the info to this router.dart, where AboutRoute
    //works in a switch statement as a case that will end up showing us the about view
    //which is what the user actually sees in the screen
    case HomeRoute:
      return _getPageRoute(Home());
    case ExperienceRoute:
      return _getPageRoute(Experience());
    case ProjectsRoute:
      return _getPageRoute(Projects());

    default:
  }
  return _getPageRoute(Home());
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

// This is to override the defualt animation
class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({required this.child})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}

enum AppPages {
  home,
  lobby,
  login,
}

extension AppPageExtension on AppPages {
  // create path for routes
  String get routePath {
    switch (this) {
      default:
        return "/${this.name}";
    }
  }

  String get subRoutePath {
    switch (this) {
      default:
        return "${this.name}";
    }
  }

  /// use this method to call GoRouter with the relevant params.
  String withParams(List<String> params) {
    // TODO make sure to have '/' route
    final paramsPath = params.reduce((value, element) => '/$value/$element');
    return "";
  }

// for named routes
  String get routeName {
    return this.name;
  }

// for page titles to use on appbar
  String get routePageTitle {
    switch (this) {
      case AppPages.login:
        return "Login";
      case AppPages.lobby:
        return "lobby";
      case AppPages.home:
        return "Home";
    }
  }
}

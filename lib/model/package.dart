class Package {
  final String packageName;
  final String name;

  Package(this.packageName, this.name);

  factory Package.fromPlatform(Map<dynamic, dynamic> package) {
    return Package(package['packageName'], package['name']);
  }

  @override
  String toString() {
    return "Package(packageName=$packageName})";
  }
}

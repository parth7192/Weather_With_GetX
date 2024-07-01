class WeatherLatLong {
  String name;
  double lat;
  double lon;
  String country;
  String state;

  WeatherLatLong({
    required this.name,
    required this.lat,
    required this.lon,
    required this.country,
    required this.state,
  });

  factory WeatherLatLong.fromJson(Map<String, dynamic> json) => WeatherLatLong(
        name: json["name"],
        lat: json["lat"]?.toDouble(),
        lon: json["lon"]?.toDouble(),
        country: json["country"],
        state: json["state"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "lat": lat,
        "lon": lon,
        "country": country,
        "state": state,
      };
}

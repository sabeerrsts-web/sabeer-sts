class Booking {
  final String pnr;
  final String flightNumber;
  final String departureCity;
  final String arrivalCity;
  final DateTime departureTime;
  final DateTime arrivalTime;
  final int passengerCount;
  final double totalPrice;
  final String status; // confirmed, cancelled, pending

  Booking({
    required this.pnr,
    required this.flightNumber,
    required this.departureCity,
    required this.arrivalCity,
    required this.departureTime,
    required this.arrivalTime,
    required this.passengerCount,
    required this.totalPrice,
    required this.status,
  });

  factory Booking.fromJson(Map<String, dynamic> json) {
    return Booking(
      pnr: json['pnr'] as String? ?? '',
      flightNumber: json['flightNumber'] as String? ?? '',
      departureCity: json['departureCity'] as String? ?? '',
      arrivalCity: json['arrivalCity'] as String? ?? '',
      departureTime: DateTime.parse(json['departureTime'] as String? ?? ''),
      arrivalTime: DateTime.parse(json['arrivalTime'] as String? ?? ''),
      passengerCount: json['passengerCount'] as int? ?? 0,
      totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0.0,
      status: json['status'] as String? ?? 'pending',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'pnr': pnr,
      'flightNumber': flightNumber,
      'departureCity': departureCity,
      'arrivalCity': arrivalCity,
      'departureTime': departureTime.toIso8601String(),
      'arrivalTime': arrivalTime.toIso8601String(),
      'passengerCount': passengerCount,
      'totalPrice': totalPrice,
      'status': status,
    };
  }
}

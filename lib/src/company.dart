/// Information of the company the user is working on.
///
/// Example usage which create read and update access for a permission:
/// ```dart
/// var company = new Company(id: 1, name: 'my company name', country: 'BEL', currency: 'EUR');
/// ```
class Company
{


  final int id;

  final String name;

  final String country;

  final String currency;


  Company({
    required this.id,
    required this.name,
    required this.country,
    required this.currency,
  });


  factory Company.fromJson(Map<String, dynamic> json)
  {
    return Company(id: json['id'], name: json['name'], country: json['country'], currency: json['currency']);
  }


}
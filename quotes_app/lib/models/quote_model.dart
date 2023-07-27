//Modal class
class Quote
{
  //final Attributes
  final String quote;
  final String author;
  final String category;

  //Parameterized Constructor
  Quote({
    required this.quote,
    required this.author,
    required this.category
  });

  //Factory Constructor Method
  factory Quote.fromMap({required Map data})
  {
    return Quote(quote: data["quote"], author: data["author"], category: data["category"]);
  }
}
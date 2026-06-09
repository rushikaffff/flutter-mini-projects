import 'dart:convert';
//make class
class Expense{
  double amount;
  String category;
//initialise fields
  Expense({
  required this.amount,
  required this.category,
});
// convert to json
Map<String , dynamic> toJson()
{
  return{
    'amount': amount,
    'category':  category,
  };
}
//convert to object
factory Expense.fromJson(Map<String, dynamic> json)
{
  return Expense(amount: json['amount'].toDouble, category: json['category']);
}

// 
static String encode(List<Expense> expenses)
{
  return jsonEncode(
    expenses.map((e)=>e.toJson()).toList(),
  );
}
static List<Expense> decode(String data) {
    return (jsonDecode(data) as List<dynamic>)
        .map((item) => Expense.fromJson(item))
        .toList();
  }
}


class SalaryModel {
  int? id;
  int userId;
  String status;
  String periode;
  List<ItemSalary> items;
  List<ItemSalary>? deductions;
  int? total;
  String? note;
  String? management;
  DateTime? createdAt;
  bool isSynced;

  SalaryModel({
    this.id,
    required this.userId,
    required this.status,
    required this.periode,
    required this.items,
    this.deductions,
    required this.total,
    this.note,
    this.management,
    this.createdAt,
    this.isSynced = true,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'status': status,
      'periode': periode,
      'items': items,
      'deductions': deductions,
      'total': total,
      'note': note,
      'management': management,
      'createdAt': createdAt?.toIso8601String()
    };
  }

  factory SalaryModel.fromJson(json) {
    return SalaryModel(
      id: json['id'],
      userId: json['userId'],
      status: json['status'],
      periode: json['periode'],
      items: json['items'],
      deductions: json['deductions'],
      total: json['total'],
      note: json['note'],
      management: json['management'],
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
    );
  }
}

class ItemSalary {
  int? id;
  String? description;
  String? amount;

  ItemSalary({
    this.id,
    this.description,
    this.amount,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'description': description,
      'amount': amount,
    };
  }

  factory ItemSalary.fromJson(json) {
    return ItemSalary(
      id: json['id'],
      description: json['description'],
      amount: json['amount'],
    );
  }
}

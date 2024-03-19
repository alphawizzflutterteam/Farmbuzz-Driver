class TransactionHisModel {
    TransactionHisModel({
        required this.error,
        required this.message,
        required this.data,
        required this.total,
    });

    final bool? error;
    final String? message;
    final List<Transaction> data;
    final String? total;

    factory TransactionHisModel.fromJson(Map<String, dynamic> json){ 
        return TransactionHisModel(
            error: json["error"],
            message: json["message"],
            data: json["data"] == null ? [] : List<Transaction>.from(json["data"]!.map((x) => Transaction.fromJson(x))),
            total: json["total"],
        );
    }

}

class Transaction {
    Transaction({
        required this.id,
        required this.userId,
        required this.paymentType,
        required this.paymentAddress,
        required this.amountRequested,
        required this.remarks,
        required this.status,
        required this.dateCreated,
    });

    final String? id;
    final String? userId;
    final String? paymentType;
    final String? paymentAddress;
    final String? amountRequested;
    final String? remarks;
    final String? status;
    final DateTime? dateCreated;

    factory Transaction.fromJson(Map<String, dynamic> json){ 
        return Transaction(
            id: json["id"],
            userId: json["user_id"],
            paymentType: json["payment_type"],
            paymentAddress: json["payment_address"],
            amountRequested: json["amount_requested"],
            remarks: json["remarks"],
            status: json["status"],
            dateCreated: DateTime.tryParse(json["date_created"] ?? ""),
        );
    }

}

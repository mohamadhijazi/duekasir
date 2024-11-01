import 'package:due_kasir/brick/model/due_payment.model.dart';
import 'package:due_kasir/service/database.dart';
import 'package:signals/signals_flutter.dart';

class DuePaymentController {
  final payments = futureSignal(() async => Database().getDuePayments());
  final paymentSelected = signal<DuePaymentModel?>(null);
}

final duePaymentController = DuePaymentController();

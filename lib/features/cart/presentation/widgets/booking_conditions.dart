import 'package:flutter/cupertino.dart';
import 'package:real_estate_app/features/cart/data/model/real_estate_model.dart';

class BookingConditionsWidget extends StatelessWidget {
  BookingConditionsWidget({super.key, this.realEstate});

  final RealEstate? realEstate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('شروط الاستئجار '),
            const Text('الإيجار والتأمين:'),
            Row(
              children: [
                const Text('المبلغ السنوي للإيجار: '),
                Text(realEstate!.annualRent.toString() +
                    ' ' +
                    realEstate!.currencyCode!),
              ],
            ),
            Text(realEstate!.conditions?.insurance ?? ''),
            const Text('المدة الزمنية :'),
            Row(
              children: [
                const Text('بداية العقد  :'),
                Text(realEstate!.conditions!.startContract.toString()),
              ],
            ),
            Row(
              children: [
                const Text('نهاية العقد  :'),
                Text(realEstate!.conditions!.endContract.toString()),
              ],
            ),
            const Text('المسؤوليات المالية :'),
            Text(realEstate!.conditions!.financialResponsibilities ?? ''),
            const Text('الاستخدام السكني :'),
            Text(realEstate!.conditions!.residentialUse ?? ''),
            const Text('الصيانة والإصلاحات :'),
            Text(realEstate!.conditions!.maintenanceAndRepairs ??
                'الشركة مسؤولة عن الصيانة الأساسية، والمستأجر مسؤول عن الصيانة اليومية وأية إصلاحات تكون ناتجة عن سوء استخدامه. '),
            const Text('شروط الإلغاء :'),
            Text(realEstate!.conditions!.cancellationTerms ?? 'لا يوجد '),
            const Text('الصفه السكنية: '),
            Text(realEstate!.conditions!.residentialClass ?? 'لا يوجد '),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter_test/flutter_test.dart';
import 'package:stock_facile/main.dart';

void main() {
  testWidgets('StockFacile affiche le titre et le message',
      (WidgetTester tester) async {
    await tester.pumpWidget(const StockFacileApp());

    expect(find.text('StockFacile'), findsOneWidget);
    expect(find.text('Bienvenue dans StockFacile'), findsOneWidget);
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:laman_login_registrasi/main.dart';

void main() {
  testWidgets('Login page tampil dengan benar', (WidgetTester tester) async {
    await tester.pumpWidget(const LoginApp());

    expect(find.text('Selamat Datang'), findsOneWidget);
    expect(find.text('Silakan masuk untuk melanjutkan.'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Kata Sandi'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Registrasi'), findsOneWidget);
  });
}

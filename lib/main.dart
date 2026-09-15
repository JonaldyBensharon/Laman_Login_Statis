import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4F7FC),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1565C0),
          primary: const Color(0xFF1565C0),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController =
  TextEditingController();

  final TextEditingController passwordController =
  TextEditingController();

  bool obscurePassword = true;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 32,
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 430,
              ),
              child: Container(
                padding: const EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.withValues(alpha: 0.12),
                      blurRadius: 30,
                      offset: const Offset(0, 12),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Logo
                    Center(
                      child: Container(
                        width: 72,
                        height: 72,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE3F2FD),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.login,
                          size: 38,
                          color: Color(0xFF1565C0),
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    Text(
                      'Selamat Datang',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF172B4D),
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Deskripsi
                    Text(
                      'Silakan masuk untuk melanjutkan.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: const Color(0xFF6B7280),
                      ),
                    ),

                    const SizedBox(height: 32),

                    // Label Email
                    Text(
                      'Email',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF344054),
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Input Username
                    TextField(
                      controller: usernameController,
                      keyboardType: TextInputType.emailAddress,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Masukkan email',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 13,
                          color: const Color(0xFF98A2B3),
                        ),
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Color(0xFF667085),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF8FAFC),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xFFD0D5DD),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xFFD0D5DD),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xFF1565C0),
                            width: 2,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Label Password
                    Text(
                      'Kata Sandi',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF344054),
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Input Password
                    TextField(
                      controller: passwordController,
                      obscureText: obscurePassword,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Masukkan kata sandi',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 13,
                          color: const Color(0xFF98A2B3),
                        ),
                        prefixIcon: const Icon(
                          Icons.key,
                          color: Color(0xFF667085),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscurePassword = !obscurePassword;
                            });
                          },
                          icon: Icon(
                            obscurePassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: const Color(0xFF667085),
                          ),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF8FAFC),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xFFD0D5DD),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xFFD0D5DD),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xFF1565C0),
                            width: 2,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 28),

                    // Tombol Masuk
                    SizedBox(
                      height: 52,
                      child: ElevatedButton(
                        onPressed: () {
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1565C0),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Registrasi
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Text(
                          'Belum memiliki akun? Silakan lakukan ',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: const Color(0xFF667085),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Tampilan statis.
                            // Belum ada navigasi ke halaman registrasi.
                          },
                          child: Text(
                            'Registrasi',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF1565C0),
                              decoration: TextDecoration.underline,
                              decorationColor:
                              const Color(0xFF1565C0),
                            ),
                          ),
                        ),
                        Text(
                          '.',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: const Color(0xFF667085),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

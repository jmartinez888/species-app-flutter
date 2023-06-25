import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/mixins/form_mixin.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with FormMixin {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController(),
      _passwordController = TextEditingController(),
      _repeatPasswordController = TextEditingController();

  bool _hidePassword = true;
  bool _validateInInput = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Regístrate'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          reverse: true,
          padding: const EdgeInsets.all(16.0),
          children: [
            Center(
              child: TextButton(
                  onPressed: () => Navigator.maybePop(context),
                  child: const Text('¿Ya tienes una cuenta? Ingresa aquí')),
            ),
            const SizedBox(height: 16.0),
            FilledButton.icon(
              onPressed: () {
                _validateCredentials(context);
                setState(() {});
              },
              icon: const Icon(Icons.navigate_next_rounded),
              label: const Text('Registrarse'),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _repeatPasswordController,
              autovalidateMode:
                  _validateInInput ? AutovalidateMode.onUserInteraction : null,
              obscureText: _hidePassword,
              decoration: InputDecoration(
                labelText: 'Repite tu contraseña',
                prefixIcon: const Icon(Icons.password_rounded),
                suffixIcon: Wrap(
                  runSpacing: 8.0,
                  children: [
                    IconButton(
                      onPressed: () =>
                          setState(() => _hidePassword = !_hidePassword),
                      tooltip: 'Mostrar contraseña',
                      icon: Icon(
                        _hidePassword
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                      ),
                    ),
                    if (_repeatPasswordController.text.isNotEmpty)
                      IconButton(
                        onPressed: () =>
                            setState(() => _repeatPasswordController.clear()),
                        tooltip: 'Limpiar',
                        icon: const Icon(Icons.cancel_outlined),
                      ),
                  ],
                ),
              ),
              onChanged: (value) => setState(() {}),
              validator: (value) => repeatPasswordValidator(
                  _repeatPasswordController.text, _passwordController.text),
              inputFormatters: [
                withoutSpaces,
              ],
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _passwordController,
              autovalidateMode:
                  _validateInInput ? AutovalidateMode.onUserInteraction : null,
              obscureText: _hidePassword,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                prefixIcon: const Icon(Icons.password_rounded),
                suffixIcon: Wrap(
                  runSpacing: 8.0,
                  children: [
                    IconButton(
                      onPressed: () =>
                          setState(() => _hidePassword = !_hidePassword),
                      tooltip: 'Mostrar contraseña',
                      icon: Icon(
                        _hidePassword
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                      ),
                    ),
                    if (_passwordController.text.isNotEmpty)
                      IconButton(
                        onPressed: () =>
                            setState(() => _passwordController.clear()),
                        tooltip: 'Limpiar',
                        icon: const Icon(Icons.cancel_outlined),
                      ),
                  ],
                ),
              ),
              onChanged: (value) => setState(() {}),
              validator: passwordValidator,
              inputFormatters: [
                withoutSpaces,
              ],
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _emailController,
              autovalidateMode:
                  _validateInInput ? AutovalidateMode.onUserInteraction : null,
              decoration: InputDecoration(
                labelText: 'Correo',
                prefixIcon: const Icon(Icons.email_outlined),
                suffixIcon: _emailController.text.isNotEmpty
                    ? IconButton(
                        onPressed: () =>
                            setState(() => _emailController.clear()),
                        tooltip: 'Limpiar',
                        icon: const Icon(Icons.cancel_outlined),
                      )
                    : null,
              ),
              onChanged: (value) => setState(() {}),
              validator: emailValidator,
              inputFormatters: [
                withoutSpaces,
              ],
              keyboardType: TextInputType.emailAddress,
            ),
          ],
        ),
      ),
    );
  }

  void _validateCredentials(BuildContext context) {
    if (_validateInInput == false) {
      _validateInInput = true;
    }
    if (_formKey.currentState!.validate()) {
      _validateInInput = false;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
    } else {}
  }
}

import 'package:flutter/material.dart';
import 'package:species/src/presentation/global/colors/colors.dart';
import 'package:species/src/presentation/global/mixins/form_mixin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with FormMixin {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _emailController = TextEditingController(),
      _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool _hidePassword = true;
  bool _validateInInput = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 2500)).then(
        (value) => _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 400),
        ),
      );
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 384.0,
            toolbarHeight: 0.0,
            flexibleSpace: FlexibleSpaceBar(
              background: ShaderMask(
                shaderCallback: (Rect bounds) => const LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    CustomColors
                        .background, // Cambia el color y la opacidad según tus necesidades
                  ],
                ).createShader(bounds),
                blendMode: BlendMode.srcATop,
                child: Image.asset(
                  'assets/images/in_background/landscape.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const FlutterLogo(size: 208.0),
                    const SizedBox(height: 16.0),
                    Text(
                      'Species IIAP',
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                    ),
                    const SizedBox(height: 32.0),
                    TextFormField(
                      controller: _emailController,
                      autovalidateMode: _validateInInput
                          ? AutovalidateMode.onUserInteraction
                          : null,
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
                    const SizedBox(height: 16.0),
                    TextFormField(
                      controller: _passwordController,
                      autovalidateMode: _validateInInput
                          ? AutovalidateMode.onUserInteraction
                          : null,
                      obscureText: _hidePassword,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        prefixIcon: const Icon(Icons.password_rounded),
                        suffixIcon: Wrap(
                          runSpacing: 8.0,
                          children: [
                            IconButton(
                              onPressed: () => setState(
                                  () => _hidePassword = !_hidePassword),
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
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text('¿Olvidaste tu contraseña?')),
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: () {
                          _validateCredentials(context);
                          setState(() {});
                        },
                        icon: const Icon(Icons.navigate_next),
                        label: const Text('Ingresar'),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Si eres nuevo regístrate aquí'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
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
    }
  }
}

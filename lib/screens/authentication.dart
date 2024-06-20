import 'package:flutter/material.dart';
import 'package:vigilancia_comunitaria/common/colors.dart';
import 'package:vigilancia_comunitaria/components/decoration_authentication_field.dart';
import 'package:vigilancia_comunitaria/screens/occurrencess.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  bool queroentrar = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Mycolors.blueGradient,
              Mycolors.white,
            ])),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset("assets/logo.png", height: 130),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Vigilância Comunitária",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      TextFormField(
                        decoration: getAuthenticationInputDecoration("E-mail"),
                        validator: (String? value) {
                          if (value == null) {
                            return "Preencha o campo de E-mail";
                          }
                          if (value.length < 5) {
                            return "O E-mail é muito curto!";
                          }
                          if (!value.contains("@")) {
                            return "O E-mail não é válido!";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        decoration: getAuthenticationInputDecoration("Senha"),
                        validator: (String? value) {
                          if (value == null) {
                            return "Preencha o campo com seu Nome";
                          }
                          if (value.length < 2) {
                            return "O nome  é muito curto!";
                          }

                          return null;
                        },
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Visibility(
                        visible: !queroentrar,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: getAuthenticationInputDecoration(
                                  " Confirme sua Senha"),
                              obscureText: true,
                              validator: (String? value) {
                                if (value == null) {
                                  return "A senha não pode ser vazia";
                                }
                                if (value.length < 5) {
                                  return "A senha é muito curta!";
                                }

                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              decoration:
                                  getAuthenticationInputDecoration("Nome"),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Occurrencess(),
                              ));
                          botaoPrincipalClicado();
                        },
                        child: Text((queroentrar) ? "Entrar" : "Cadastrar"),
                      ),
                      const Divider(),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            queroentrar = !queroentrar;
                          });
                        },
                        child: Text((queroentrar)
                            ? " Ainda não tem uma conta? Cadastre-se!"
                            : "Já tem uma conta? Entre"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  botaoPrincipalClicado() {
    if (_formKey.currentState!.validate()) {
      print("Forme válido");
    } else {
      print("Form Inválido");
    }
  }
}

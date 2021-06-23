import 'package:flutter/material.dart';

class user {
  final String id;
  final String nome;
  final String email;
  final num telefone;
  final num celular;
  final String endereco;
  final String pontodereferencia;
  final num cep;
  final DataTable datadenascimento;
  final Characters sexo;
  final num cpf;
  final String senha;
  final String repetirsenha;
  final String profissao;

  user(
    this.id,
    @required this.nome,
    @required this.email,
    @required this.telefone,
    @required this.celular,
    @required this.endereco,
    @required this.pontodereferencia,
    @required this.cep,
    @required this.datadenascimento,
    @required this.sexo,
    @required this.cpf,
    @required this.senha,
    @required this.repetirsenha,
    @required this.profissao,
  );
}

class SignupPage {
  final TextEditingController _controladornome = TextEditingController();
  final TextEditingController _controladoremail = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();
}

import './login.page.dart';
import 'package:flutter/material.dart';
//import './Widgets/Auxiliar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/*class user {
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
    this.nome,
    this.email,
    this.telefone,
    this.celular,
    this.endereco,
    this.pontodereferencia,
    this.cep,
    this.datadenascimento,
    this.sexo,
    this.cpf,
    this.senha,
    this.repetirsenha,
    this.profissao,
  );
}*/

class SignupPage extends StatelessWidget {
  final TextEditingController _controladornome = TextEditingController();
  final TextEditingController _controladoremail = TextEditingController();
  final TextEditingController _controladorTelefone = TextEditingController();
  final TextEditingController _controladorCelular = TextEditingController();
  final TextEditingController _controladorEndereco = TextEditingController();
  final TextEditingController _controladorReferencia = TextEditingController();
  final TextEditingController _controladorcep = TextEditingController();
  final TextEditingController _controladornascimento = TextEditingController();
  final TextEditingController _controladorSexo = TextEditingController();
  final TextEditingController _controladorcpf = TextEditingController();
  final TextEditingController _controladorsenha = TextEditingController();
  final TextEditingController _controladorRepetirSenha =
      TextEditingController();
  final TextEditingController _controladorProfissao = TextEditingController();
  final TextEditingController _controladorNivel = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var children2 = <Widget>[
      Container(
        width: 85,
        height: 85,
        alignment: Alignment(0.0, 1.15),
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: AssetImage("assets/avatar2.png"),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Container(
          height: 24,
          width: 24,
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              stops: [0.3, 1.0],
              colors: [
                Color(0xFFF58524),
                Color(0XFFF92B7F),
              ],
            ),
            border: Border.all(
              width: 2,
              color: const Color(0xFFFFFFFF),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(35),
            ),
          ),
          child: SizedBox.expand(
            child: FlatButton(
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      TextFormField(
        controller: _controladornome,
        // autofocus: true,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: "Nome",
          labelStyle: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextFormField(
        controller: _controladoremail,
        // autofocus: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: "E-mail",
          labelStyle: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextFormField(
        controller: _controladorTelefone,
        // autofocus: true,
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
          labelText: "Telefone",
          labelStyle: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        style: TextStyle(fontSize: 20),
      ),
      TextFormField(
        controller: _controladorCelular,
        // autofocus: true,
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
          labelText: "Celular",
          labelStyle: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        style: TextStyle(fontSize: 20),
      ),
      TextFormField(
        controller: _controladorEndereco,
        // autofocus: true,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: "Endereço",
          labelStyle: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      TextFormField(
        controller: _controladorReferencia,
        // autofocus: true,
        keyboardType: TextInputType.text,
        obscureText: false,
        decoration: InputDecoration(
          labelText: "Ponto de Referência",
          labelStyle: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        style: TextStyle(fontSize: 20),
      ),
      TextFormField(
        controller: _controladorcep,
        // autofocus: true,
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
          labelText: "CEP",
          labelStyle: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        style: TextStyle(fontSize: 20),
      ),
      TextFormField(
        controller: _controladornascimento,
        // autofocus: true,
        keyboardType: TextInputType.datetime,
        obscureText: false,
        decoration: InputDecoration(
          labelText: "Data de Nascimento",
          labelStyle: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        style: TextStyle(fontSize: 20),
      ),
      TextFormField(
        controller: _controladorSexo,
        // autofocus: true,
        keyboardType: TextInputType.text,
        obscureText: false,
        decoration: InputDecoration(
          labelText: "Sexo",
          labelStyle: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        style: TextStyle(fontSize: 20),
      ),
      TextFormField(
        controller: _controladorcpf,
        // autofocus: true,
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
          labelText: "CPF",
          labelStyle: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        style: TextStyle(fontSize: 20),
      ),
      TextFormField(
        controller: _controladorsenha,
        // autofocus: true,
        keyboardType: TextInputType.text,
        obscureText: false,
        decoration: InputDecoration(
          labelText: "Senha",
          labelStyle: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        style: TextStyle(fontSize: 20),
      ),
      TextFormField(
        controller: _controladorRepetirSenha,
        // autofocus: true,
        keyboardType: TextInputType.text,
        obscureText: false,
        decoration: InputDecoration(
          labelText: "Repetir Senha",
          labelStyle: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        style: TextStyle(fontSize: 20),
      ),
      TextFormField(
        controller: _controladorProfissao,
        // autofocus: true,
        keyboardType: TextInputType.text,
        obscureText: false,
        decoration: InputDecoration(
          labelText: "Profissão",
          labelStyle: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        style: TextStyle(fontSize: 20),
      ),
      TextFormField(
        controller: _controladorNivel,
        // autofocus: true,
        keyboardType: TextInputType.text,
        obscureText: false,
        decoration: InputDecoration(
          labelText: "Nivel",
          labelStyle: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        style: TextStyle(fontSize: 20),
      ),
      SizedBox(
        height: 10,
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        height: 40,
        width: 40,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [3.3, 1],
            colors: [
              Color(0xFFF58524),
              Color(0XFFF92B7F),
            ],
          ),
          borderRadius: BorderRadius.all(
            Radius.elliptical(30, 30),
          ),
        ),
        child: SizedBox.expand(
          child: FlatButton(
            child: Text(
              "Cadastrar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              FirebaseFirestore.instance
                  .collection('Usuários')
                  .add({'Nome': _controladornome});

              /*print(_controladornome.text);
              print(_controladorCelular.text);
              print(_controladorEndereco.text);
              print(_controladorNivel.text);
              print(_controladorRepetirSenha.text);
              print(_controladorsenha.text);*/

              Navigator.of(context).pop();
              //context,
              //MaterialPageRoute(builder: (context) => LoginPage()),
              //);
            },
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        height: 40,
        alignment: Alignment.center,
        child: FlatButton(
          child: Text(
            "Cancelar",
            textAlign: TextAlign.center,
          ),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
    ];

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 0, right: 0),
        color: Colors.white,
        child: Container(
          child: ListView(
            padding: EdgeInsets.only(left: 15, right: 15),
            children: children2,
          ),
        ),
      ),
    );
  }
}

class SignUpPageController {
  TextEditingController _nome;

  TextEditingController get nome => _nome;
}

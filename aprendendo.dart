class telefone {
  final String marca;
  final String cor;
  final double peso;
  final int anof;

  telefone(this.marca, this.cor, this.peso, this.anof);

  String mostra() {
    return 'A marca $marca, A cor $cor, O peso $peso, Ano de fabricacao $anof';
  }

  int anoExistencia(int ano) {
    return ano - anof;
  }
}

class carro{
  final String marca;
  int _valor=100;
  
  //criando o get
  get valorp => _valor;
  void setvalue(int valor) => _valor=valor;
  carro(this.marca);
}

void main() {
  telefone mendesMovel = telefone('samsung', 'preto', 12.4, 2016);
  telefone robMovel = telefone('iphone', 'branco', 9.6, 2013);
  print(mendesMovel.mostra());
  //atribuindo o ano a uma variavel
  var aux = mendesMovel.anoExistencia(2020);
  print('O movel tem $aux anos de existencia');
  
  carro y=carro('Mercedes');
  print('==============================');
  print(y.valorp);
  print('==============================');
  y._valor=1;
  print(y.valorp);
}

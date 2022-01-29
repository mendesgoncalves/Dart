//Classe com construtor
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

//Encapsulamento, get e set
class carro{
  final String marca;
  int _valor=100;
  //criando o get
  int get valorp => _valor;
  void setvalue(int valor) {
    _valor=valor;
  } 
  carro(this.marca);
}

// Abstract
abstract class Pessoa{
  String comunicar();
}
// fazendo a abtracao
class PessoaEt implements Pessoa{
  String comunicar(){
    return 'ola Mundo';
  }
}
//ou
class AbsTest implements Pessoa{
  String comunicar(){
    return 'abstracao feita';
  }
}


//Heranca
class Pai{
  String fala(){
    return 'giria';
  }
}
//herdando
class Mendes extends Pai{
  
}

//polimorfismo
abstract class Pagamento{
  void pagar();
}
class PagarComCartao implements Pagamento{
  void pagar(){
    print('Pagando com Cartao');
  }
}
class  PagarComCash implements Pagamento{
  void pagar(){
    print('Pagando com Cash');
  }
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
  
  //mostrar a heranca do mendes
  
  Mendes teste=Mendes();
  print(teste.fala());
  
  print('==============================');
  //usando polimorfismo
  Pagamento pagamento=PagarComCartao();
  pagamento.pagar();
  //trocando
  pagamento=PagarComCash();
  pagamento.pagar();
}

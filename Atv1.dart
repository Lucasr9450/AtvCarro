class Carro {
  String modelo;
  double velocidadeAtual = 0;
  double velocidadeMax;
  // construtor
  Carro(this.modelo, this.velocidadeMax);

  // métodos
  void acelerar(a) {
    velocidadeAtual += a;
    if (velocidadeAtual > velocidadeMax) {
      velocidadeAtual = velocidadeMax;
      print("Velocidade máxima atingida!");
    }
  }

  void frear(f) {
    velocidadeAtual -= f;
    if (velocidadeAtual < 0) {
      velocidadeAtual = 0;
      print("O carro já está parado!");
    }
  }

  void desligar(){
    velocidadeAtual = 0;
    print("Carro desligado. Velocidade zerada!");
  }

  void exibirEstado(){
    print("Modelo: $modelo | Velocidade atual: ${velocidadeAtual}km/h | Velocidade máxima: ${velocidadeMax}km/h");
  }
}

void main(){
  Carro carro1 = Carro("Honda Fit", 120);

  carro1.acelerar(50);
  carro1.acelerar(80); 

  carro1.exibirEstado();

  carro1.frear(30);
  carro1.frear(70);
  carro1.frear(50); 

  carro1.exibirEstado();

  carro1.acelerar(99);

  carro1.desligar();

  carro1.exibirEstado();
}
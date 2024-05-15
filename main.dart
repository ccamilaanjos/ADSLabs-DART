// Declaração e tipos de variável
int inteiro = 10; // Number
double pi = 3.14; // Numbero
String nome = "Dihego";
bool isTrue = true;
/* 
  Outros tipos:
  - dynamic
  - var
*/

// Função
void saudacao(String nome) {
  print("Olá, $nome");
}

void espaco() {
  print("\n\n");
}

// Classe
class Pessoa {
  String nome;
  int idade;

  // Construtor
  Pessoa(this.nome, this.idade);

  // Método
  void mostrarDetalhes() {
    print("Nome: $nome, Idade: $idade");
  }
}

// Função assíncrona
Future<void> exemploAssincrono() async {
  await Future.delayed(Duration(seconds: 2));
  print("Esta é uma operação assíncrona!");
}

// Lançamento de exceção
void exemploExcecao() {
  try {
    throw Exception("Exceção lançada!");
  } catch (e) {
    print(e);
  }
}

void main() {
  // Chamada de função
  saudacao("Mundo");
  espaco();

  // Instanciação de objeto
  Pessoa pessoa = Pessoa("Camila", 20);
  pessoa.mostrarDetalhes();
  espaco();

  // Função assíncrona
  exemploAssincrono();
  espaco();

  // Tratamento de exceções
  exemploExcecao();
  espaco();

  // Lista
  List<int> numeros = [1, 2, 3, 4, 5];
  print("Primeiro elemento da lista: ${numeros.first}"); // Interpolação de strings
  numeros.add(6); // Adição em lista
  numeros.remove(2); // Remoção em lista
  print(numeros);
  espaco();

  // Map
  Map<String, dynamic> produto = {
    'nome': 'mouse',
    'preco': 49.90,
    'estoque': 10
  };

  print(produto.values); // Acesso aos valores de um map
  print("Há ${produto['estoque']} ${produto['nome']}(s) no estoque."); // Acesso a um valor do map
  print(produto.keys); // Acesso às chaves de um map
  espaco();
}
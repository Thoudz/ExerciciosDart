void main(){

  String resultadosomacor = add("marrom","verde","violeta","branco");

  print("O resultado da resistencia é : $resultadosomacor");

}

String add( String cor1, String cor2, [String? cor3, String? cor4]){
  Map<String, String> cores = {
    "preto": "0",
    "marrom": "1",
    "vermelho": "2",
    "laranja": "3",
    "amarelo": "4",
    "verde": "5",
    "azul": "6",
    "violeta": "7",
    "cinza": "8",
    "branco": "9"
    
    };

    String valorcor1 = cores[cor1]!; // tive que colocar o nullsafety pois ele não aceitou a variavel com o valor nulo
    String valorcor2 = cores[cor2]!;

    return valorcor1 + valorcor2;

}
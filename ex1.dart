void main() {
  var listadepalavras = [];
  listadepalavras.add('servicedesk');
  listadepalavras.add('bananas');
  listadepalavras.add('oranges');
  int somaletras = 0;

  var listadepalavrasminuscula = listadepalavras.map((elemento) => elemento.toLowerCase());

  for (var i = 0; i < listadepalavrasminuscula.length; i++) {
    var palavraselecionada = listadepalavrasminuscula.elementAt(i);
    for (var j = 0; j < palavraselecionada.length; j++) {
      var letraselecionada = palavraselecionada[j];
      if ("aeioulnrst".contains(letraselecionada)) {
        somaletras += 1;
      } else if ("dg".contains(letraselecionada)) {
        somaletras += 2;
      } else if ("bcmp".contains(letraselecionada)) {
        somaletras += 3;
      } else if ("fhvwy".contains(letraselecionada)) {
        somaletras += 4;
      } else if ("k".contains(letraselecionada)) {
        somaletras += 5;
      } else if ("jx".contains(letraselecionada)) {
        somaletras += 8;
      } else if ("qz".contains(letraselecionada)) {
        somaletras += 10;
      }
    }
    print("A palavra $palavraselecionada tem $somaletras pontos");
    somaletras = 0;
  }
}

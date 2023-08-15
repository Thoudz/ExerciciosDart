String algoritmoluhn (String numerocartao){

  String tiraespaconumerocartao = numerocartao.replaceAll(" ", "");

if(tiraespaconumerocartao.length <= 1){
  return "Digite um numero com pelo menos 2 caracteres numericos";
}else{
bool verificacaoapenasnumero = RegExp("^[0-9]+\$").hasMatch(tiraespaconumerocartao);

  if(verificacaoapenasnumero){
    
    List<int> listanumerosconvertido = tiraespaconumerocartao.split('').map(int.parse).toList();

    for(int i = listanumerosconvertido.length - 2 ; i>=0; i-=2){
      listanumerosconvertido[i] *= 2;
      if(listanumerosconvertido[i] > 9){
        listanumerosconvertido[i] -= 9;
      }
    }
    int somalistanumeros = 0;
    for(int i =0; i < listanumerosconvertido.length; i++){
      somalistanumeros += listanumerosconvertido[i];
    }
    String resultado = "";
    if(somalistanumeros % 10 == 0){
      resultado = ("O numero do cartão é valido");
    }else{
      resultado=("O numero do cartão é invalido");
    }
    
    return "$resultado";
  }else{
    return "O numero do cartão deve conter apenas numeros";
  }

}
}

void main() {
  
  var resultado = algoritmoluhn("4539319503436467");

  print(resultado);

}
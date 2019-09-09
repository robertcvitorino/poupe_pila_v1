class Produto{

  int id;
  String ean;
  String nome;
  double preco;
  String estabelecimento;
  String endereco;
  String bairro;
  String data;

  Produto({this.id, this.ean, this.nome, this.preco, this.estabelecimento,
      this.endereco, this.bairro, this.data});

    static convertJson(Map<String, dynamic> json){
      return Produto(
          id: json["id"],
          ean: json["ean"],
          nome: json["nome"],
          preco: json["preco"],
          estabelecimento: json["estabelecimento"],
          endereco: json["endereco"],
          bairro: json["bairro"],
          data: json["data"],

      );
    }


  factory  Produto.fromJason(Map<String, dynamic> json ){
    return Produto(
      id: json["id"],
      ean: json["ean"],
      nome: json["nome"],
      preco: json["preco"],
      estabelecimento: json["estabelecimento"],
      endereco: json["endereco"],
      bairro: json["bairro"],
      data: json["data"],
    );
  }

}
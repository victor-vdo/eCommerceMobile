class Product {
  String id;
  String name;
  String price;
  String description;
  String imageUrl;
  String brand;

  Product(this.name, this.description, this.price, this.imageUrl, this.brand);

  Product getDefaultProduct() {
    var product = new Product(
        this.name, this.description, this.price, this.imageUrl, this.brand);
    product.name = 'Produto Padrão';
    product.name =
        "Uma descrição de produto fornece detalhes sobre recursos, indicações, utilizações e benefícios para ajudar a gerar uma venda. A qualidade do texto pode estimular ou interromper a conversão, especialmente se não incluir informações que o visitante precisa para decidir pela compra.";
    product.imageUrl = 'assets/images/product-default.png';
    product.price = "0.0";
    product.brand = "Marca Padrão";
    return product;
  }
}

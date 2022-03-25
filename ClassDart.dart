class Gato {
  //atributos
  String _nome,_raca,_cor;
  int _idade;
  
  //construtor
  Gato(this._nome,this._idade,this._raca,this._cor);
  
  //gets e sets
  String getNome(){
    return this._nome;
  }
  
  void setNome(String nome){
    this._nome = nome;
  }
  
  int getIdade(){
    return this._idade;
  }
  
  void setIdade(int idade){
    this._idade = idade;
  }
  
  String getRaca(){
    return this._raca;
  }
  
  void setRaca(String raca){
    this._raca = raca;
  }
  
  String getCor(){
    return this._cor;
  }
  
  void setCor(String cor){
    this._cor = cor;
  }
    
  //demais métodos
  
  String miar(){
    return "$_nome Miau";
  }
  
  String ronronar(){
    return "$_nome rrrrrrrr";
  }
  
  String roncar(){
    return "$_nome zzzzzzzzz";
  }
  
  String comer(){
    return "$_nome crrrrrr";
  }
  
  String fazerXixi(){
    return "$_nome Estou fazendo xixi.";
  }
  
  String fazerCoco(){
    return "$_nome plof";
  }
  
  String toString(){
    return "Gato: Nome: $_nome - Idade: $_idade - Raça: $_raca - Cor: $_cor";
  }
  
  bool equals(Gato gato){
    bool retorno = false;

    if (this._nome == gato.getNome() &&
        this._idade == gato.getIdade() &&
        this._raca == gato.getRaca() &&
        this._cor == gato.getCor()){
      retorno = true;
    }
    
    return retorno;
  }
}

void main(){
  Gato fifi = new Gato("Fifi",12,"SRD","Branca");
  Gato fofo = new Gato("Fofo",4,"SRD","Preto e Branco");
  Gato fofi = new Gato("Fofi",9,"Angorá","Amarelo");
  
  print(fifi.toString());
  print(fofo.toString());
  print(fofi.toString());
  
  print("Fifi é igual à fofo: " + fifi.equals(fofo).toString());
  
  print(fifi.comer());
  print(fofo.fazerCoco());
  print(fofi.fazerXixi());
  print(fifi.miar());
  print(fofo.roncar());
  print(fofi.ronronar());
  
  print(fifi.getNome() + " " + fifi.getIdade().toString() + " " + fifi.getRaca() + " " + fifi.getCor() );
  
  fofi.setIdade(15);
  fofi.setRaca("Siamês");
  fofi.setCor("Preto");
  
  print(fofi.toString());
}
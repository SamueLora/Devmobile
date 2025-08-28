void main() {
  final garen = Guerrero(nombre: 'Garen', rol:'Luchador', vida:5000, energia:1000);
  
  garen.atacar();
  garen.defender();
  garen.gritar();
  
  
  final lux = Mago(nombre: 'Lux', rol: 'Maga', vida:1000, energia:1500);
  
  lux.atacar();
  lux.retirada();
  lux.ultimate();
}


abstract class Campeon{
  
  String nombre;
  String rol;
  int vida;
  int energia;
  
  Campeon({required this.nombre, required this.rol, required this.vida, required this.energia});
  
  void atacar();
    
}

//MIXIN

mixin Defender{
  void defender(){
    print("El campeón se prepara para defender o recibir un ataque!");
  }
}

mixin Retirada{
  void retirada(){
    print("El campeón vuelve a la base para mejorar su armamento");
  }
}


//EXTENDS

class Guerrero extends Campeon with Defender{
  Guerrero({required String nombre, required String rol, required int vida, required int energia})
  
  : super(nombre: nombre, rol: rol, vida: vida, energia: energia);
  
  
  @override
  void atacar(){
    print('$nombre ataca con su espada. Vida: $vida, Energía: $energia');
  }
  
  
  void gritar(){
    print('¡$nombre grita para alertar a sus compañeros!');
  }
  
}


class Mago extends Campeon with Retirada{
  Mago({required String nombre, required String rol, required int vida, required int energia})
  
  :super(nombre: nombre, rol:rol, vida: vida, energia: energia);
  
  
  @override
  void atacar(){
    print('$nombre ataca al enemigo con su primer hechizo. Vida: $vida, Energía: $energia');
  }
  
  
  void ultimate(){
    print('$nombre lanza su Habilidad DEFINITIVA, causando mucho daño');
  }
  
  
}


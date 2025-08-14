//                                                                             Nombre: Samuel Lora Garcés.
//--------------------------CLASE PERSONA----------------------------
class Persona{
  String nombre='';
  String apellido='';
  int edad=0;
  String telefono='';
  String correo='';
  
  
  
  Persona(String nombre, String apellido, int edad, String telefono, String correo){
    this.nombre = nombre;
    this.apellido= apellido;
    this.edad= edad;
    this.telefono= telefono;
    this.correo= correo;
  }
}

//---------------------------CLASE ANIMAL------------------------------
class Animal{
  String raza='';
  String propietario='';
  String fechaNacimiento='';
  bool vacunas= false;
  
  
  Animal({required this.raza, required this.propietario, required this.fechaNacimiento, required this.vacunas});
    
  @override
  String toString(){
    return ' raza:$raza,\n propietario:$propietario,\n Fecha de Nacimiento: $fechaNacimiento,\n Vacunas: $vacunas';
  }
    
}


//-------------------------------MAIN-----------------------------------
void main() { 
  Persona p = new Persona('Samuel', 'Lora', 20, '3022336125', 'samuelora0410@gmail.com');
  print(p);
  
  
  Animal a = new Animal(raza:'Golden Retriever', propietario:'Samuel Lora', fechaNacimiento:'20/02/2020', vacunas: true);
  print(a);
  
  }
void main() {
  
// Instancia constructor normal
  final persona1 = Persona('Martín', 'Lora', 25);
  print(persona1);
  
// Instancia constructor nombrado
  final Map<String, dynamic> apidata ={
    'nombre':'Samuel',
    'apellido':'Lora',
    'edad':20
  };
  final persona2 = Persona.apidata(apidata);
  print(persona2);

}


class Persona{
  String nombre='';
  String apellido='';
  int edad=0;

//CONSTRUCTOR NORMAL
  Persona(String nombre, String apellido, int edad)
      :assert (edad >= 18, 'La persona debe ser mayor a 18 años'){
    this.nombre = nombre;
    this.apellido = apellido;
    this.edad = edad;
  
    if (this.edad >= 18){
      print('La persona $nombre $apellido es mayor de edad!!');
    }
  }

//CONSTRUCTOR NOMBRADO
  Persona.apidata(Map<String, dynamic> datos)
    : nombre = datos['nombre'] ?? 'No se registró un nombre.',
     apellido = datos['apellido'] ?? 'No se registró un apellido',
     edad = datos['edad'] ?? 0;
  
  
//Sobreescribir ToString

  @override
  String toString() {
    return 'Persona: Nombre= $nombre, Apellido= $apellido, Edad= $edad';
  }
  }



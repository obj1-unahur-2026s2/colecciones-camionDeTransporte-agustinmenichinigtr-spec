object camion {

 var cosas = []

 const tara = 1000

 const pesoMaximo = 2500

 method pesoTotalCosas() {

    cosas.sum({c => c.peso})
 }

 method cargarCosa(cosa) {

    cosas.add(cosa)
 }

 method descargarCosa(cosa) {

    cosas.remove(cosa)
 }

 method todasLasCosasPesanPar() {

    cosas.all({c => c.pesoEsPar()})
 }

 method cosaPesaTanto(tanto) {
    
    cosas.any({c => c.peso == tanto})
 }

 method primerCosaConPeligrosidadMayorA_(cosaPeligrosa) {

    cosas.findOrElse({c => c.peligrosidad > cosaPeligrosa.peligrosidad}, print("No hay ninguna cosa con peligrosidad mayor a " + cosaPeligrosa.peligrosidad))
 }


 method hayCosaConPeligrosidadMayorA(peligrosidadMaxima) {

    return cosas.any({c => c.peligrosidad > peligrosidadMaxima})
 }

 method pesoTotal() = tara + pesoTotalCosas()

 method camionExcedePesoMaximo() {

    return self.pesoTotal() > pesoMaximo

 }

 method camionPuedeCircularEnRuta(peligrosidadMaxima) {

    return not(camionExcedePesoMaximo()) && not(hayCosaConPeligrosidadMayorA(peligrosidadMaxima))
 }

}
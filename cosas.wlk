object knight_Rider {

    method peso() = 500

    method peligrosidad() = 10
}

object bumblebee {
    method peso() = 800

    var estaTransformado = false

    method peligrosidad() = if(estaTransformado){
     return 30
    } else {
     return 15
    }
}

object paqueteLadrillos {

    var cantidadLadrillos = 0

    const pesoUnidad = 2
    
    method peso() = pesoUnidad * cantidadLadrillos

    method peligrosidad() = 2
}

object arenaAGranel {

    var peso = 0

    method peso() = peso

    method peligrosidad() = 1
}

object bateriaAntiaerea {

    var tieneMisiles = false

    method peso() = if(tieneMisiles) {
        return 300
    } else {
        return 200
    }

    method peligrosidad() = if(tieneMisiles) {
        return 100
    } else {
        return 0
    }
}



object residuosRadioactivos {

    var peso = 0

    method peso() = peso

    method peligrosidad() = 200
}

object embalaje {

    var contenido = null

    method envolver(cosa) {

        contenido = cosa
    }

    method contenido() = contenido

    method peso() = contenido.peso()

    method peligrosidad() = contenido.peligrosidad() / 2
}
import comidas.*

/*
 * Agregar
 * - los objetos que representan a los posibles destinos
 * - la capacidad de Pepita de visitar un destino, modificando su energía.
 */
 
object pepita {
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method viajar(lugar) { energia = lugar.energiaQueAporta(energia)}
}

object patagonia{
	method energiaQueAporta(energia){ return energia+30}
}

object sierrasCordobesas{
	method energiaQueAporta(energia){ return energia+70}
} 

object marDelPlata{
	var esTemporadaAlta = false
	
	method energiaQueAporta(energia){ 
		if (esTemporadaAlta){
			return energia-20
		}
		else{
			return energia+80
		}
	}
	
	method inicioTemporadaAlta(){ esTemporadaAlta= true}
	method finalTemporadaAlta(){ esTemporadaAlta= false}	
}

object noroeste{
	method energiaQueAporta(energia){
		return energia + (0.1*energia)
	}
}

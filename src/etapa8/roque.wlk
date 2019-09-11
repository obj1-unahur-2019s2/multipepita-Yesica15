import masAves.*
import comidas.*
import pepita.*

object roque {
	var pupilos = []
	
	method agregarPupilo(unAve){
		pupilos.add(unAve)
	}
	method dejarPupilo(unAve){
		pupilos.remove(unAve)
	}
	method pupilosCapacesDeVolar(unosKms){
		pupilos.filter( {ave => ave.puedeVolar(unosKms)})
	}
	
	method rutina(pupilo){
		pupilo.volar(10)
		pupilo.comer(alpiste, 300)
		pupilo.volar(5)
		pupilo.haceLoQueQuieras()
	}
	method entrenar() {
		pupilos.forEach({ave => self.rutina(ave)})
	} 
	
	method estaFeliz(){return pupilos.size().between(2,8) }
	
	method pupiloActual(){return pupilos}
	
	method mejorEstudiante(){ return pupilos.find({ ave => ave.puedeVolar(10)})}
}

import susana.*
import roque.*
import masAves.*
import pepita.*
 
object instituto { 
	var entrenadores = []
	method contratar(entrenador){ entrenadores.add(entrenador)}
	method prescindir(entrenador){ entrenadores.remove(entrenador)}
	method entrenamientoGeneral(){ entrenadores.forEach({maestro => maestro.entrenar()})}
	method buenAmbiente(){return entrenadores.all({ maestro => maestro.estaFeliz()})}
	method mejoresEstudiantes(){ 
		var listaMejores = []
		entrenadores.forEach({maestro => listaMejores.add(maestro.mejorEstudiante())})
		return listaMejores
	}
}  // implementar
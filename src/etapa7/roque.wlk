import masAves.*
import comidas.*
import pepita.*

object roque {
	var pupilo = pepita
	
	method tuPupiloEs(ave){ pupilo = ave}
	
	method entrenar() {
		pupilo.volar(10)
		pupilo.comer(alpiste, 300)
		pupilo.volar(5)
		pupilo.haceLoQueQuieras()
	}  
}

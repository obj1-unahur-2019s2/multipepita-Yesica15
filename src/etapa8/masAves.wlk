import comidas.*

object pepon {
	var energia = 0
	method energia(){ return energia}
	method volar(kms){ energia -= ((kms*0.5)+1)}
	method haceLoQueQuieras(){ self.volar(1)}
	method comer(cosa, cuanto){ energia += (cosa.energiaPorGramo()*cuanto*0.5)}
	method puedeVolar(unosKms){
		return energia >= (1+(unosKms*0.5))
	}   
}// implementar

// implementar el objeto entero, salvo haceLoQueQuieras que lo damos hecho
// ayuda: conviene ponerle dos atributos
object pipa {
	var kmRecorridos=0
	var gramosConsumidos=0
	
	method kmsRecorridos(){ return kmRecorridos}
	method gramosIngeridos(){ return gramosConsumidos}
	
	method comer(cosa, cuanto){ gramosConsumidos += cuanto}
	method volar(kms){ kmRecorridos += kms}
	/*
	 * cuando le dicen a pipa que haga lo que quiera, no hace nada
	 */
	method haceLoQueQuieras() { }   // queda asi
	// pregunta: ¿por qué es necesario agregar este método, sin código
	method puedeVolar(unosKms){
		return true
	}
}

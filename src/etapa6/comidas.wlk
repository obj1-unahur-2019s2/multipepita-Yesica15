
object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

object bigMac {
	method energiaPorGramo() { return 2 }
}

/*
 * el alcaucil da 20 joules por gramo
 */ 
object alcaucil {
	method energiaPorGramo() {
		return 20	
	}
}

/*
 * el sorgo da 9 joules por gramo
 */ 
object sorgo {
	method energiaPorGramo() {
		return 9
	}
}

object mijo{
	var estaMojado
	
	method mojar(){ estaMojado = true}
	
	method secar(){ estaMojado = false}
	
	method energiaPorGramo() {
		var calorias =20
		if (estaMojado){ calorias -= 5}
		return calorias
	}
}

object canelones{
	var tieneQueso= false
	var tieneSalsa= false
		
	method ponerSalsa(){ tieneSalsa= true}
	
	method ponerQueso(){ tieneQueso= true}
	
	method quitarSalsa(){ tieneSalsa= false}
	
	method quitarQueso(){ tieneQueso= false}
	
	method energiaPorGramo() {
		var calorias= 20
		if (tieneQueso){ calorias += 7}
		if (tieneSalsa){ calorias += 5}
		return calorias
	}
}


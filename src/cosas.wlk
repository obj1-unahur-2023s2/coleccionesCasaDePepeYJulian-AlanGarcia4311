object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object milanesaRebozada {
	var kilo = 1	
	
	method kilo(cantDeKilo){
		kilo = cantDeKilo
	}
	method precio() { return 2600 * kilo }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object botellaDeSalsaDeTomate {
	method precio() { return 900 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object microondas {
	method precio() { return 42000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cebolla {
	var kilo = 1
	
	method kilo(cantDeKilo){
		kilo = cantDeKilo
	}
	method precio() =  250 * kilo
	method esComida() =  true
	method esElectrodomestico() =  false
}

object compu {
	method precio() { return 500 * dolar.precioDeVenta() }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object dolar {
	method precioDeVenta() = 600
}

object packDeComida {
	var plato = null
	var aderezo = null
	
	method plato() = plato
	method aderezo() = aderezo
	
	method platoDeComida(unaComida){
		const platosDeComidaPosibles = [tiraDeAsado,paqueteDeFideos,milanesaRebozada]
		if(platosDeComidaPosibles.contains(unaComida)){
			plato = unaComida
		}
	}
	method aderezo(unAderezo){
		const aderezosPosibles = [botellaDeSalsaDeTomate, cebolla]
		if(aderezosPosibles.contains(unAderezo)){
			aderezo = unAderezo
		}
	}
}

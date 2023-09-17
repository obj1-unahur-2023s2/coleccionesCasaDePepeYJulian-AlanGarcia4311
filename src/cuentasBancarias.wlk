object cuentaCorriente {
	var saldo = 0
	
	method depositar(importe) { saldo += importe }
	method extraer(importe) { if (saldo < importe) self.error("no hay saldo suficiente")
								else saldo -= importe
	}
	method saldo() = saldo
}

object cuentaConGastos {
	var saldo = 0
	
	method depositar(importe) { saldo += 0.max(importe - 200)}
	method extraer(importe) { if (saldo < importe) self.error("no hay saldo suficiente")
								else if (importe >= 10000) saldo -= importe + 200
								else saldo -= importe * 0.02
								}
}

object cuentaCombinada {
	var cuentaPrimaria = 0
	var cuentaSecundaria = 0
	
	method saldo() = cuentaPrimaria + cuentaSecundaria
	method cuentaPrimaria() = cuentaPrimaria
	method cuentaSecundaria() = cuentaSecundaria
	method depositar(importe) { cuentaPrimaria += importe }
	method extraer(importe) { 
		if(importe > cuentaPrimaria){
			cuentaSecundaria -= (cuentaPrimaria - importe).abs()
			cuentaPrimaria = 0 }
		else {cuentaPrimaria -= importe}
	}
}
object cuentaCorriente {
	var saldo = 30000 
	
	method depositar(importe){
		saldo += importe
	}
	
	method extraer(importe){
		saldo = 0.max(saldo - importe)
	}
	
	method saldo()=saldo
}

object cuentaConGastos {
	var saldo = 2000000
	
	method depositar(importe){
		saldo += importe - 200
	}
	
	method extraer(importe){
		if (importe < 10000){
			saldo = 0.max(saldo - ( importe +200 ))
		}
		else{
			saldo = 0.max((saldo - (importe + importe *0.02)))
		}
	}
	
	method saldo()=saldo
}

object cuentaCombinada{
	var property primaria = cuentaCorriente
	var property secundaria = cuentaConGastos
	var saldo
	
	method saldo()= primaria.saldo() + secundaria.saldo()
	method depositar(importe){
		primaria.depositar(importe)
	}
	method extraer(importe){
		if (primaria.saldo() > importe){
			primaria.extraer(importe)
		}
		else{
			secundaria.extraer(importe)
		}
	}
	
}

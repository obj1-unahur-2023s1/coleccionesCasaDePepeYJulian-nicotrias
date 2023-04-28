// Como ya sabemos crear objetos y definir algunos métodos simples, 
// algunos los tenemos parcialmente definidos. Completar todo los demás
// para satisfacer lo que pide el enunciado.

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

object kiloDeMilanesas{
	method precio()= 2600
	method esComida()= true
	method esElectrodomestico()= false
}

object salsaDeTomate{
	method precio()= 900
	method esComida()= true
	method esElectrodomestico()= false
}

object microondas{
	method precio()= 42000
	method esComida()= false
	method esElectrodomestico()= true
}

object kiloDeCebollas{
	method precio()= 250
	method esComida()= true
	method esElectrodomestico()= false
}

object compu{
	method precio()= 500 * dolar.precioDeVenta()
	method esComida()= false
	method esElectrodomestico()= true
}

object packComida{
	const posiblesPlatos = [tiraDeAsado,paqueteDeFideos,kiloDeMilanesas]
	const posiblesAderezos = [salsaDeTomate, kiloDeCebollas]
	var plato = paqueteDeFideos
	var aderezo = salsaDeTomate
	
	method configurarPack(unPlato,unAderezo){
		plato = posiblesPlatos.find({p=> p == unPlato})
		aderezo = posiblesAderezos.find({a=> a == unAderezo}) 
	}
	method precio()= plato.precio() + aderezo.precio()
	method esComida()= true
	method esElectrodomestico()= false
}

object dolar{
	
	method precioDeVenta()= 476

}



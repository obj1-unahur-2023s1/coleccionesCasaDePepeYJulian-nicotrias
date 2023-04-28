import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)
import cuentaBancaria.*

object casa {
	const cosas = []
	var property cuenta = cuentaCorriente
	method comprar(cosa){		
		self.gastarImporte(cosa.precio())
		cosas.add(cosa)
	}	
	method cantidadDeCosasCompradas()= cosas.size()
	method tieneComida()= cosas.any({c=> c.esComida()})
	method vieneDeEquiparse()= cosas.last().esElectrodomestico() or cosas.last().precio() > 50000
	method esDerrochona() = cosas.map({c=> c.precio()}).sum() > 90000
	method compraMasCara()= cosas.max({c=> c.precio()}) // .max(unTransformer )
	method electrodomesticosComprados()= cosas.filter({c=>c.esElectrodomestico()})
	method malaEpoca()= cosas.all({c=>c.esComida()})
	method queFaltaComprar(lista)=  lista.asSet().difference(cosas.asSet()).asList()
	method faltaComida()= cosas.count({c=> c.esComida()}) < 2
	method gastarImporte(importe){
		cuenta.extraer(importe)
	}
	method dineroDisponible()= cuenta.saldo()
}

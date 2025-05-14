class Planta {
	var property estadoInicial 
	method regar()
	method cosechar()
	method sembrar()
	method image()
}

class Maiz inherits Planta {
	var property position 
	var property imagen = "corn_baby.png"
	override method image()= imagen
}

class Trigo inherits Planta{
	var property imagen = "wheat_0.png"
	
	override method image ()= imagen
}

class Tomaco inherits Planta{
	var property imagen = "tomaco.png"
	
	override method image ()= imagen
	
}
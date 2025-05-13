import wollok.game.game

class Maiz {
	var property imagen = "corn_baby.png"
	
	method image() = imagen
	
	method meRegaron() {
		imagen = "corn_adult.png"
		self.image()
	}
}

class Trigo {
	var property estado = [
		"wheat_0.png",
		"wheat_1.png",
		"wheat_2.png",
		"wheat_3.png"
	]
	var property imagen = "wheat_0.png"
	var property regadoContador = 0
	
	method image() = imagen
	
	method meRegaron() {
		if (regadoContador < 3) {
			regadoContador += 1
		} else {
			regadoContador = 0
		}
		
		imagen = estado
		[regadoContador]
		self.imagen()
	}
}

class Tomaco {
	var property x
	var property y
	var property position = game.at(x, y)
	var property imagen = "tomaco_baby.png"
	
	method image() = imagen
	
	//FALTA VERIFICAR QUE SI SE PUEDA MOVER ARRIBA
	method meRegaron() {
		position.up(1)
	}
}

object aspersor {
	var property position = game.center()
	const objetosCercanos //= game.getObjectsIn(game.center().up(1), game.center())
	
	method image() = "aspersor.png"
	
	method rocia() {
		objetosCercanos.forEach({ planta => planta.meRegaron() })
	}
}
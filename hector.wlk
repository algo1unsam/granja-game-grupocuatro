import wollok.game.*

object hector {
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"
	var property dinero = 0
	
	method sembrar() {
		
	}
	
	method regar(planta) {
		try {
			planta.meRegaron()
		} catch e : Exception { //puede mejorarse y no poner solo Exception
			throw new Exception(message = "no tengo nada para regar")
		}
	}
	
	method cosechar() {
		
	}
}
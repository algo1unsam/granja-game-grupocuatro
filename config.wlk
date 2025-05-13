import wollok.game.*
import mago.*
import mapa.*

object nivel1 {
	// Metodo que inicializa las imagenes y configuraciones iniciales
	method iniciar() {

		//agrega objetos al juego
		game.addVisual(fondosMapa)
		game.addVisual(totem)

		//config del movimiento del mago
		config.configurarTeclas() 

		//creacion y configuracion de los orbes
		config.configurarOrbes()
		
		game.addVisual(mago) //movi el visual del mago porque sino los orbes quedaban por arriba

		//configuracion para lanzar la colision
		config.configurarColisiones()
	}

}

//Configuraciones iniciales
object config {

	//metodo configuracion de teclas
	method configurarTeclas() {
		//teclas de movimiento
		keyboard.left().onPressDo({ mago.izquierda()})
		keyboard.right().onPressDo({ mago.derecha()})
		keyboard.up().onPressDo({ mago.subir()})
		keyboard.down().onPressDo({ mago.bajar()})

		//tecla de accion
		keyboard.j().onPressDo({mago.acciona(game.uniqueCollider(mago))}) 
	}
	
	//metodo disparador de colisiones
	method configurarColisiones() {
		game.onCollideDo(mago, { algo => algo.teEncontro(mago) })
	}


	//metodo para construir e inicializar los objetos orbes
	method configurarOrbes(){

		const rosa = new Orbe(x = 15, y = 15, image ="luzRosa.png")

		const verde = new Orbe(x = 20.randomUpTo(game.width()),y = 20.randomUpTo(game.height()), image ="luzVerde.png")

		const celeste = new Orbe(x = 30.randomUpTo(game.width()),y = 30.randomUpTo(game.height()), image ="luzCeleste.png")

		const amarillo = new Orbe(x = 40.randomUpTo(game.width()),y = 40.randomUpTo(game.height()), image ="luzAmarilla.png")

		//conjunto con los orbes
		const orbes = new Set()
		orbes.add(rosa)
		orbes.add(amarillo)
		orbes.add(celeste)
		orbes.add(verde)

		//agregamos cada orbe al juego
		orbes.forEach({orbe => game.addVisual(orbe)})
	}

}
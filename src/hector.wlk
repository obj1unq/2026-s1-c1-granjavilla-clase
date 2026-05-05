import wollok.game.*

object hector {
	var property position = game.center()
	const property image = "player.png"

	method plantar(cultivo) {
		cultivo.position(position)
		game.addVisual(cultivo)
	}
}
class escenario {
  
  fondoCalle objetoCalle;
  Ia objetoIa;
  jugador objetoJugador;
  
  escenario () {
    objetoCalle = new fondoCalle ();
    objetoIa = new Ia ();
    objetoJugador = new jugador ();
   
  }
  
  void draw () {
    
    objetoCalle.draw ();
    objetoIa.draw ();
    objetoJugador.draw ();
   
  }

  void movimiento () {
    if (keyCode == LEFT)
      objetoJugador.movizquierda ();
    if (keyCode == RIGHT)
      objetoJugador.movderecha ();
  }
}

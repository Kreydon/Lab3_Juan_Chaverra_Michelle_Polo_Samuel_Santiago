class MenuPrincipal{
  Boton play = new Boton("empezar",350,450,60,20); 
  MenuPrincipal(){
    
  }
  
  void run(){
    if(play.izquierdo()){
      pagina = 1;
    }
    //mostar botones
    play.mostrar();
  }
  
}

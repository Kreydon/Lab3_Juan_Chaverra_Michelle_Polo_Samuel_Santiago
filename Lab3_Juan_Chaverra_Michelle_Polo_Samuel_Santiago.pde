   public int pagina = 1;



void draw(){
    
   switch(pagina){
     case 0:
     MenuPrincipal.run();
     break;
     case 1:
     Juego.run();
     break;
     case 2:
     TerminarJuego();
     break;
   }
}

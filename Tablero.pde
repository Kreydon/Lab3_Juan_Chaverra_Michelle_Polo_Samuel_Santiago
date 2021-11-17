int tam, ver1 = 0;

class Tablero {

  int[][] tablero;
  Juego Juego;
  
  Tablero(Juego Juego){
    this.Juego = Juego;
  }
  




  void tamtab() {
    if (ver1 == 0) {
      
      Object seleccion = JOptionPane.showInputDialog(
                    null,
                    "¿De qué tamaño desea el tablero?",
                    "4 en raya",
                    JOptionPane.QUESTION_MESSAGE,
                    null,
                    new Object[]{"4x4", "5x5", "6x6", "7x7", "8x8", "9x9", "10x10"},
                    "4x4");
      
      String selec = String.valueOf(seleccion);
      
      switch (selec) {
        case "4x4":
        tam = 4;
        break;
        case "5x5":
        tam = 5;
        break;
        case "6x6":
        tam = 6;
        break;
        case "7x7":
        tam = 7;
        break;
        case "8x8":
        tam = 8;
        break;
        case "9x9":
        tam = 9;
        break;
        case "10x10":
        tam = 10;
        break;
        default:
        tam = 4;
      }
      tablero = new int[tam][tam];
      createBoxes();
      ver1 = 1;
    }
    
  }
  
  
  
  
  void createBoxes(){
    switch (tam) {
       case 4:
        Juego.clickBoxes(tam,120,140);
       break;
       
       case 5:
        Juego.clickBoxes(tam,100,145);
       break;
       case 6:
        Juego.clickBoxes(tam,80,160);
       break;
       case 7:
       Juego.clickBoxes(tam,70,160);
       break;
       case 8:
      Juego.clickBoxes(tam,60,170);      
       break;
       case 9:
       Juego.clickBoxes(tam,50,160);
       break;
       case 10:
       Juego.clickBoxes(tam,47,160);
       break;
       
       
    }
  }

  void forma() {
    switch (tam) {
    case 4:
      for (int i = 0; i<tam; i++) {
        square(140+(120*i), 150, 120);
        for (int j = 0; j<tam; j++) {
          square(140+(120*i), 150+(120*j), 120);
        }
      }
     
      break;

    case 5:
      for (int i = 0; i<tam; i++) {
        square(145+(100*i), 150, 100);
        for (int j = 0; j<tam; j++) {
          square(145+(100*i), 150+(100*j), 100);
        }
      }

      break;

    case 6:
      for (int i = 0; i<tam; i++) {
        square(160+(80*i), 160, 80);
        for (int j = 0; j<tam; j++) {
          square(160+(80*i), 160+(80*j), 80);
        }
      }

      break;

    case 7:
      for (int i = 0; i<tam; i++) {
        square(160+(70*i), 170, 60);
        for (int j = 0; j<tam; j++) {
          square(160+(70*i), 170+(70*j), 70);
        }
      }
      
      break;

    case 8:
      for (int i = 0; i<tam; i++) {
        square(160+(60*i), 170, 60);
        for (int j = 0; j<tam; j++) {
          square(160+(60*i), 170+(60*j), 60);
        }
      }

      break;

    case 9:
      for (int i = 0; i<tam; i++) {
        square(160+(50*i), 170, 50);
        for (int j = 0; j<tam; j++) {
          square(160+(50*i), 170+(50*j), 50);
        }
      }
      
      break;

    case 10:
      for (int i = 0; i<tam; i++) {
        square(160+(47*i), 170, 47);
        for (int j = 0; j<tam; j++) {
          square(160+(47*i), 170+(47*j), 47);
        }
      }
   
      break;
    }
  }

  void configuracion() {
    for (int i = 0; i<tam; i++) {
      for (int j = 0; j<tam; j++) {
        tablero[i][j]=0;
        print(tablero[i][j]);
      }
    }
  }

/*
Esto como tal ya no sirve, pero lo dejo por si acaso
  void mostrar() {
    for (int i = 0; i<=tam; i++) {
      line(20+(80*i), 120, 20+(80*i), 600);
    }
    for (int i = 0; i<=tam; i++) {
      line(20, 120+(80*i), 500, 120+(80*i));
    }
  }
*/
  void fichas() {
    for (int i=0; i<=tam-1; i++) {
      for (int j=0; j<=tam-1; j++) {
        if (tablero[i][j]!=0) {
          if (tablero[i][j]==1) {
            fill(255);
          } else {
            fill(0);
          }
         
          switch (tam) {
       case 4:
         circle(200+(120*i), 210+(120*j), 120); 
      break;
       case 5:
         circle(195+(100*i), 200+(100*j), 100); 
       break;
       case 6:
        circle(200+(80*i), 200+(80*j), 80); 
       break;
       case 7:
        circle(195+(70*i), 205+(70*j), 70); 
       break;
       case 8:
        circle(190+(60*i), 200+(60*j), 60);
       break;
       case 9:
       circle(185+(50*i), 195+(50*j), 50);
       break;
       case 10:
       circle(184+(47*i), 193+(47*j), 47);
       break;
       
       
    }
        }
        fill(155);
      }
    }
  }
  
  boolean Horizontal(){
    for(int j = 0; j <tam;j++){
    for(int i = 0; i+3<tam;i++){
      if(tablero[i][j]!=0&&tablero[i][j]==tablero[i+1][j]&&tablero[i+1][j]==tablero[i+2][j]&&tablero[i+2][j]==tablero[i+3][j]){
        return true;
      }
    }
  }
  return false;
  }
  
  boolean Vertical(){
    for(int j = 0; j <tam;j++){
    for(int i = 0; i+3<tam;i++){
      if(tablero[j][i]!=0&&tablero[j][i]==tablero[j][i+1]&&tablero[j][i+1]==tablero[j][i+2]&&tablero[j][i+2]==tablero[j][i+3]){
        return true;
      }
    }
  }
  return false;
  }
  
  boolean diagonal1(){
    for(int j = 0; j+3 <tam;j++){
    for(int i = 0; i+3<tam;i++){
      if(tablero[j][i]!=0&&tablero[j][i]==tablero[j+1][i+1]&&tablero[j+1][i+1]==tablero[j+2][i+2]&&tablero[j+2][i+2]==tablero[j+3][i+3]){
        return true;
      }
    }
  }
  return false;
  }
  boolean diagonal2(){
    for(int j = tam-1; j-3>=0;j--){
    for(int i = 0; i+3<tam;i++){
      if(tablero[j][i]!=0&&tablero[j][i]==tablero[j-1][i+1]&&tablero[j-1][i+1]==tablero[j-2][i+2]&&tablero[j-2][i+2]==tablero[j-3][i+3]){
        return true;
      }
    }
  }
  return false;
  }
  
  



  void ingresarFicha(int turnoJugador) {
  }
}

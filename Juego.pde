int s1, s2, m1, m2, prev, ver = 0;
class Juego {
  public  int turnoJugador = 1;
  public int Ganador;
  Tablero Tablero = new Tablero(this);
  ArrayList<Boton> clickEvents = new ArrayList<>();

  void configuracion() {
    /* for(int i = 0; i <=7; i++){
     String auxiliar = "fila "+i+"";
     clickEvents.add(new Boton(auxiliar,20+(80*(i)),80,80,680));
     }
     Tablero.configuracion();
     mostrarMatriz(Tablero.tablero);*/
  }

  void clickBoxes(int tam, int n, int n2) {
    for (int i = 0; i <=  tam-1; i++) {
      String auxiliar = "fila "+i+"";
      clickEvents.add(new Boton(auxiliar, n2+(n*(i)), 80, n, 680));
    }
    Tablero.configuracion();
    mostrarMatriz(Tablero.tablero);
  }



  int a = 0;
  void run() {

    /*if(millis()%60==0){
     mostrarMatriz(Tablero.tablero);
     
     }*/



    background(150);
    Tablero.tamtab();
    Tablero.forma();
    tiempo();
    Tablero.fichas();
    for (int i = 0; i <=tam-1; i++) {
      //utilizo esto de abajo para confirmar si estan bien puestas las cajas que al hacer click dan los eventos
      //clickEvents.get(i).mostrar(); //<---- se utiliza para ver los clicks events
      if (clickEvents.get(i).izquierdo()) {

        print(Tablero.tablero[i][0]);
        if (Tablero.tablero[i][0]!=0) {
          JOptionPane.showMessageDialog(null, "no se puede colocar una ficha aqui");
          //mostrarMatriz(Tablero.tablero);
        } else {
          delay(100);

          Boolean aux = true;
          for (int j = 0; j <= tam-1 && aux; j++) {
            if (j == tam-1) {
              Tablero.tablero[i][j]=turnoJugador;
              print(turnoJugador+" <------------------------------");
              Tablero.fichas();

              if (turnoJugador==2) {
                turnoJugador=1;
              } else {
                turnoJugador=2;
              }
            } else if (Tablero.tablero[i][j]==0 && Tablero.tablero[i][j+1]!=0) {
              Tablero.tablero[i][j]=turnoJugador;
              Tablero.fichas();
              aux=false;

              if (turnoJugador==2) {
                turnoJugador=1;
              } else {
                turnoJugador=2;
              }
            }
          }
          //controla si hay un cuatro en fila u columna
          if (Tablero.Horizontal()||Tablero.Vertical()||Tablero.diagonal1()||Tablero.diagonal2()) {
            if (turnoJugador==2) {
              turnoJugador=1;
            } else {
              turnoJugador=2;
            }
            Ganador = turnoJugador;
            JOptionPane.showMessageDialog(null,"El ganador fue el jugador " + Ganador);
            print(Ganador + " yeess <----------------------------------------*");
            pagina = 2;
          }
          int a = 0;
          for (int k = 0; k<tam; k++) {

            if (Tablero.tablero[k][0]!=0) {
              a++;
            }
          }
          if (a==tam) {
            Ganador = 0;
            JOptionPane.showMessageDialog(null,"La partida termino en empate");
            print(Ganador + " Empate :(( <----------------------------------------*");
            pagina = 2;
          }
        }
      }
    }
  }

  void tiempo() {
    textSize(50);
    fill(0);
      m1 = (millis()/1000) / 60;
      s1 = (millis()/1000) % 60;
      text(nf(m1, 2)+":"+nf(s1, 2), 50, 40);
  }
}

void mostrarMatriz(int[][] matriz) {
  print("\n");
  for (int i = 0; i<=tam-1; i++) {
    for (int j = 0; j<=tam-1; j++) {
      print(matriz[j][i]);
    }
    print("\n");
  }
  print("\n");
  print("************************************************");
  print("\n");
}

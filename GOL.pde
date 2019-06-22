

class GOL {

  int w =8;
  int columns, rows;

  // Game of life board
  float [][] board;


  GOL() {
    // Initialize rows, columns and set-up arrays
    columns = width/w;
    rows = height/w;
    board = new float[columns][rows];
    //next = new int[columns][rows];
    // Call function to fill array with random values 0 or 1
    init();
  }
    void init() {
    for (int i =1;i < columns-1;i++) {
      for (int j =1;j < rows-1;j++) {
        board[i][j] = 0;
        
      }
    }
     board[50][20] = 1;
    
  }



void generate() {
float ww =0.1, e=1,n=0.8,s=1.3,sw=1.1,nw=1,se=1.1,ne=1;

float [][] next = new float[columns][rows];
         for (int x = 1; x < columns-1; x++) {
                for (int y = 1; y < rows-1; y++) {
            next[x][y]= board[x][y]+(n*board[x-1][y]+ww*board[x][y-1]+e*board[x][y+1]+s*board[x+1][y])+0.13*(nw*board[x-1][y-1]+ne*board[x-1][y+1]+sw*board[x+1][y-1]+se*board[x+1][y+1]); 
         
          if      ((next[x][y] >= 1)) next[x][y] = 1; 
          //  board[x][y]=rules( board[x-1][y-1],board[x-1][y],board[x-1][y+1],board[x][y-1],board[x][y],board[x][y+1],board[x+1][y-1],board[x+1][y],board[x+1][y+1]);
            
         // board[x][y]= next[x][y];
        for (int i =30;i < 40;i++)  {
      for (int j =20;j < 30;j++) {
        board[i][j] = 0;
        
      }
    }
            
          }
        }
         board= next;
}
 void display() {
    for ( int i = 0; i < columns;i++) {
      for ( int j = 0; j < rows;j++) {
        if ((board[i][j] == 1)) fill(0);
        else fill(225); 
        stroke(0);
        rect(i*w, j*w, w, w);
      }
    }
  }
}

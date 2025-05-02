// week11_4_bubble_happy_part1
// week10_1_bubble_happy_part2
PImage happy1, happy2, happy3; // 第3張圖片
PImage [] happy = new PImage[200]; // Java 的陣列宣告,有200格
int N = 0; // 目前有0張小圖片
int [] x = new int[200]; // 200個 x 座標
int [] y = new int[200]; // 200個 y 座標
void setup(){
  size(600, 675); // 大小和圖片一樣
  happy1 = loadImage("happy1.jpg");
  happy2 = loadImage("happy2.jpg");
}
void mousePressed(){
  happy[N] = happy2.get(mouseX-30, mouseY-30, 60, 60);
  x[N] = mouseX; // 記下[要放小圖]的位置
  y[N] = mouseY; // 記下[要放小圖]的位置
  N++; // 現在正是多了1張小圖
}
void draw(){
  background(happy1);
  for(int i=0; i<N; i++){
    image(happy[i], x[i]-30, y[i]-30);
  }
}

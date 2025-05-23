// week14_5_sound
// 選單 skech - Libary - Manage Libaries...
// 安裝 Sound 後, 開始寫
// 選單 File - Examaples 選 Libaries核心函式庫 Sound-Soundfile-jungle
// 再自己寫
import processing.sound.*; // Java使用 Sound 外掛
SoundFile music, sword, monkey, intro; // 宣告一個變數music
void setup(){
  size(640, 360); // 記得要把音樂檔,拉到程式裡
  sword = new SoundFile(this, "sword slash.mp3"); // 小心檔名不要打錯
  monkey = new SoundFile(this, "Monkey 1.mp3");
  intro = new SoundFile(this, "Intro Song_Final.mp3"); // 今天就沒用到了
  music = new SoundFile(this, "In Game Music.mp3");
  music.play(); // play()播放
}
void mousePressed(){//按下mouse
  if(mouseButton==LEFT)sword.play(); // 按下左鍵(揮劍)
  else monkey.play(); // 按下另外一個鍵(變猴子叫)
}
void draw(){
  // 裡面空白
}

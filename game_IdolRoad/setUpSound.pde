void setUpSound() {
  sound1=new SoundFile(this, "アイドル系インスト風.mp3"); // BGM in first page
  sound2=new SoundFile(this, "ココロツナガル.mp3"); // BGM in stage 1
  sound3=new SoundFile(this, "目指せ！KIRAKIRAアイドル！.mp3"); // BGM in stage2
  sound4= new SoundFile(this, "Closed_park.mp3"); // BGM in stage3

  se1=new SoundFile(this, "決定音.mp3"); // SE when ball bumped
  se2=new SoundFile(this, "アイテム入手音(もしくはカーソル移動音).mp3"); // SE when mouse clicked

  sound1.play(); // BGM1 starts
  sound1.loop(); 
  sound1.amp(0.1);
}

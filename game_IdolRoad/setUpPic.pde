void setUpPic() {
  dance1=loadImage("dance.png"); // dancing girl in stage 1
  dance1.resize(dance1.width*3/5, dance1.height*3/5);

  dance2=loadImage("dance2.png"); // dancing girl2 in stage 1
  dance2.resize(dance2.width*3/5, dance2.height*3/5);

  back1=loadImage("タイトル.png");  // background in first page

  back2=loadImage("bg_chiheisen_green.jpg"); // background in stage1
  back2.resize(back2.width*11/5, back2.height*11/5);

  back3=loadImage("bg_music_live_stage.jpg"); // background in stage2
  back3.resize(back3.width*8/3, back3.height*8/3);

  back4=loadImage("ライブ.png"); // background in stage3

  fan=loadImage("audience_penlight.png"); // fan in first page

  boy1=loadImage("stand_naname3_man.png"); // boy in stage2
  boy1.resize(boy1.width/3, boy1.height/3);

  boy2=loadImage("heart_inuku_man.png"); // boy in stage2
  boy2.resize(boy2.width/3, boy2.height/3);

  boy3=loadImage("otaku_tshirt_man.png"); // boy in stage2
  boy3.resize(boy3.width/3, boy3.height/3);
}

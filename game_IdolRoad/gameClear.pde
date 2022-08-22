boolean gameClear() { // return false when there's at least one block, otherwise return true (game cleared)
  for (int i = 0; i < block.length; i++) {
    if (block[i] > 0) {
      return false;
    }
  }
  {
    return true;
  }
}

void showCleared() { // when game cleared, show 'game cleared press d to end'
  if (gameClear()) {
    textSize(50);
    text("game cleared", width/2, height/2);
    text("press 'd' to end", width/2, height/2+50);
  }
}

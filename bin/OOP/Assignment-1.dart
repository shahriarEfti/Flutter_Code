class Media{
  play(){
    print('Playing media...');
  }
}

class Song extends Media{
 String artist;
 Song(this.artist);

 @override
  void play(){
   print("Playing song by $artist...");
 }

}

void main(){

  Media m = Media();
  Song s = Song("Shahriar_Efti");

  m.play();
  s.play();
}
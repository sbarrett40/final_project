class CardImage{
  //private int difficulty;
  private ArrayList<PImage> images=new ArrayList<PImage>();
  private ArrayList<PImage> edited = new ArrayList<PImage>();
  int timesUsed = 0;
  int random = (int)(Math.random()*(73-timesUsed));
  
  public CardImage(){
    imageSetup();
    for(PImage im:images){
      edited.add(im);
    }
  }
  
  public PImage randomCard(){
    if(timesUsed/2==1){
      timesUsed++;
      PImage p=edited.get(random);
      edited.remove(random);
      return p;
    }else{//(timesUsed/2==0){//1st in pair
      timesUsed++;
      PImage p=images.get(random);
      images.remove(random);
      random = (int)(Math.random()*(73-timesUsed));
      return p;
    }
  }
  //diff 0 -> 4x4
  //diff 1 -> 6x6
  //diff 2 -> 10x10
  //diff 3 -> 12x12
  
  public void imageSetup(){
    //there are 72 of these. someone kill me
    PImage alligator = loadImage("images/alligator.png"); images.add(alligator);
    PImage anteater = loadImage("images/anteater.png"); images.add(anteater);
    PImage antelope = loadImage("images/antelope.png"); images.add(antelope);
    PImage baboon = loadImage("images/baboon.png"); images.add(baboon);
    PImage badger = loadImage("images/badger.png"); images.add(badger);
    PImage baldEagle = loadImage("images/bald_eagle.png"); images.add(baldEagle);
    PImage bear = loadImage("images/bear.png"); images.add(bear);
    PImage bison = loadImage("images/bison.png"); images.add(bison);
    PImage boar = loadImage("images/boar.png"); images.add(boar);
    PImage bunny = loadImage("images/bunny.png"); images.add(bunny);
    PImage camel = loadImage("images/camel.png"); images.add(camel);
    PImage capybara = loadImage("images/capybara.png"); images.add(capybara);
    PImage cat = loadImage("images/cat.png"); images.add(cat);
    PImage chameleon = loadImage("images/chameleon.png"); images.add(chameleon);
    PImage chicken = loadImage("images/chicken.png"); images.add(chicken);
    PImage chimpanzee = loadImage("images/chimpanzee.png"); images.add(chimpanzee);
    PImage chinchilla = loadImage("images/chinchilla.png"); images.add(chinchilla);
    PImage cow = loadImage("images/cow.png"); images.add(cow);
    PImage coyote = loadImage("images/coyote.png"); images.add(coyote);
    PImage crocodile = loadImage("images/crocodile.png"); images.add(crocodile);
    PImage crow = loadImage("images/crow.png"); images.add(crow);
    PImage deer = loadImage("images/deer.png"); images.add(deer);
    PImage dog = loadImage("images/dog.png"); images.add(dog);
    PImage donkey = loadImage("images/donkey.png"); images.add(donkey);
    PImage elephant = loadImage("images/elephant.png"); images.add(elephant);
    PImage elk = loadImage("images/elk.png"); images.add(elk);
    PImage finch = loadImage("images/finch.png"); images.add(finch);
    PImage fish = loadImage("images/fish.png"); images.add(fish);
    PImage fox = loadImage("images/fox.png"); images.add(fox);
    PImage frog = loadImage("images/frog.png"); images.add(frog);
    PImage giraffe = loadImage("images/giraffe.png"); images.add(giraffe);
    PImage guineaPig = loadImage("images/guinea_pig.png"); images.add(guineaPig);
    PImage hare = loadImage("images/hare.png"); images.add(hare);
    PImage hedgehog = loadImage("images/hedgehog.png"); images.add(hedgehog);
    PImage horse = loadImage("images/horse.png"); images.add(horse);
    PImage jaguar = loadImage("images/jaguar.png"); images.add(jaguar);
    PImage jerboa = loadImage("images/jerboa.png"); images.add(jerboa);
    PImage kangaroo = loadImage("images/kangaroo.png"); images.add(kangaroo);
    PImage koala = loadImage("images/koala.png"); images.add(koala);
    PImage lion = loadImage("images/lion.png"); images.add(lion);
    PImage lizard = loadImage("images/lizard.png"); images.add(lizard);
    PImage llama = loadImage("images/llama.png"); images.add(llama);
    PImage mole = loadImage("images/mole.png"); images.add(mole);
    PImage moose = loadImage("images/moose.png"); images.add(moose);
    PImage mouse = loadImage("images/mouse.png"); images.add(mouse);
    PImage muskOx = loadImage("images/musk_ox.png"); images.add(muskOx);
    PImage ocelot = loadImage("images/ocelot.png"); images.add(ocelot);
    PImage octopus = loadImage("images/octopus.png"); images.add(octopus);
    PImage otter = loadImage("images/otter.png"); images.add(otter);
    PImage owl = loadImage("images/owl.png"); images.add(owl);
    PImage panda = loadImage("images/panda.png"); images.add(panda);
    PImage panther = loadImage("images/panther.png"); images.add(panther);
    PImage parrot = loadImage("images/parrot.png"); images.add(parrot);
    PImage pig = loadImage("images/pig.png"); images.add(pig);
    PImage platypus = loadImage("images/platypus.png"); images.add(platypus);
    PImage polarBear = loadImage("images/polar_bear.png"); images.add(polarBear);
    PImage porcupine = loadImage("images/porcupine.png"); images.add(porcupine);
    PImage prairieDog = loadImage("images/prairie_dog.png"); images.add(prairieDog);
    PImage puma = loadImage("images/puma.png"); images.add(puma);
    PImage raccoon = loadImage("images/raccoon.png"); images.add(raccoon);
    PImage rooster = loadImage("images/rooster.png"); images.add(rooster);
    PImage sheep = loadImage("images/sheep.png"); images.add(sheep);
    PImage skunk = loadImage("images/skunk.png"); images.add(skunk);
    PImage sloth = loadImage("images/sloth.png"); images.add(sloth);
    PImage snake = loadImage("images/snake.png"); images.add(snake);
    PImage squirrel = loadImage("images/squirrel.png"); images.add(squirrel);
    PImage tiger = loadImage("images/tiger.png"); images.add(tiger);
    PImage turtle = loadImage("images/turtle.png"); images.add(turtle);
    PImage walrus = loadImage("images/walrus.png"); images.add(walrus);
    PImage weasel = loadImage("images/weasel.png"); images.add(weasel);
    PImage wolf = loadImage("images/wolf.png"); images.add(wolf);
    PImage zebra = loadImage("images/zebra.png"); images.add(zebra);
    //image(dog,0,0); image(porcupine, 100, 100);
  }
  
  public void test(){
    imageSetup();
  }
  
  
}

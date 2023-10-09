BEGIN ~FAMIL1~

IF ~!InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 0 // from: 
  SAY @58296 /* ~The small dragon-like creature purrs quizzically with wide eyes. Nervously, it backs away towards <CHARNAME>. Obviously, it doesn't want to talk to you.~ */
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 1 // from: 
  SAY @58297 /* ~The small dragon-like creature flutters its wings happily, looking at you with almost kaleidoscopic eyes. "You wish something?" It awaits your attention, tail flicking.~ */
  IF ~!InventoryFull(Player1)

OR(2)

Alignment(Player1,MASK_LAWFUL)

Alignment(Player1,MASK_LCNEUTRAL)

~ THEN REPLY @58298 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 2
  IF ~~ THEN REPLY @58299 /* ~*pet and play with it*~ */ GOTO 3
  IF ~~ THEN REPLY @58300 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO 4
  IF ~~ THEN REPLY @58301 /* ~How are you? Everything okay down there?~ */ GOTO 13
  IF ~~ THEN REPLY @58304 /* ~No, it's all right. Let's just keep going.~ */ GOTO 20
  IF ~!InventoryFull(Player1)

Alignment(Player1,MASK_CHAOTIC)

~ THEN REPLY @58866 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 21
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY @58302 /* ~Its eyes brighten, and it practically leaps into your arms, ready to be stowed amongst your belongings, where it can sleep and occasionally poke its head out.~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()

GiveItemCreate("FAMPSD",Player1,0,0,0)

DestroySelf()

~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @58303 /* ~The dragon coos with delight, its multicolored eyes whirling as you pat its warm, leathery hide. "You are very kind to me, my <PRO_LADYLORD>," it purrs.~ */
  IF ~!InventoryFull(Player1)

OR(2)

Alignment(Player1,MASK_LAWFUL)

Alignment(Player1,MASK_LCNEUTRAL)

~ THEN REPLY @58305 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 2
  IF ~~ THEN REPLY @58306 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO 4
  IF ~~ THEN REPLY @58307 /* ~How are you? Everything okay down there?~ */ GOTO 13
  IF ~~ THEN REPLY @58308 /* ~Let's just keep going, then.~ */ GOTO 20
  IF ~!InventoryFull(Player1)

Alignment(Player1,MASK_CHAOTIC)

~ THEN REPLY @59477 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 21
END

IF ~~ THEN BEGIN 4 // from: 1.2 3.1
  SAY @58309 /* ~The familiar cranes its neck back and looks up at you with a slightly bewildered expression. "You wish to ask *me* for advice, my <PRO_LADYLORD>?"~ */
  IF ~Global("chapter","GLOBAL",1)

AreaType(DUNGEON)~ THEN GOTO 5
  IF ~Global("chapter","GLOBAL",1)

!AreaType(DUNGEON)~ THEN GOTO 6
  IF ~Global("chapter","GLOBAL",2)~ THEN GOTO 7
  IF ~Global("chapter","GLOBAL",3)~ THEN GOTO 8
  IF ~Global("chapter","GLOBAL",4)~ THEN GOTO 9
  IF ~Global("chapter","GLOBAL",5)~ THEN GOTO 10
  IF ~Global("chapter","GLOBAL",6)~ THEN GOTO 11
  IF ~Global("chapter","GLOBAL",7)~ THEN GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @58310 /* ~It looks at the darkness for a long moment before turning its colorful eyes back at you. "Let us be away from this dark place, my <PRO_LADYLORD>. That is my advice."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @58311 /* ~The dragon looks about quizzically before turning its multifaceted eyes back upon you. "We go to the place of the poor? The slums, my <PRO_LADYLORD>? I do not know."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @58312 /* ~The little dragon chuckles to itself musically. "You must collect gold, my <PRO_LADYLORD>. Coins and coins enough to find your answers."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY @58313 /* ~It almost seems to frown, its whirling eyes settling on a baleful yellow before continuing. "I do not know, my <PRO_LADYLORD>. You must continue these tasks, no?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.4
  SAY @58314 /* ~It ponders for a long moment, flicking its tail absently, before turning back again. "We must stop this wizard. Save you and the little sister. That is my advice."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.5
  SAY @58315 /* ~It looks around for a moment, its eyes dimming with fear as its tail curls up under its belly. "We must be away from this place soon, my <PRO_LADYLORD>. Please?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.6
  SAY @58316 /* ~It thinks for a moment and then its eyes brighten dramatically. "We must find the sacred elven city, my <PRO_LADYLORD>. Your wizard lies therein, I am certain."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.7
  SAY @58317 /* ~It growls menacingly, but not at you. It flicks its tail wickedly several times. "The wizard, my <PRO_LADYLORD>. He must die, and you must live."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.3 3.2
  SAY @58318 /* ~The dragon flicks its tail with pleasure and gazes up at you with colorful eyes. "So long as you are well, my <PRO_LADYLORD>, then I am well."~ */
  IF ~HPLT(Myself,16)

!HPLT(Myself,8)~ THEN GOTO 15
  IF ~HPLT(Myself,8)~ THEN GOTO 16
  IF ~!HPLT(Myself,16)

RandomNum(4,1)~ THEN GOTO 14
  IF ~!HPLT(Myself,16)

RandomNum(4,2)~ THEN GOTO 17
  IF ~!HPLT(Myself,16)

RandomNum(4,3)~ THEN GOTO 18
  IF ~!HPLT(Myself,16)

RandomNum(4,4)~ THEN GOTO 19
END

IF ~~ THEN BEGIN 14 // from: 13.2
  SAY @58319 /* ~"But since you are asking, I could use a snack. Perhaps a nice gopher. Or some pie... ooooh, yes, I *like* pie!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY @58320 /* ~"I... I am a little hurt, though, my <PRO_LADYLORD>. The cuts sting, and I am bleeding. It... it is not pleasant."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY @58321 /* ~"I... I am hurt badly, my <PRO_LADYLORD>. I don't want to die, my <PRO_LADYLORD>. I want to stay with you." The dragon whimpers a little and curls its tail around your leg.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.3
  SAY @58322 /* ~"I do like traveling with you. Very much, my <PRO_LADYLORD>. Do you have an apple? I could roast the apple a little and then eat it down. Apples are good!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.4
  SAY @58323 /* ~"I am amazed at all the new places I see with you. Everything is so wonderful and so colorful! Is all of the world like this, my <PRO_LADYLORD>?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.5
  SAY @58324 /* ~"I feel wonderful myself, my <PRO_LADYLORD>. My hide is clean, and I stand ready to aid you against danger!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.4 3.3
  SAY @58325 /* ~The dragon flicks its tail contentedly and then turns its eyes back to the path before you. "As you wish, my <PRO_LADYLORD>."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 1.5 3.4
  SAY @58867 /* ~Its eyes brighten, and it practically leaps into your arms, ready to be stowed amongst your belongings, where it can sleep and occasionally poke its head out.~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()

GiveItemCreate("FAMPSD",Player1,0,0,0)

DestroySelf()

~ EXIT
END

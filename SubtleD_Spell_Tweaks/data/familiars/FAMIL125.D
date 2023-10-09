BEGIN ~FAMIL125~

IF ~!InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 0 // from: 
  SAY #72066 /* ~The small dragon-like creature purrs quizzically with wide eyes. Nervously, it backs away towards <CHARNAME>. Obviously, it doesn't want to talk to you.~ */
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 1 // from: 
  SAY #72067 /* ~The small dragon-like creature flutters its wings happily, looking at you with almost kaleidoscopic eyes. "You wish something?" It awaits your attention, tail flicking.~ */
  IF ~!InventoryFull(Player1)

OR(2)

Alignment(Player1,MASK_LAWFUL)

Alignment(Player1,MASK_LCNEUTRAL)

~ THEN REPLY #72068 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 2
  IF ~~ THEN REPLY #72070 /* ~*pet and play with it*~ */ GOTO 3
  IF ~CombatCounter(0)

!HPPercentLT(Myself,100)~ THEN REPLY #73426 /* ~*feed the familiar*~ */ GOTO 17
  IF ~CombatCounter(0)

HPPercentLT(Myself,100)~ THEN REPLY #73432 /* ~*feed the familiar*~ */ GOTO 18
  IF ~~ THEN REPLY #72095 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO 4
  IF ~~ THEN REPLY #72096 /* ~How are you? Everything okay down there?~ */ GOTO 5
  IF ~!InventoryFull(Player1)

Alignment(Player1,MASK_CHAOTIC)

~ THEN REPLY #72098 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 13
  IF ~~ THEN REPLY #72097 /* ~No, it's all right. Let's just keep going.~ */ GOTO 12
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #72069 /* ~Its eyes brighten, and it practically leaps into your arms, ready to be stowed amongst your belongings, where it can sleep and occasionally poke its head out.~ */
  IF ~~ THEN DO ~GiveItemCreate("FAMPSD25",Player1,0,0,0)

DestroySelf()

~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #72071 /* ~The dragon coos with delight, its multicolored eyes whirling as you pat its warm, leathery hide. "You are very kind to me, my <PRO_LADYLORD>," it purrs.~ */
  IF ~!InventoryFull(Player1)

OR(2)

Alignment(Player1,MASK_LAWFUL)

Alignment(Player1,MASK_LCNEUTRAL)

~ THEN REPLY #72072 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 2
  IF ~~ THEN REPLY #72073 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO 4
  IF ~~ THEN REPLY #72083 /* ~How are you? Everything okay down there?~ */ GOTO 5
  IF ~~ THEN REPLY #72091 /* ~Let's just keep going, then.~ */ GOTO 12
  IF ~!InventoryFull(Player1)

Alignment(Player1,MASK_CHAOTIC)

~ THEN REPLY #72093 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 13
END

IF ~~ THEN BEGIN 4 // from: 1.4 3.1
  SAY #72074 /* ~The familiar cranes its neck back and looks up at you with a slightly bewildered expression. "You wish to ask *me* for advice, my <PRO_LADYLORD>?"~ */
  IF ~True()~ THEN EXIT
  IF ~Global("chapter","GLOBAL",8)~ THEN GOTO 14
  IF ~Global("chapter","GLOBAL",9)~ THEN GOTO 15
  IF ~Global("chapter","GLOBAL",10)~ THEN GOTO 16
END

IF ~~ THEN BEGIN 5 // from: 1.5 3.2
  SAY #72084 /* ~The dragon flicks its tail with pleasure and gazes up at you with colorful eyes. "So long as you are well, my <PRO_LADYLORD>, then I am well."~ */
  IF ~HPLT(Myself,48)

!HPLT(Myself,24)~ THEN GOTO 6
  IF ~HPLT(Myself,24)~ THEN GOTO 7
  IF ~!HPLT(Myself,48)

RandomNum(4,1)~ THEN GOTO 8
  IF ~!HPLT(Myself,48)

RandomNum(4,2)~ THEN GOTO 9
  IF ~!HPLT(Myself,48)

RandomNum(4,3)~ THEN GOTO 10
  IF ~!HPLT(Myself,48)

RandomNum(4,4)~ THEN GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #72085 /* ~"I... I am a little hurt, though, my <PRO_LADYLORD>. The cuts sting, and I am bleeding. It... it is not pleasant."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #72086 /* ~"I... I am hurt badly, my <PRO_LADYLORD>. I don't want to die, my <PRO_LADYLORD>. I want to stay with you." The dragon whimpers a little and curls its tail around your leg.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #72087 /* ~"But since you are asking, I could use a snack. Perhaps a nice gopher. Or some pie... ooooh, yes, I *like* pie!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY #72088 /* ~"I do like traveling with you. Very much, my <PRO_LADYLORD>. Do you have an apple? I could roast the apple a little and then eat it down. Apples are good!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.4
  SAY #72089 /* ~"I am amazed at all the new places I see with you. Everything is so wonderful and so colorful! Is all of the world like this, my <PRO_LADYLORD>?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.5
  SAY #72090 /* ~"I feel wonderful myself, my <PRO_LADYLORD>. My hide is clean, and I stand ready to aid you against danger!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.7 3.3
  SAY #72092 /* ~The dragon flicks its tail contentedly and then turns its eyes back to the path before you. "As you wish, my <PRO_LADYLORD>."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.6 3.4
  SAY #72094 /* ~Its eyes brighten, and it practically leaps into your arms, ready to be stowed amongst your belongings, where it can sleep and occasionally poke its head out.~ */
  IF ~~ THEN DO ~GiveItemCreate("FAMPSD25",Player1,0,0,0)

DestroySelf()

~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.1
  SAY #72694 /* ~The little dragon looks up at you for a moment, its eyes shimmering. "You must survive, my <PRO_LADYLORD>. Your heritage places you in great danger!" It whips its tail about agitatedly.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.2
  SAY #72695 /* ~Its bright eyes look piercingly into yours. "There has been so much death, my <PRO_LADYLORD>. So much destruction. But I trust you will find the way to do what is right."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 4.3
  SAY #72696 /* ~For a moment, the dragon growls fiercely. "The imposter must die, my <PRO_LADYLORD>! You must somehow go into the Throne of Bhaal and confront her!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.2
  SAY #73428 /* ~You offer the little dragon some nuts and berries that you have stored, and the dragon nibbles on a few of them but doesn't really seem all that hungry.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.3
  SAY #73430 /* ~The dragon's eyes swirl with pleasure as it noisily gulps down a large quantity of nuts and berries that you have collected. Its wounds visibly start healing immediately.~ */
  IF ~~ THEN DO ~ApplySpell(Myself,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END

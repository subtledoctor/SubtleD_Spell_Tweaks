BEGIN ~FAMIL3~

IF ~!InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 0 // from: 
  SAY @58356 /* ~The small creature looks at you with suspicion, and after a moment's inspection, it turns and gives you full view of its rear while it strolls to <CHARNAME>.~ */
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 1 // from: 
  SAY @58357 /* ~The familiar sighs, its nose twitching slightly with curiosity as it looks up with dark eyes. "What is it now, <PRO_MANWOMAN>? I am hungry. I wish to be petted and fed."~ */
  IF ~!InventoryFull(Player1)
/* Alignment(Player1,MASK_LAWFUL) */
	NextTriggerObject(Player1)
	GLOBAL("D5FAMTN","LOCALS",1)
~ THEN REPLY @58358 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 2
  IF ~!InventoryFull(Player1)
	NextTriggerObject(Player1)
	GLOBAL("D5FAMCN","LOCALS",1)
~ THEN REPLY @58358 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 31
  IF ~!InventoryFull(Player1)
	NextTriggerObject(Player1)
	GLOBAL("D5FAMLE","LOCALS",1)
~ THEN REPLY @58358 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 32
  IF ~!InventoryFull(Player1)
	NextTriggerObject(Player1)
	GLOBAL("D5FAMCE","LOCALS",1)
~ THEN REPLY @58358 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 33
  IF ~~ THEN REPLY @58360 /* ~*pet the familiar*~ */ GOTO 3
  IF ~~ THEN REPLY @58383 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO 4
  IF ~~ THEN REPLY @58384 /* ~How are you? Everything okay down there?~ */ GOTO 13
  IF ~!InventoryFull(Player1)

/* Alignment(Player1,MASK_CHAOTIC) */
	NextTriggerObject(Player1)
	GLOBAL("D5FAMLN","LOCALS",1)
~ THEN REPLY @58873 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 22
  IF ~~ THEN REPLY @59804 /* ~Give me anything you have pickpocketed, will you?~ */ GOTO 23
  IF ~~ THEN REPLY @58385 /* ~Perhaps later. Let's just keep going.~ */ GOTO 20
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY @58359 /* ~The familiar eyes your pack, and then reluctantly crawls inside. "Very well. It is better that you carry me. Do not bump me around so much this time."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()

GiveItemCreate("FAMRAB",Player1,0,0,0)

DestroySelf()

~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @58361 /* ~"Aahhhh..." The familiar half-closes its eyes with contentment, a pleased smile creeping across its face. "Yes, this is good. Food would also be nice."~ */
  IF ~!InventoryFull(Player1)
/* Alignment(Player1,MASK_LAWFUL) */
	NextTriggerObject(Player1)
	GLOBAL("D5FAMTN","LOCALS",1)
~ THEN REPLY @58362 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 2
  IF ~!InventoryFull(Player1)
	NextTriggerObject(Player1)
	GLOBAL("D5FAMCN","LOCALS",1)
~ THEN REPLY @58362 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 31
  IF ~!InventoryFull(Player1)
	NextTriggerObject(Player1)
	GLOBAL("D5FAMLE","LOCALS",1)
~ THEN REPLY @58362 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 32
  IF ~!InventoryFull(Player1)
	NextTriggerObject(Player1)
	GLOBAL("D5FAMCE","LOCALS",1)
~ THEN REPLY @58362 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 33
  IF ~~ THEN REPLY @58363 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO 4
  IF ~~ THEN REPLY @58373 /* ~How are you? Everything okay down there?~ */ GOTO 13
  IF ~!InventoryFull(Player1)
/* Alignment(Player1,MASK_CHAOTIC) */
	NextTriggerObject(Player1)
	GLOBAL("D5FAMLN","LOCALS",1)
~ THEN REPLY @59479 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 22
  IF ~~ THEN REPLY @59812 /* ~Give me anything you have pickpocketed, will you?~ */ GOTO 27
  IF ~~ THEN REPLY @58381 /* ~Let's just keep going, then.~ */ GOTO 20
END

IF ~~ THEN BEGIN 4 // from: 1.2 3.1
  SAY @58364 /* ~The animal looks at you, fairly close to bewildered. "Me? I suppose I have thoughts that it would amuse me to share, but would you even regard them, <PRO_MANWOMAN>?"~ */
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
  SAY @58365 /* ~Looking about at the darkness, the familiar turns back with a shrug. "I would say let us be off to the surface, <PRO_MANWOMAN>. Surely food is more plentiful there."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @58366 /* ~It looks about for several moments, watching various city animals and people. It finally turns back, almost startled. "What? Advice? Ah... no. No advice."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @58367 /* ~The little animal thinks to itself for a few moments and then saunters away, presenting its tail and bum to you. Apparently, it has tired of thinking.~ */
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy,5)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY @58368 /* ~It thinks for a long moment and then seems to drift off, yawning widely. It stares, blinking several times. "Feed me, and then pet me some more. That is my advice."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.4
  SAY @58369 /* ~"Let's see... the wizard is behind all your trials, yes? Then it is easy, <PRO_MANWOMAN>. Find him, kill him, and your troubles are no more. Now will you feed me, yes?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.5
  SAY @58370 /* ~It looks about balefully, its ears folding back against its head in fear. "This... is a place where I am food. I do not like this place. We should go elsewhere."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.6
  SAY @58371 /* ~"Hmm, the elven city has the Tree of Life within, <PRO_MANWOMAN>, a wondrous thing connected to all that is natural. You must find the city and the Tree. That is my advice."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.7
  SAY @58372 /* ~As it thinks, its eyes glow red with uncharacteristic ferocity. "There is only one solution, <PRO_MANWOMAN>. For you to survive, the wizard must die. That is how it must be."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.3 3.2
  SAY @58374 /* ~It looks up with dark eyes, seemingly content to just be near you. It sighs and looks away briefly. "We are connected, you and I. If you are well, so am I."~ */
  IF ~HPLT(Myself,16)

!HPLT(Myself,8)~ THEN GOTO 14
  IF ~HPLT(Myself,8)~ THEN GOTO 15
  IF ~!HPLT(Myself,16)

RandomNum(4,1)~ THEN GOTO 16
  IF ~!HPLT(Myself,16)

RandomNum(4,2)~ THEN GOTO 17
  IF ~!HPLT(Myself,16)

RandomNum(4,3)~ THEN GOTO 18
  IF ~!HPLT(Myself,16)

RandomNum(4,4)~ THEN GOTO 19
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @58375 /* ~"But I myself have a few insignificant injuries. I am strengthened because you are stronger than I. If you could treat my wounds, it would please me."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @58376 /* ~"But I myself am hurt very badly. I bleed, <PRO_MANWOMAN>. I may survive, or I may not... we shall see."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY @58377 /* ~"But since you ask, I am possessed of a craving for food. Procure some for me, and I shall allow you to pet me for a while longer."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.3
  SAY @58378 /* ~"But I think you are a good enough traveling companion. I am pleased with the progress we make. Perhaps I shall remain with you for some time to come; we shall see."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.4
  SAY @58379 /* ~The small animal seems to ponder saying something else, but eventually its attention drifts and it finds something more interesting than you elsewhere. Walking away, it presents its tail and bum to you.~ */
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy,10)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.5
  SAY @58380 /* ~"But all is well enough, <PRO_MANWOMAN>. Why? Are you not well? You will not sicken and die on me, <PRO_MANWOMAN>, would you? If you did, it would sadden me, for a while."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.7 3.6
  SAY @58382 /* ~The familiar sighs and turns its eyes disinterestedly to the path before you. "I would prefer to choose our path myself, but you'll no doubt want to be stubborn."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 1.4 3.3
  SAY @58874 /* ~The familiar eyes your pack for a moment, and then reluctantly crawls inside. "Very well. It is better that you carry me. Do not bump me around so much this time, however."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()

GiveItemCreate("FAMRAB",Player1,0,0,0)

DestroySelf()

~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 1.5 3.4
  SAY @58875 /* ~The familiar eyes your pack for a moment, and then reluctantly crawls inside. "Very well. It is better that you carry me. Do not bump me around so much this time, however."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()

GiveItemCreate("FAMFER",Player1,0,0,0)

DestroySelf()

~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.6
  SAY @59805 /* ~The familiar eyes you suspiciously. "But when I take things, they belong to me."~ */
  IF ~~ THEN REPLY @59806 /* ~Never mind that. Hand it over.~ */ GOTO 24
  IF ~~ THEN REPLY @59807 /* ~Pretty please? I'll feed you and pet you...~ */ GOTO 25
  IF ~~ THEN REPLY @59808 /* ~Oh, never mind, then.~ */ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @59809 /* ~The small animal rolls its eyes and sighs petulantly. "Fine. But you are very cruel to me, you know."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY @59810 /* ~The small animal twitches its tail, pondering. "Well... perhaps. But I would not put it past you not to keep your word. *sigh* Oh, very well. It amuses me when you beg."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2
  SAY @59811 /* ~"As it should be. I earned it, after all."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 // from: 3.5
  SAY @59813 /* ~"*sigh* Very well. Although next time, don't expect such cooperation just from a few seconds of petting."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 1.0 3.0
  SAY @58359 /* ~The familiar eyes your pack, and then reluctantly crawls inside. "Very well. It is better that you carry me. Do not bump me around so much this time."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()

GiveItemCreate("FAMCAT",Player1,0,0,0)

DestroySelf()

~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 1.0 3.0
  SAY @58359 /* ~The familiar eyes your pack, and then reluctantly crawls inside. "Very well. It is better that you carry me. Do not bump me around so much this time."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()

GiveItemCreate("FAMIMP",Player1,0,0,0)

DestroySelf()

~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 1.0 3.0
  SAY @58359 /* ~The familiar eyes your pack, and then reluctantly crawls inside. "Very well. It is better that you carry me. Do not bump me around so much this time."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()

GiveItemCreate("FAMQUAS",Player1,0,0,0)

DestroySelf()

~ EXIT
END

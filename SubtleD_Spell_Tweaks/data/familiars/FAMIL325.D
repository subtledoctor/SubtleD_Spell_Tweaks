BEGIN ~FAMIL325~

IF ~!InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 0 // from: 
  SAY #72585 /* ~The small creature looks at you with suspicion, and after a moment's inspection, it turns and gives you full view of its rear while it strolls to <CHARNAME>.~ */
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 1 // from: 
  SAY #72586 /* ~The familiar sighs, its nose twitching slightly with curiosity as it looks up with dark eyes. "What is it now, <PRO_MANWOMAN>? I am hungry. I wish to be petted and fed."~ */
  IF ~!InventoryFull(Player1)
/* Alignment(Player1,MASK_LAWFUL) */
	NextTriggerObject(Player1)
	GLOBAL("D5FAMTN","LOCALS",1)
~ THEN REPLY #72587 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 2
  IF ~!InventoryFull(Player1)
	NextTriggerObject(Player1)
	GLOBAL("D5FAMCN","LOCALS",1)
~ THEN REPLY #72587 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 31
  IF ~!InventoryFull(Player1)
	NextTriggerObject(Player1)
	GLOBAL("D5FAMLE","LOCALS",1)
~ THEN REPLY #72587 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 32
  IF ~!InventoryFull(Player1)
	NextTriggerObject(Player1)
	GLOBAL("D5FAMCE","LOCALS",1)
~ THEN REPLY #72587 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 33
  IF ~~ THEN REPLY #72589 /* ~*pet the familiar*~ */ GOTO 3
  IF ~CombatCounter(0)

!HPPercentLT(Myself,100)~ THEN REPLY #73442 /* ~*feed the familiar*~ */ GOTO 23
  IF ~CombatCounter(0)

HPPercentLT(Myself,100)~ THEN REPLY #73443 /* ~*feed the familiar*~ */ GOTO 24
  IF ~~ THEN REPLY #72618 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO 4
  IF ~~ THEN REPLY #72619 /* ~How are you? Everything okay down there?~ */ GOTO 5
  IF ~!InventoryFull(Player1)

/* Alignment(Player1,MASK_CHAOTIC) */
	NextTriggerObject(Player1)
	GLOBAL("D5FAMLN","LOCALS",1)

~ THEN REPLY #72621 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 13
  IF ~~ THEN REPLY #72622 /* ~Give me anything you have pickpocketed, will you?~ */ GOTO 16
  IF ~~ THEN REPLY #72630 /* ~Perhaps later. Let's just keep going.~ */ GOTO 15
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #72588 /* ~The familiar eyes your pack and then reluctantly crawls inside. "Very well. It is better that you carry me. Do not bump me around so much this time."~ */
  IF ~~ THEN DO ~GiveItemCreate("FAMFER25",Player1,0,0,0)

DestroySelf()

~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #72590 /* ~"Aahhhh..." The familiar half-closes its eyes with contentment, a pleased smile creeping across its face. "Yes, this is good. Food would also be nice."~ */
  IF ~!InventoryFull(Player1)
/* Alignment(Player1,MASK_LAWFUL) */
	NextTriggerObject(Player1)
	GLOBAL("D5FAMTN","LOCALS",1)
~ THEN REPLY #72591 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 2
  IF ~!InventoryFull(Player1)
	NextTriggerObject(Player1)
	GLOBAL("D5FAMCN","LOCALS",1)
~ THEN REPLY #72591 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 31
  IF ~!InventoryFull(Player1)
	NextTriggerObject(Player1)
	GLOBAL("D5FAMLE","LOCALS",1)
~ THEN REPLY #72591 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 32
  IF ~!InventoryFull(Player1)
	NextTriggerObject(Player1)
	GLOBAL("D5FAMCE","LOCALS",1)
~ THEN REPLY #72591 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 33
  IF ~~ THEN REPLY #72592 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO 4
  IF ~~ THEN REPLY #72602 /* ~How are you? Everything okay down there?~ */ GOTO 5
  IF ~!InventoryFull(Player1)

/* Alignment(Player1,MASK_CHAOTIC) */
	NextTriggerObject(Player1)
	GLOBAL("D5FAMLN","LOCALS",1)

~ THEN REPLY #72612 /* ~Come here. I want to pick you up and put you in my pack, where it's a bit safer.~ */ GOTO 13
  IF ~~ THEN REPLY #72614 /* ~Give me anything you have pickpocketed, will you?~ */ GOTO 14
  IF ~~ THEN REPLY #72616 /* ~Let's just keep going, then.~ */ GOTO 15
END

IF ~~ THEN BEGIN 4 // from: 1.4 3.1
  SAY #72593 /* ~The animal looks at you, fairly close to bewildered. "Me? I suppose I have thoughts that it would amuse me to share, but would you even regard them, <PRO_MANWOMAN>?"~ */
  IF ~True()~ THEN EXIT
  IF ~Global("chapter","GLOBAL",8)~ THEN GOTO 20
  IF ~Global("chapter","GLOBAL",9)~ THEN GOTO 21
  IF ~Global("chapter","GLOBAL",10)~ THEN GOTO 22
END

IF ~~ THEN BEGIN 5 // from: 1.5 3.2
  SAY #72603 /* ~It looks up with dark eyes, seemingly content to just be near you. It sighs and looks away briefly. "We are connected, you and I. If you are well, so am I."~ */
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
  SAY #72604 /* ~"But I myself have a few insignificant injuries. I am strengthened because you are stronger than I. If you could treat my wounds, it would please me."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #72605 /* ~"But I myself am hurt very badly. I bleed, <PRO_MANWOMAN>. I may survive, or I may not... we shall see."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #72606 /* ~"But since you ask, I am possessed of a craving for food. Procure some for me, and I shall allow you to pet me for a while longer."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY #72607 /* ~"But I think you are a good enough traveling companion. I am pleased with the progress we make. Perhaps I shall remain with you for some time to come; we shall see."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.4
  SAY #72608 /* ~The small animal seems to ponder saying something else, but eventually its attention drifts and it finds something more interesting than you elsewhere. Walking away, it presents its tail and bum to you.~ */
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy,10)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.5
  SAY #72609 /* ~"But all is well enough, <PRO_MANWOMAN>. Why? Are you not well? You will not sicken and die on me, <PRO_MANWOMAN>, would you? If you did, it would sadden me, for a while."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.6 3.3
  SAY #72611 /* ~The familiar eyes your pack for a moment, and then reluctantly crawls inside. "Very well. It is better that you carry me. Do not bump me around so much this time, however."~ */
  IF ~~ THEN DO ~GiveItemCreate("FAMRAB25",Player1,0,0,0)

DestroySelf()

~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.7 3.4
  SAY #72613 /* ~The familiar eyes your pack for a moment, and then reluctantly crawls inside. "Very well. It is better that you carry me. Do not bump me around so much this time, however."~ */
  IF ~~ THEN DO ~GiveItemCreate("FAMFER25",Player1,0,0,0)

DestroySelf()

~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.5
  SAY #72615 /* ~"*sigh* Very well. Although next time, don't expect such cooperation just from a few seconds of petting."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.9 3.6
  SAY #72617 /* ~The familiar sighs and turns its eyes disinterestedly to the path before you. "I would prefer to choose our path myself, but you'll no doubt want to be stubborn."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.8
  SAY #72623 /* ~The familiar eyes you suspiciously. "But when I take things, they belong to me."~ */
  IF ~~ THEN REPLY #72624 /* ~Never mind that. Hand it over.~ */ GOTO 17
  IF ~~ THEN REPLY #72626 /* ~Pretty please? I'll feed you and pet you...~ */ GOTO 18
  IF ~~ THEN REPLY #72628 /* ~Oh, never mind, then.~ */ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #72625 /* ~The small animal rolls its eyes and sighs petulantly. "Fine. But you are very cruel to me, you know."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #72627 /* ~The small animal twitches its tail, pondering. "Well... perhaps. But I would not put it past you not to keep your word. *sigh* Oh, very well. It amuses me when you beg."~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #72629 /* ~"As it should be. I earned it, after all."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 4.1
  SAY #72700 /* ~The little animal shrugs, bored. "I do not know what advice to give. The wizard is dead, you have your soul... can you not just leave?" It yawns widely. "Maybe build an army. Isn't that what you do?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 4.2
  SAY #72701 /* ~It blinks several times, thinking hard. "It... seems to me that there is a reason that all the children of Bhaal are coming together. You must end it, I think." It grins suddenly. "And, of course, you must win!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from: 4.3
  SAY #72702 /* ~"The only answer must be obvious... you must find this female who has lied to you and kill her! You must travel to the Abyss, and her life must be ended!" It shrugs. "Or, at least, that's what I would do."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.2
  SAY #73444 /* ~You scrounge up some food from your pack and offer it to the creature. It seems pleased and nibbles away contentedly, pausing every now and again to grin at you. "Thank you, my <PRO_LADYLORD>."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.3
  SAY #73445 /* ~The little creature seems ravenous and digs into the food you offer immediately. Its wounds begin to close before your eyes. The pleased familiar grins at you repeatedly. "Many thanks, my <PRO_LADYLORD>!"~ */
  IF ~~ THEN DO ~ApplySpell(Myself,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 1.0 3.0
  SAY #72588 /* ~The familiar eyes your pack and then reluctantly crawls inside. "Very well. It is better that you carry me. Do not bump me around so much this time."~ */
  IF ~~ THEN DO ~GiveItemCreate("FAMCAT25",Player1,0,0,0)

DestroySelf()

~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 1.0 3.0
  SAY #72588 /* ~The familiar eyes your pack and then reluctantly crawls inside. "Very well. It is better that you carry me. Do not bump me around so much this time."~ */
  IF ~~ THEN DO ~GiveItemCreate("FAMIMP25",Player1,0,0,0)

DestroySelf()

~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 1.0 3.0
  SAY #72588 /* ~The familiar eyes your pack and then reluctantly crawls inside. "Very well. It is better that you carry me. Do not bump me around so much this time."~ */
  IF ~~ THEN DO ~GiveItemCreate("FAMQUA25",Player1,0,0,0)

DestroySelf()

~ EXIT
END

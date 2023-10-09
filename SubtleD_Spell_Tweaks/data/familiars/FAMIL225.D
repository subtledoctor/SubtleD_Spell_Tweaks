// creator  : /Users/bri/Desktop/BG2EE 2-5-16.app/Contents/Resources/NearInfinity.app/Contents/MacOS/NearInfinity.jar (v2.1-20180531)
// game     : /Users/bri/Desktop/BG2EE 2-5-16.app/Contents/Resources
// resource : FAMIL225.DLG
// source   : data/25Dialog.bif
// dialog   : lang/en_US/dialog.tlk
// dialogF  : (none)

BEGIN ~FAMIL225~

IF ~!InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 0 // from: 
  SAY #72631 /* ~The creature stares with open derision, sticking out its forked tongue rudely. It scoots off to <CHARNAME>. Obviously, it doesn't want to talk to you...~ */
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 1 // from: 
  SAY #72632 /* ~The impish creature regards you suspiciously, wary of a kick or slap headed its way, before sidling a step or two closer. "Yeah, boss? You want something?"~ */
  IF ~Alignment(Player1,MASK_LAWFUL)
!InventoryFull(Player1)
~ THEN REPLY #72633 /* ~Come here. You're going in my pack for now.~ */ GOTO 2
  IF ~Range(LastTalkedToBy,3)~ THEN REPLY #72635 /* ~Don't be so frightened of me, idiot. *pet the familiar*~ */ GOTO 3
  IF ~Range(LastTalkedToBy,3)~ THEN REPLY #72688 /* ~*slap it in the head*~ */ GOTO 4
  IF ~CombatCounter(0)
!HPPercentLT(Myself,100)~ THEN REPLY #73435 /* ~*feed the familiar*~ */ GOTO 22
  IF ~CombatCounter(0)
HPPercentLT(Myself,100)~ THEN REPLY #73436 /* ~*feed the familiar*~ */ GOTO 23
  IF ~Alignment(Player1,MASK_LCNEUTRAL)
!InventoryFull(Player1)
~ THEN REPLY #72689 /* ~Come here. You're going in my pack for now.~ */ GOTO 15
  IF ~Alignment(Player1,MASK_CHAOTIC)
!InventoryFull(Player1)
~ THEN REPLY #72690 /* ~Come here. You're going in my pack for now.~ */ GOTO 16
  IF ~~ THEN REPLY #72691 /* ~Do have any advice for me, my familiar?~ */ GOTO 6
  IF ~~ THEN REPLY #72692 /* ~Are you all right, familiar? All is well?~ */ GOTO 7
  IF ~~ THEN REPLY #72693 /* ~Never mind. Just keep moving.~ */ GOTO 14
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 17.0
  SAY #72634 /* ~"Oh, sure. Stick me in your smelly pack. Ever thought of putting some mint in there? Baaah..." Reluctantly, the imp crawls into your pack.~ */
  IF ~~ THEN DO ~GiveItemCreate("FAMIMP25",Player1,0,0,0)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #72636 /* ~It seems disgusted as you pat it on the head. "Oh, now I'm a cute little bunny? Give me a break, boss." The imp darts away and does a heebie-jeebie dance.~ */
  IF ~Alignment(Player1,MASK_LAWFUL)
!InventoryFull(Player1)
~ THEN REPLY #72637 /* ~Come here, then. Get in my pack.~ */ GOTO 2
  IF ~Range(LastTalkedToBy,3)~ THEN REPLY #72638 /* ~*slap it in the head*~ */ GOTO 4
  IF ~Alignment(Player1,MASK_LCNEUTRAL)
!InventoryFull(Player1)
~ THEN REPLY #72683 /* ~Come here, then. Get in my pack.~ */ GOTO 15
  IF ~Alignment(Player1,MASK_CHAOTIC)
!InventoryFull(Player1)
~ THEN REPLY #72684 /* ~Come here, then. Get in my pack.~ */ GOTO 16
  IF ~~ THEN REPLY #72685 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO 6
  IF ~~ THEN REPLY #72686 /* ~Is all well down there?~ */ GOTO 7
  IF ~~ THEN REPLY #72687 /* ~All right, let's just keep going.~ */ GOTO 14
END

IF ~~ THEN BEGIN 4 // from: 1.2 3.1
  SAY #72639 /* ~The imp reels from the blow. "HeeEEYY! Cripes! What wuz that for?! I did everything you told me to, boss! Sheesh! Some people..."~ */
  IF ~Alignment(Player1,MASK_LAWFUL)
!InventoryFull(Player1)
~ THEN REPLY #72640 /* ~Come here, then. Get in my pack.~ */ GOTO 2
  IF ~RandomNum(3,1)~ THEN REPLY #72641 /* ~*slap it again*~ */ GOTO 5
  IF ~RandomNum(3,2)~ THEN REPLY #72668 /* ~*slap it again*~ */ GOTO 17
  IF ~RandomNum(3,3)~ THEN REPLY #72676 /* ~*slap it again*~ */ GOTO 18
  IF ~~ THEN REPLY #72678 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO 6
  IF ~~ THEN REPLY #72679 /* ~Is all well down there?~ */ GOTO 7
  IF ~~ THEN REPLY #72680 /* ~All right, let's just keep going.~ */ GOTO 14
  IF ~Alignment(Player1,MASK_LCNEUTRAL)
!InventoryFull(Player1)
~ THEN REPLY #72681 /* ~Come here, then. Get in my pack.~ */ GOTO 15
  IF ~Alignment(Player1,MASK_CHAOTIC)
!InventoryFull(Player1)
~ THEN REPLY #72682 /* ~Come here, then. Get in my pack.~ */ GOTO 16
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #72642 /* ~Another slap sends it to the floor, frantically covering its head. "Gaaah! Okay! You're the boss-<PRO_MANWOMAN>! YOU boss, ME just little follower! I get it!"~ */
  IF ~Alignment(Player1,MASK_LAWFUL)
!InventoryFull(Player1)
~ THEN REPLY #72643 /* ~Come here, then. Get in my pack.~ */ GOTO 2
  IF ~~ THEN REPLY #72644 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO 6
  IF ~~ THEN REPLY #72654 /* ~So... is all well down there?~ */ GOTO 7
  IF ~~ THEN REPLY #72662 /* ~All right, let's just keep going.~ */ GOTO 14
  IF ~Alignment(Player1,MASK_LCNEUTRAL)
!InventoryFull(Player1)
~ THEN REPLY #72664 /* ~Come here, then. Get in my pack.~ */ GOTO 15
  IF ~Alignment(Player1,MASK_CHAOTIC)
!InventoryFull(Player1)
~ THEN REPLY #72666 /* ~Come here, then. Get in my pack.~ */ GOTO 16
END

IF ~~ THEN BEGIN 6 // from: 1.7 3.4 4.4 5.1 17.1
  SAY #72645 /* ~It looks at you incredulously, wondering if you are serious or if this is a prelude to a slap. "You want *me* to give *you* advice, boss? That's a first."~ */
  IF ~True()~ THEN EXIT
  IF ~Global("chapter","GLOBAL",8)~ THEN GOTO 19
  IF ~Global("chapter","GLOBAL",9)~ THEN GOTO 20
  IF ~Global("chapter","GLOBAL",10)~ THEN GOTO 21
END

IF ~~ THEN BEGIN 7 // from: 1.8 3.5 4.5 5.2 17.2
  SAY #72655 /* ~It looks at you suspiciously, its sulfur eyes squinting. "Hmph. Since when are you so interested in me, boss? Up 'til now, it's all been you, you, you."~ */
  IF ~HPLT(Myself,48)
!HPLT(Myself,24)~ THEN GOTO 8
  IF ~HPLT(Myself,24)~ THEN GOTO 9
  IF ~!HPLT(Myself,48)
RandomNum(4,1)~ THEN GOTO 10
  IF ~!HPLT(Myself,48)
RandomNum(4,2)~ THEN GOTO 11
  IF ~!HPLT(Myself,48)
RandomNum(4,3)~ THEN GOTO 12
  IF ~!HPLT(Myself,48)
RandomNum(4,4)~ THEN GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #72656 /* ~"But if you're really concerned, you could get me some healing. I got scratches, you know... you wouldn't want me to die, would you? I'm too useful!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #72657 /* ~"But since you're asking, I could use healing. Ichor's running bad... you wouldn't want to send me back to the planes, would you? *That* would be a shame..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #72658 /* ~"But, hmmm, let me see. I'm kinda hungry. How about a puppy sandwich? A steak? A chicken sacrifice? C'mon, throw me a bone here, sheesh!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #72659 /* ~"But since you asked, I think you should get more gold. I wanna sleep in a BIG bag of gold. I could swim in it... yeah, that's it, swim in the gold... yeah..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.4
  SAY #72660 /* ~"But I would like to say that you run around too much. Here, there, back again... sheesh! Don't you ever stop awhile, set up shop? Gimme a break, boss!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.5
  SAY #72661 /* ~"But since you asked, I wanna register a complaint. Where's all *my* magical stuff? I want a big sword... and a bag of holding... and some wands, yeah, wands..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.9 3.6 4.6 5.3 17.3
  SAY #72663 /* ~It looks ahead and sighs, scratching its rear luridly. "Oh, sure. Only, what, another fifty years of wanderin' around? Don't you ever settle down? Sheesh..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.5 3.2 4.7 5.4 17.4
  SAY #72665 /* ~It rolls its eyes. "Oh, sure. Stick me in your smelly pack. Ever thought of sticking some mint in there? Baaah..." It reluctantly crawls in.~ */
  IF ~~ THEN DO ~GiveItemCreate("FAMDUS25",Player1,0,0,0)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.6 3.3 4.8 5.5 17.5
  SAY #72667 /* ~It rolls its eyes. "Oh, sure. Stick me in your smelly pack. Ever thought of sticking some mint in there? Baaah..." It reluctantly crawls in.~ */
  IF ~~ THEN DO ~GiveItemCreate("FAMQUA25",Player1,0,0,0)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 4.2
  SAY #72669 /* ~"Ow! Dammit, stop it! I'll do whatever you say, just stop slappin'!" It takes steps away, muttering something about "abusive codependent relationships" or similar.~ */
  IF ~Alignment(Player1,MASK_LAWFUL)
!InventoryFull(Player1)
~ THEN REPLY #72670 /* ~Come here, then. Get in my pack.~ */ GOTO 2
  IF ~~ THEN REPLY #72671 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO 6
  IF ~~ THEN REPLY #72672 /* ~So... is all well down there?~ */ GOTO 7
  IF ~~ THEN REPLY #72673 /* ~All right, let's just keep going.~ */ GOTO 14
  IF ~Alignment(Player1,MASK_LCNEUTRAL)
!InventoryFull(Player1)
~ THEN REPLY #72674 /* ~Come here, then. Get in my pack.~ */ GOTO 15
  IF ~Alignment(Player1,MASK_CHAOTIC)
!InventoryFull(Player1)
~ THEN REPLY #72675 /* ~Come here, then. Get in my pack.~ */ GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 4.3
  SAY #72677 /* ~The imp darts away at the last second. "Nyah! Thhhppppfffttt! You couldn't hit the broad side of a barn! You suck!" It dashes away before a reprisal can come.~ */
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy,30)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 6.1
  SAY #72697 /* ~It scratches its head for a moment before replying. "There's big trouble, boss. The time has come for all you Bhaalspawn. The jig's up. Time to pay the piper, you know. Just don't get cracked is all I can say about it."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 6.2
  SAY #72698 /* ~The impish creature grins from ear to ear. "Well... kill them before they kill you. That's what my grandpappy always said. Until he was, um, killed..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.3
  SAY #72699 /* ~It shrugs. "Seems simple to me, boss. Kill the bitch."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from: 1.3
  SAY #73438 /* ~You offer the impish being a piece of dried meat. It sniffs it with disgust and rolls its eyes. "I don't really need nothin' to eat, boss. Maybe if I'm wounded." With that, it unceremoniously tosses the meat over its shoulder.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.4
  SAY #73441 /* ~The wounded imp takes a piece of dried meat gingerly from your pack and gulps it down greedily. As it munches away, it looks at you askance. "This don't mean I owes you nothin', boss."~ */
  IF ~~ THEN DO ~ApplySpell(Myself,CLERIC_CURE_MEDIUM_WOUNDS)~ EXIT
END

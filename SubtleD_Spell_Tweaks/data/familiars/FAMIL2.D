
BEGIN ~FAMIL2~

IF ~!InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 0 // from: 
  SAY #58326 /* ~The creature stares with open derision, sticking out its forked tongue rudely. It scoots off to <CHARNAME>. Obviously, it doesn't want to talk to you...~ */
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 1 // from: 
  SAY #58327 /* ~The impish creature regards you suspiciously, wary of a kick or slap headed its way, before sidling a step or two closer. "Yeah, boss? You want something?"~ */
  IF ~Alignment(Player1,MASK_LAWFUL)

!InventoryFull(Player1)

~ THEN REPLY #58328 /* ~Come here. You're going in my pack for now.~ */ GOTO 2
  IF ~Range(LastTalkedToBy,3)~ THEN REPLY #58330 /* ~Don't be so frightened of me, idiot. *pet the familiar*~ */ GOTO 3
  IF ~Range(LastTalkedToBy,3)~ THEN REPLY #58386 /* ~*slap it in the head*~ */ GOTO 21
  IF ~Alignment(Player1,MASK_LCNEUTRAL)

!InventoryFull(Player1)

~ THEN REPLY #58868 /* ~Come here. You're going in my pack for now.~ */ GOTO 25
  IF ~Alignment(Player1,MASK_CHAOTIC)

!InventoryFull(Player1)

~ THEN REPLY #58869 /* ~Come here. You're going in my pack for now.~ */ GOTO 26
  IF ~~ THEN REPLY #58353 /* ~Do have any advice for me, my familiar?~ */ GOTO 4
  IF ~~ THEN REPLY #58354 /* ~Are you all right, familiar? All is well?~ */ GOTO 13
  IF ~~ THEN REPLY #58355 /* ~Never mind. Just keep moving.~ */ GOTO 20
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 21.0 22.0 23.0
  SAY #58329 /* ~"Oh, sure. Stick me in your smelly pack. Ever thought of putting some mint in there? Baaah..." Reluctantly, the imp crawls into your pack.~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()

GiveItemCreate("FAMIMP",Player1,0,0,0)

DestroySelf()

~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #58331 /* ~It seems disgusted as you pat it on the head. "Oh, now I'm a cute little bunny? Give me a break, boss." The imp darts away and does a heebie-jeebie dance.~ */
  IF ~Alignment(Player1,MASK_LAWFUL)

!InventoryFull(Player1)

~ THEN REPLY #58332 /* ~Come here, then. Get in my pack.~ */ GOTO 2
  IF ~Range(LastTalkedToBy,3)~ THEN REPLY #58387 /* ~*slap it in the head*~ */ GOTO 21
  IF ~Alignment(Player1,MASK_LCNEUTRAL)

!InventoryFull(Player1)

~ THEN REPLY #59468 /* ~Come here, then. Get in my pack.~ */ GOTO 25
  IF ~Alignment(Player1,MASK_CHAOTIC)

!InventoryFull(Player1)

~ THEN REPLY #59469 /* ~Come here, then. Get in my pack.~ */ GOTO 26
  IF ~~ THEN REPLY #58333 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO 4
  IF ~~ THEN REPLY #58343 /* ~Is all well down there?~ */ GOTO 13
  IF ~~ THEN REPLY #58351 /* ~All right, let's just keep going.~ */ GOTO 20
END

IF ~~ THEN BEGIN 4 // from: 1.5 3.4 21.4 22.1 23.1
  SAY #58334 /* ~It looks at you incredulously, wondering if you are serious or if this is a prelude to a slap. "You want *me* to give *you* advice, boss? That's a first."~ */
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
  SAY #58335 /* ~It looks around a few moments before turning back to you. "Yeah, I got advice. Get your tail outta here, or hadn't you figured that out? Sheesh, ye're dumb."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #58336 /* ~It rolls its eyes in an exaggerated fashion. "What? Now I'm your tourist guide? Do whatever you want, boss. Go kill a king or something, sheesh."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY #58337 /* ~"Let's see... advice. Advice... advice. Oh, yeah, I know... STOP BUGGIN' ME! Yeah, that's the ticket..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY #58338 /* ~"Well heck, I guess you just do what you're told, eh? Now, if you'd listened to me right off the bat, boss, you never would've gotten into this mess..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.4
  SAY #58339 /* ~It gives looks about and gives a quick shiver. "Yeah, I got advice right, boss. Stick your head between your legs an' kiss your butt goodbye."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.5
  SAY #58340 /* ~The demon looks about. "What? Seems like a cheery enough place. Slaughter the locals, set yourself up as absolute ruler and tyrant. Works for me."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.6
  SAY #58341 /* ~The creature looks quizzical. "Isn't it obvious? You get to that elven city. All that pillaging, there's gotta be treasure ripe for the taking. Sheesh."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.7
  SAY #58342 /* ~"But you want my advice? I'd say you're screwed, boss. But that's just my opinion. You can go ahead and do whatever you want."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.6 3.5 21.5 22.2 23.2
  SAY #58344 /* ~It looks at you suspiciously, its sulfur eyes squinting. "Hmph. Since when are you so interested in me, boss? Up 'til now, it's all been you, you, you."~ */
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
  SAY #58345 /* ~"But if you're really concerned, you could get me some healing. I got scratches, you know... you wouldn't want me to die, would you? I'm too useful!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #58346 /* ~"But since you're asking, I could use healing. Ichor's running bad... you wouldn't want to send me back to the planes, would you? *That* would be a shame..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY #58347 /* ~"But, hmmm, let me see. I'm kinda hungry. How about a puppy sandwich? A steak? A chicken sacrifice? C'mon, throw me a bone here, sheesh!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.3
  SAY #58348 /* ~"But since you asked, I think you should get more gold. I wanna sleep in a BIG bag of gold. I could swim in it... yeah, that's it, swim in the gold... yeah..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.4
  SAY #58349 /* ~"But I would like to say that you run around too much. Here, there, back again... sheesh! Don't you ever stop a while, set up shop? Gimme a break, boss!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.5
  SAY #58350 /* ~"But since you asked, I wanna register a complaint. Where's all *my* magical stuff? I want a big sword... and a bag of holding... and some wands, yeah, wands..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.7 3.6 21.6 22.3 23.3
  SAY #58352 /* ~It looks ahead and sighs, scratching its rear luridly. "Oh, sure. Only, what, another fifty years of wanderin' around? Don't you ever settle down? Sheesh..."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 1.2 3.1
  SAY #58388 /* ~The imp reels from the blow. "HeeEEYY! Cripes! What wuz that for?! I did everything you told me to, boss! Sheesh! Some people..."~ */
  IF ~Alignment(Player1,MASK_LAWFUL)

!InventoryFull(Player1)

~ THEN REPLY #59470 /* ~Come here, then. Get in my pack.~ */ GOTO 2
  IF ~RandomNum(3,1)~ THEN REPLY #58391 /* ~*slap it again*~ */ GOTO 22
  IF ~RandomNum(3,2)~ THEN REPLY #58392 /* ~*slap it again*~ */ GOTO 23
  IF ~RandomNum(3,3)~ THEN REPLY #58393 /* ~*slap it again*~ */ GOTO 24
  IF ~~ THEN REPLY #58394 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO 4
  IF ~~ THEN REPLY #58395 /* ~Is all well down there?~ */ GOTO 13
  IF ~~ THEN REPLY #58396 /* ~All right, let's just keep going.~ */ GOTO 20
  IF ~Alignment(Player1,MASK_LCNEUTRAL)

!InventoryFull(Player1)

~ THEN REPLY #59471 /* ~Come here, then. Get in my pack.~ */ GOTO 25
  IF ~Alignment(Player1,MASK_CHAOTIC)

!InventoryFull(Player1)

~ THEN REPLY #59472 /* ~Come here, then. Get in my pack.~ */ GOTO 26
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #58389 /* ~Another slap sends it to the floor, frantically covering its head. "Gaaah! Okay! You're the boss-<PRO_MANWOMAN>! YOU boss, ME just little follower! I get it!"~ */
  IF ~Alignment(Player1,MASK_LAWFUL)

!InventoryFull(Player1)

~ THEN REPLY #58399 /* ~Come here, then. Get in my pack.~ */ GOTO 2
  IF ~~ THEN REPLY #58401 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO 4
  IF ~~ THEN REPLY #58403 /* ~So... is all well down there?~ */ GOTO 13
  IF ~~ THEN REPLY #58405 /* ~All right, let's just keep going.~ */ GOTO 20
  IF ~Alignment(Player1,MASK_LCNEUTRAL)

!InventoryFull(Player1)

~ THEN REPLY #59473 /* ~Come here, then. Get in my pack.~ */ GOTO 25
  IF ~Alignment(Player1,MASK_CHAOTIC)

!InventoryFull(Player1)

~ THEN REPLY #59474 /* ~Come here, then. Get in my pack.~ */ GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 21.2
  SAY #58397 /* ~"Ow! Dammit, stop it! I'll do whatever you say, just stop slappin'!" It takes steps away, muttering something about "abusive codependent relationships" or similar.~ */
  IF ~Alignment(Player1,MASK_LAWFUL)

!InventoryFull(Player1)

~ THEN REPLY #58400 /* ~Come here, then. Get in my pack.~ */ GOTO 2
  IF ~~ THEN REPLY #58402 /* ~You wouldn't happen to have any advice, would you?~ */ GOTO 4
  IF ~~ THEN REPLY #58404 /* ~So... is all well down there?~ */ GOTO 13
  IF ~~ THEN REPLY #58406 /* ~All right, let's just keep going.~ */ GOTO 20
  IF ~Alignment(Player1,MASK_LCNEUTRAL)

!InventoryFull(Player1)

~ THEN REPLY #59475 /* ~Come here, then. Get in my pack.~ */ GOTO 25
  IF ~Alignment(Player1,MASK_CHAOTIC)

!InventoryFull(Player1)

~ THEN REPLY #59476 /* ~Come here, then. Get in my pack.~ */ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 21.3
  SAY #58398 /* ~The imp darts away at the last second. "Nyah! Thhhppppfffttt! You couldn't hit the broad side of a barn! You suck!" It dashes away before a reprisal can come.~ */
  IF ~~ THEN DO ~RunAwayFrom(LastTalkedToBy,30)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 1.3 3.2 21.7 22.4 23.4
  SAY #58870 /* ~It rolls its eyes. "Oh, sure. Stick me in your smelly pack. Ever thought of sticking some mint in there? Baaah..." It reluctantly crawls in.~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()

GiveItemCreate("FAMDUST",Player1,0,0,0)

DestroySelf()

~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.4 3.3 21.8 22.5 23.5
  SAY #58871 /* ~It rolls its eyes. "Oh, sure. Stick me in your smelly pack. Ever thought of sticking some mint in there? Baaah..." It reluctantly crawls in.~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()

GiveItemCreate("FAMQUAS",Player1,0,0,0)

DestroySelf()

~ EXIT
END

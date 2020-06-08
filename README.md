<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>SubtleDoctor's Random Tweaks</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="style/g3readme_cam.css" type="text/css" />
<link href="style/g3icon.ico" rel="icon" type="image/bmp" />
</head>
<body>
<h1>Lots of random small game changes</h1>
<div class="section">
  <p><strong>Author:</strong> <a href="http://forums.gibberlings3.net/index.php?showuser=6306">Duns Scotus, the SubtleDoctor</a><br />
</p>
  <p><strong> Version 0.6 </strong><br />
    <strong> Languages:</strong> English<br />
    <strong>Platforms: </strong>Windows, Mac OS X</p>
</div>
<h2>Overview</h2>
<div class="section">
  <p>This is just a bunch of small tweaks that I sometimes apply to my own game. A bunch of small, cool things I can do with the new EE engine.</p>
  <p>These don't really belong with any existing mods, and they are very much a matter of my personal taste, so I am not including them in any Unearthed Arcana project.</p>
  <p><b>Note:</b> most or all of these use EE 2.0 engine features. One or two may work on the pre-EE game (e.g. adding saving throws to level drain attacks), but most will not.</p>
</div>
<h2>Installation</h2>
<div class="section">
  <p><strong>Windows:</strong><br />
    The mod archive should be extracted into your game folder from the archive (or just unzipped and then copied there). If properly extracted, you should have a "d5_random_tweaks" folder and "setup-d5_random_tweaks.exe" in your game folder. To install, simply double-click "setup-d5_random_tweaks.exe" and follow the instructions on screen.</p>
  <p><strong>MacOS:</strong><br />
    This mod is packaged and installed with the Mac Weidu Launcher (MWL). To install, simply extract the contents of the mod into your game folder. If properly extracted, you should have a folder called "d5_random_tweaks" and the "Mac WeiDU Launcher" in your game directory. To install, simply double-click the MWL, choose "d5_random_tweaks" from the list, and follow the instructions on the screen.</p>
</div>
<h2>Compatibility</h2>
<div class="section">
  <p>This mod should be installed after spell mods like Spell Revisions, IWDification, and SCS IWD Spells. It should probably be installed before kit mods, including Tome & Blood and Faiths & Powers.</p>
</div>
<h2>Contents</h2>
<div class="section">
  <h4 class="subheader">Component 2105: Tweak Color Spray</h4>
  <div class="section">
    <p>This adds a chance for any target to be blinded for one round, regardless of their level. If you have SR installed, the Confusion effect is switched to the three-round duration.</p>
  </div>
  <h4 class="subheader">Component 2108: Tweak Protection from Petrification (requires EE v2.5+ engine)</h4>
  <div class="section">
    <p>This turns Pro Petrification into "Mirrored Eyes," giving protection from any effects using the GAZE projectile. AFAIK that includes vampire Charm, umber Hulk Confusion, and Aec'Letec's Death Gaze. This works like the IWD thieves' Evasion ability, giving you a saving throw to avoid the effect.</p>
  </div>
  <h4 class="subheader">Component 2209: Tweak Luck</h4>
  <div class="section">
    <p>Makes Luck into an AoE spell that can affect the whole party, and extends the duration from 3 rounds to 5 rounds.</p>
  </div>
  <h4 class="subheader">Component 2212: Tweak Mirror Image</h4>
  <div class="section">
    <p>Moves Mirror Image to 3rd level. A straight nerf. But Illusion also has Blur at 2nd level, and having illusionary protection spells there seems silly. Mirror Image is incredibly useful, I think it works quite well one level below Stoneskin.</p>
  </div>
  <h4 class="subheader">Component 2213: Tweak Stinking Cloud</h4>
  <div class="section">
    <p>Only available  if Spell Revisions is installed first. This buffs the SR version of Stinking Cloud a bit by making the effects of nausea remain for a short time after leaving the area with the noxious gas. Movement rate is slowed for two rounds, the inability to cast spells or attack is extended to two rounds, and residual 2-point penalties to thac0, AC, and casting speed remain for another two rounds after that.</p>
  </div>
  <h4 class="subheader">Component 2215: Tweak Web</h4>
  <div class="section">
    <p>Web no longer Holds targets who fail their save. Instead it Slows them and sets their APR to zero. Additionally, it cuts movement rate to 30% for anyone in the area of effect, regardless whether they make their save. This compounds with the Slow effect so on a failed save you will only be able to move at 15% your normal rate.  And you won't be able to attack, and spellcasting will take twice as long, and you'll have a 4-point AC penalty. This is a nerf, to be sure... but man, vanilla Web is just too powerful. A non-party-friendly Slow spell one level below the party-friendly Slow spell makes a lot of sense to me.</p>
  </div>
  <h4 class="subheader">Component 2251: Tweak Decastave</h4>
  <div class="section">
    <p>Adds a chance to Deafen anyone struck by the Decastave for three rounds if they fail a save.</p>
  </div>
  <h4 class="subheader">Component 1202: Tweak Barkskin</h4>
  <div class="section">
    <p>Instead of giving an AC bonus to avoid attacks, Barkskin acts like a slow version of Stoneskin, giving the caster one 'skin' of protection which regenerates each round. So the spell can block one attack per round for its duration. For balance reasons, this version can only target the caster, not an ally. This effect <b>does</b> stack with Stoneskin/Ironskin.</p>
    <p>For technical reasons, if installed in BG2EE, the ending of the Stoneskin effect triggered by the Juggernaut Golem in the Golem Manual will no longer cause the golem to die.</p>
  </div>
  <h4 class="subheader">Component 1207: Tweak Goodberry</h4>
  <div class="section">
    <p>Instead of creating consumable berries, that is abstracted away. Upon casting the spell, all nearby allies are assumed to have eaten berries; any intoxication and fatigue are removed, and they regenerate 2 hit points per round, for one round per level of the caster (to a maximum of 10 rounds). This spell cannot be cast in combat.</p>
  </div>
  <h4 class="subheader">Component 1323: Tweak Exaltation and Spiritual Clarity</h4>
  <div class="section">
    <p>Gives all the effects of Exaltation to Spiritual Clarity (curing more conditions, though the duration lasts only half as long) and improves the spells' casting times: to 4 for Exaltation and to 1 for Spiritual Clarity.</p>
  </div>
  <h4 class="subheader">Component 1351: Tweak Moonblade</h4>
  <div class="section">
    <p>Adds a chance to cast Faerie Fire on anyone struck by the Moonblade, and a chance to Slow if the target is undead.</p>
  </div>
  <h4 class="subheader">Component 2413: Tweak Otiluke's Sphere (requires EE v2.5+ engine)</h4>
  <div class="section">
    <p>This removes the Hold effect, and adds effects to prevent spellcasting and disable all UI buttons. The idea is, if you find yourself inside the sphere, you are still awake and aware. You cannot interact with the outside world, but you <b>can</b> go to the inventory screen and do things there, like drink potions!</p>
  </div>
  <h4 class="subheader">Component 1404: Tweak Neutralize Poison</h4>
  <div class="section">
    <p>This spell become "Remove Afflictions," a combination of Slow Poison, Cure Disease, Remove Paralysis, and IWD's Unfailing Endurance. It removes poison, disease, blindness, deafness, Hold, and fatigue. If Spell Revisions is installed first, this also extends immunity to disease for the same duration as the spell's immunity to poison.</p>
  </div>
  <h4 class="subheader">Component 2518: Tweak Phantom Blade</h4>
  <div class="section">
    <p>Makes the Phantom Blade more of a phantasmal, psychic weapon. It now does 1d8 "stunning/nonlethal" damage, plus 1d8 magic damage. It removes the extra damage vs. undead (that's what Moonblade is for). There is a chance that anyone struck by the Phantom Blade will be confused for three rounds if they fail a save. If you use Spell Revisions it will also retain SR's casting-failure-on-hit. Finally, it moves the spell to the Illusion school.</p>
  </div>
  <h4 class="subheader">Component 2523: Tweak Sunfire</h4>
  <div class="section">
    <p>This spell becomes "Missile Storm." Put simply, it casts a maximum-strength Magic Missile at every enemy within 20' of the caster - twice.</p>
  </div>
  <h4 class="subheader">Component 2611: Tweak Wondrous Recall</h4>
  <div class="section">
    <p>Instead of restoring two random spells you have no control over, this will now use a 6th-level slot to restore <b>ALL</b> 1st- and 2nd-level spells.</p>
  </div>
  <h4 class="subheader">Component 2708: Tweak Mantle (requires EE v2.5+ engine)</h4>
  <div class="section">
    <p>This changes Mantle into "Iron Skin" (and renames the druid Ironskins spell to "Stoneskin"). It applies the Stoneskin effect, identically to the 4th-level spell; but it also protects you from non-magical melee weapons and all missile weapons while the stoneskin effect is active, and also prevents elemental damage and other secondary effects of melee weapons while the stoneskin effect is active.</p>
  </div>
  <h4 class="subheader">Component 2811: Tweak Symbol: Fear</h4>
  <div class="section">
    <p>Moves Symbol: fear to 7th level. This is the weakest Symbol spell, I think, and this will diversify the Symbol spells a bit, instead of lumping them all at the same spell level.</p>
  </div>
  <h4 class="subheader">Component 2916: Tweak Shapechange</h4>
  <div class="section">
    <p>Moves Shapechange to 8th level. In the Alteration school at 9th level it competes with... Timestop?!? Shapechange is not quite at the same level. Seems more like 8th-level magic.</p>
  </div>
  <h4 class="subheader">Component 2915: Tweak Black Blade of Disaster</h4>
  <div class="section">
    <p>Moves BBoD to 8th level. Just because, again, it doens't quite seem like 9th level magic. (A 9th-level spell that requires you send your mage into melee?!? No.)</p>
  </div>
  <h4 class="subheader">Component 2914: Tweak Energy Drain</h4>
  <div class="section">
    <p>Adds a save-or-die effect to Energy Drain, and moves it to 8th level. (It's probably <i>still</i> underpowered... but at least it's better than competing with Wail of the Banshee at 9th level.)</p>
  </div>
  <h4 class="subheader">Component 3000: 2 APR for Spell-Created Weapons</h4>
  <div class="section">
    <p>What it says on the tin. This affects Shillelagh, Flame Sword, Spiritual Hammer, Decastave, Moonblade, Starmetal Cudgel, Phantom Blade, and Black Blade of Disaster. If you spend a spell slot to make a magical melee weapon, you should gain a combat <i>benefit</i> for doing so!</p>
  </div>
  <h4 class="subheader">Component 3010: Tweak the Ring of Danger Sense</h4>
  <div class="section">
    <p>Adds a 1-point AC bonus and immunity to backstabs.</p>
  </div>
  <h4 class="subheader">Component 3020: Tweak the Gloves of Missile Snaring</h4>
  <div class="section">
    <p>The gloves now allow you to escape the missile damage (but not elemental damage) from the first missile weapon attack that hits you each round. Big props to OlvynChuru for showing how to do this!</p>
  </div>
  <h4 class="subheader">Component 3030: Tweak Detonating Weapons</h4>
  <div class="section">
    <p>Weapons like the Club of Detonation that can create Fireballs on-hit will now trigger the IWD priest spell "Produce Fire" instead.</p>
  </div>
  <h4 class="subheader">Component 3040: Tweak Skin of the Forest Armor</h4>
  <div class="section">
    <p>This leather armor will now act like a permanent version of the modified Barskin spell described above, absorbing one physical attack each round.</p>
  </div>
  <h4 class="subheader">Component 4010: Tweak Vampires & Level Drain</h4>
  <div class="section">
    <p>Adds a saving throw vs. Death to all weapon-delivered level drain effects.</p>
  </div>
  <h4 class="subheader">Component 4020: Tweak Monster Stats</h4>
  <div class="section">
    <p>Adds a saving throw vs. Death to all weapon-delivered level drain effects.</p>
  </div>
  <h4 class="subheader">Component 4030: Tweak Dragon Hit Points</h4>
  <div class="section">
    <p>Dragons are huge. Bigger than giants. For their sheer girth, they should arguably be a lot more durable, regardless of scales and magic and other protective characteristics. This component will let you increase their hit points by 50%, 100%, or 200%.</p>
  </div>
<h2>Contact Information</h2>
<div class="section">
  <p>This mod was created by SubtleDoctor. You can visit <a href="http://forums.gibberlings3.net/index.php">The
    Gibberlings Three</a> for information on this and many other fine mods.</p>
</div>
<h2>Thanks and Acknowledgements</h2>
<div class="section">
  <p>Thanks to the still active and vibrant Infinity Engine modding community. </p>
  <p><strong>Tools Used in Creation</strong><br />
    <a href="http://www.weidu.org/"><acronym title="Weimer Dialogue Utility">WeiDU</acronym></a> by
    Wes Weimer, and then the bigg and then Wisp<br />
    <a href="http://www.idi.ntnu.no/~joh/ni/">Near Infinity</a> by Jon Olav Hauglid, and then Argent77 and Astrobryguy<br />
    <a href="http://iesdp.gibberlings3.net/"><acronym title="Infinity Engine Structures Description Project">IESDP</acronym></a> maintained by igi</p>
</div>
<h2>Credits and Copyright Information</h2>
<div class="section">
  <p>Copyright 2020. If you want to use or adapt any part of this mod in another mod or similar endeavor, please try to contact me at forums.gibberlings3.net or forum.baldursgate.com to discuss it. As a general rule, I have no problem with that as long as you credit the source of the work. If you cannot get in touch with me, assume that you have my permission to use any of this code for any project that is non-commercial, offered for free, and intended for the greater enjoyment of players of Infinity Engine games. If you do so, please credit me, and mention how awesome I am in a comment in the code, or something like that. You may NOT use this code for any profit-making or commercial venture, without express permission from me.</p>
</div>
<h2>Version History</h2>
<div class="section">
  <p><strong>Version 0.6 - 2020</strong></p>
</div>
<div class="section">
  <p><strong>Et cetera</strong></p>
</div>
<div class="section">
  <p><strong>Version 0.2 - 2020</strong></p>
</div>
<div class="section">
  <p><strong>Version 0.1 - 2020</strong></p>
</div>
</body>
</html>

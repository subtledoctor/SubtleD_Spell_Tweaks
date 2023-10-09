# TomeAndBlood

Tome And Blood: More Options for Wizards and Sorcerers v0.9.49

## Overview

Tome and Blood is a mod that revises and expands the class options for Mages and Sorcerers. This mod began as the Sorcerous Origins kitpack, which took advantage of the newly added Sorcerer kit options to add several kits to Sorcerers. It has since grown into a mod that makes changes to all Mage and Sorcerer kits, spells and items as well as adding dozens of new kits, abilities and functionality. 
 
##Features

COMPONENT 11: Rebalanced Spell Schools

 This component changes the school of various spells, to make sure there is at least one spell at each level in each school, and that specialists of different schools are better-balanced against one another.  Generally:

-- Sequencer spells are moved to the school of Enchantment<br />
-- Power Word spells are moved to the school of Enchantment<br />
-- Symbol spells are moved to the school of Divination<br />
-- A couple other little changes<br />

These changes are determined by a list that resides in /tomeandblood/data/core/spell_list_base.tpa.  That file is human readable and you can change it as you like, so you have complete control over the school of every spell, before installing the mod. 

COMPONENT 12: Rebalanced Specialist Opposition Schools

This component allows changes to which spells are in an "opposition school" and thus unavailable to specialists. There are currently three options, two of which will be available for install depending on which game is being played:

-- No Opposition Schools (all specialists can cast all spells)<br />
-- Baldur's Gate Opposition Schools (matches BG/BG2)<br />
-- Baldur's Gate Opposition Schools, low-level allowed (matches BG/BG2, but up to 3rd-level spells are universal)<br />
-- Icewind Dale Opposition Schools (matches IWD)<br />
-- Icewind Dale Opposition Schools, low-level allowed (matches IWD, but up to 3rd-level spells are universal)<br />
-- PnP Opposition Schools (matches the original 2E PHB)<br />
-- PnP Opposition Schools, low-level allowed (matches the original 2E PHB, but up to 3rd-level spells are universal)<br />

COMPONENT 13: Revised Illusionary Clones

This component makes Mislead and Project Image work just as Simulacrum does, except the clones can use more magic as you go up in level, and the caster gets progressively better invisibility at the same time:

-- 5th Level: Mislead - clone is a pure image, cannot attack or cast spells. Caster become normal invisible - NOT super-Mislead-invisible.<br />
-- 6th Level: Shadow Clone - clone has 40% hit points and -7 to thac0 and caster level, can cast only 1st-level arcane spells, cannot cast divine spells.<br />
-- 7th Level: Lesser Simulacrum - clone has 60% hit points and -5 to thac0 and caster level, can cast up to 4th-level arcane spells, cannot cast divine spells.<br />
-- 8th Level: Simulacrum - clone has 75% hit points and -3 to thac0 and caster level, and can cast any spells.<br />
-- 9th Level: Projected Simulacrum - cast Simulacrum on another creature. (Illusionists only)<br />

COMPONENT 14: Revised Invisiblity

This component merges the effects of Invisibility and Sanctuary (you can now loot chests and open doors while invisible :) ). The upshot is: 

-- If you cast 2nd-level Detect Invisible, the caster will be able to see and target invisible enemies but other party members who cannot see invisible cannot. <br />
-- The Nondetection spell is renamed "Protection from Divination" and improved to actually block any DIVINATIONATTACK effects - including, I think, thieves' Detect Illusion skill. But, a caster of Detect Invisible or True Sight to spot and target enemies who are protected by Non-detection. <br />
-- The rather useless 3rd-level arcane spell "Detect Illusions" is replaced with a clone of the 3rd-level divine spell "Invisibility Purge."<br />

Additionally, the 5th-level Oracle spell is empowered to destroy nearby illusionary creatures, including Shadow Monsters, Projected Images and the like.

Finally, SR's Faerie Fire and Glitterdust will be able to counter Reflected Image and Mirror Image, since the insubstantial images will not be affected by the spells.

COMPONENT 16: Revised Identify Spell

This component changes Identify into a 2nd-level spell, and allows it to scale with level, such that at 13th level the caster can identify 4 items with a single casting of the spell. There is a setting in "TomeandBlood/qd_TnB_settings.ini" that you can modify before installation to change the spell level of the new Identify to whatever you want (e.g. if you prefer to keep it at 1st level.)

(NB: this component involves modifications to the UI. It *may* not work with some UI overhauls installed beforehand, and it likely won't work with any UI overhauls installed afterward.)

COMPONENT 20: Revised Dragon Disciples

Dragon Disciples are powerful sorcerers with dragons' blood somewhere in their lineage. Their magical talents bring out their draconic heritage, allowing them to cast powerful magical spells and exhibit dragon-like abilities.

-- d6 Hit Die. The Dragon Disciple rolls a d6 instead of a d4 whenever a new hit die is earned.<br />
-- Elemental Affinity. Dragon Disciples are attuned to one of the following damage types: acid, cold, electricity, or fire. They gain a +50% bonus to resistance against that damage type and they also deal +25% more damage of the selected type.<br />
-- Scales. While not wearing armor, the Dragon Disciple may subtract their charisma modifier from their base armor class.<br />
-- Reduced Spellcasting. The Dragon Disciple gains one fewer spell slot for each spell level they can cast.<br />

COMPONENT 25: Magus

A student of both arcane knowledge and martial prowess, a Magus blends together spell and steel to devastating effect. The most defining quality of a magus is their ability to cast complicated arcane spells while wearing even the heaviest armors.

-- d8 Hit Die. The Magus rolls a d8 instead of a d4 whenevera new Hit Die is earned.<br />
-- Specialization. The Magus may achieve, but not exceed, Specialization in any melee weapon, as well as two-handed and single weapon styles.<br />
-- Weapons and Armor. The Magus may use any melee weapon and wear any armor, including helmets.<br />
-- Armored Caster. The Magus may cast spells whilewearing any kind of armor.<br />
-- Reduced Spellcasting. The Magus gains one fewer spell slot for each spell level they can cast.<br />
-- One-Handed Casting. The Magus suffers a -2 penalty tocasting speed and may not use shields.<br />

PLEASE NOTE: in order to let the Magus kit cast spells in armor, it is necessary to make armor equippable by mages and sorcerers. They still cannot *cast spells* in armor - only the Magus kit can do that. But they can equip armor if they are willing to have their spellcasting disabled.

COMPONENT 31: Favored Soul

Favoured Souls attribute their magical powers to the blessing of some divine being. This blessing grants them potent magical protections, as well as access to spells usually beyond the reach of Sorcerers.

-- Divine Spells. After character creation, the Favoured Soul may select a single divine sphere, granting them arcaneversions of the divine spells from the selected sphere.<br />
-- Protected. The Favoured Soul is always under the effectsof a protection from evil spell, granting a +2 bonus to ArmorClass and saving throws against evil foes, as well as protection from summoned fiends.<br />
-- Reduced Spellcasting. The Favoured Soul gains onefewer spell slot for each spell level they can cast.<br />

COMPONENT 33: Sylvan Disciple

The capricious nature of the fey runs in the veins of Sylvan Sorcerers due to some long forgotten intermingling of fey blood or magic. These sorcerers are more emotional than most, prone to bouts of joy and rage.

-- Non-detectable. The Sylvan Disciple is always under the effects of a non-detection spell, providing immunity to detection via minor divination magic.<br />
-- Feyblooded. The Sylvan Disciple has a +4 bonus to saves vs. spells and is immune to charm.<br />
-- Reduced Spellcasting. The Sylvan Disciple gains one fewer spell slot for each spell level they can cast.<br />

COMPONENT 35: Revenant Disciple

The taint of the grave runs through the families of Revenant Disciples. Perhaps one of their ancestors became a powerful lich or vampire, or maybe they were born dead before suddenly returning to life. Either way, the forces of death move through them and touch their every action.

-- d6 Hit Die. The Revenant Disciple rolls a d6 instead of a d4 whenever a new Hit Die is earned.<br />
-- Immunities. The Revenant Disciple is immune to sleep and death magic.<br />
-- Deathly Resilience. The Revenant Disciple has a +4 bonus to saves vs. death.<br />
-- Reduced Spellcasting. The Revenant Disciple gains one fewer spell slot for each spell level they can cast.<br />

COMPONENT 37: Amorphous Disciple

The foul ichor of oozes runs through your veins, granting you magical control over noxious chemicals and slime, as well as a gift for changing your form to suit your needs.

-- Immunities. The Amorphous Disciple is immune to poison and disease.<br />
-- Shifting Form. The Amorphous Disciple has a +4 bonus to saves vs. polymorph.<br />
-- Oozeborn. The Amorphous Disciple is protected from hostile oozes, preventing the Amorphous Disciple from being attacked or targeted by oozes.<br />
-- Reduced Spellcasting. The Amorphous Disciple gains one fewer spell slot for each spell level they can cast.<br />

COMPONENT 40: Revised Specialists

This component gives each specialist kit some active or passive innate abilities that represent their mastery over their particular school of magic.  Additionally, specialists gain the ability to spontaneously convert any of their memorized spells into a spell from their specialty school of one level lower.  The special abilities are:
- Abjurer: when you cast a spell protection, it automatically creates a Spell Shield for free.<br />
- Conjurer: if SR is installed, you can cast Monster Summoning spells as if they are one level lower. In the absence of SR, you get bonus innate versions of the vanilla Monster Summoning spells.<br />
- Diviner: IIRC, you get innate (and early) access to Contingency. Might also be able to insert one extra spell into contingencies (two spells in Contingency, three in Chain Contingency).<br />
- Enchanter: the enchanter and all nearby allies get a +1 bonus to saves vs. spells.<br />
- Illusionist: you can use the Shadow Step ability, and have permanent Non-Detection.<br />
- Invoker: your spells do 20% more fire, cold, electric and magic damage.<br />
- Necromancer: you can innately use a modal ability to slow or control nearby undead. Also, the Chill Touch, Ghoul Touch, and Vampiric Touch spells are improved to have special effects against undead, and they are changed into innate abilities only learnable by necromancers.<br />
- Transmuter: you get an innate ability to temporarily create and control a golem.<br />

COMPONENT 48: Armored Casting for Bards

Bards can cast spells in leather armor.

COMPONENTS 51, 52, 53, 54: Innate Metamagic

These components make spell sequencers and contingencies into innate abilities (Chain Contingency becomes an HLA) so they don't cost spell slots; but "filling" them with spells still uses the spell slots associated with those spells.  These four components differ according to how you get metamagic:
-- 51: all arcane casters get sequencer and contingency abilities automatically<br />
-- 52: only mages and bards (not sorcerers) get sequencer and contingency abilities automatically<br />
-- 53: sequencer and contingency abilities are learned from scrolls, and can also be learned during character generation and by sorcerers<br />
-- 54: sequencer and contingency abilities can only be learned from scrolls<br />

COMPONENTS 61, 62, 63: Cantrips

Component 61 allows mages and sorcerers to use one cantrip as an innate ability with unlimited uses.

Component 62 allows mages and sorcerers and bards to cast an unlimited number of 1st-level spells without needing to rest. Some spells are slightly rebalanced or moved to 2nd level to account for this.

Component 63 gives you a "wand" that you equip in a weapon slot, which allows you to use one of eight cantrips as item abilities with unlimited uses.

COMPONENTS 66-69: Revised Familiars

Component 66, "Innate Find Familiar," makes Find Familiar an innate ability and replaces its scrolls with scrolls of Magic Missile.

Component 67, "Choose-Your-Own-Familiar," allows you to choose which familiar you want (from a slightly modified list) instead of being bound by your alignment. Currently, the available familiars are Pseudodragon, Ferret, Rabbit, Cat, Spider, and Rat. Each has its own special skills and abilities, and each provides a different small passive benefit to the caster:

-- Pseudodragon: can cast Blur, Color Spray, and Cure Light Wounds once per 3 turns.  Flies, so is immune to Grease, Entangle, and Web. Caster regenerates 1 hp/round while familiar is out of the backpack.<br />
-- Ferret: 90% Pick Pockets skill. Once per turn, can create a small-AoE Nauseating Aura which causes 2-point combat penalties and a 25% spell failure chance in enemies. Caster has +1 CON while familiar is out of the backpack.<br />
-- Rabbit: 90% Find Traps skill. Can burrow into the ground to escape danger, just like the Shadowstep ability. Caster is immune to Slow.<br />
-- Cat: 90% Stealth skill. Is immune to being revealed by divinations, similar to a thief with a Cloak of Nondetection. Caster has +1 DEX while familiar is out of the backpack.<br />
-- Spider: can shoot a Web at a single target once per 5 rounds. Bite can cause 3 extra points of poison damage over one round.  Immune to being stuck in Webs. Caster gets an extra chance to save to avoid poisons while familiar is out of the backpack.<br />
-- Rat: can summon 1d6 more rats to assist in battle once per day. Bite can cause disease (reduced STR and 25% chance of spell failure) for a couple rounds. Caster has +1 INT while familiar is out of the backpack.<br />

Component 67 also automatically installs component 69, "Indelible Familiars." (See below.)

Component 68, "Imbue Familiars," allows you to imbue your familiar with up to five spells (one each from spell levels 1 through 5, from your known spells).  The familiar will be able to cast each spell as an innate ability, once every three turns.

Component 69, "Indelible Familiars," eliminates the hp damage and CON loss you take when a familiar dies.  So you can re-summon/revive the familiar without penalty, once per day.  As a consequence, this also eliminates the flat hit point bonus you get from summoning a familiar.  Instead, you will get a 15% boost to your max hit points, whenever your familiar is out of yoru pack and within your general vicinity.

COMPONENTS 71, 72: Spell Switching for Sorcerers

This gives you an innate ability to switch out one of your known spells.  You can choose whether to get the ability once every level, or once every three levels.  In order for this to work, you will have to choose known spells from an item ability, like multiclass sorcerers, rather then in the traditional level-up screens.  Make sure you install this component after any other sorcerer kit mods!

PLEASE NOTE: I'll say it again - with this component installed, sorcerers pick spells from an item ability under the 'backpack' icon on the main screen, instead of picking spells from the normal character generation and level-up screens.

COMPONENT 80: Multiclass Sorcerers

What it says on the tin :O

PLEASE NOTE: multiclass sorcerers cannot use the normal sorcerer spell-learning screen - that is hard-coded. Instead, you have to use an ability from your item abilities (the backpack icon in the main game screen) which will let you pick one spell. Use this ability as often as necessary to fill out your known spells. And remember to use it after you level up!

COMPATIBILITY NOTE: multiclass sorcerers' casting slots are governed by MXSPLSRC.2da, just like the regular sorcerer. However, any changes to that file must be made BEFORE you install multiclass sorcerers. So if you like to change spell tables with Tweaks Anthology or something like that, make sure you do the spell-table-changing portion of that mod before installing Tome & Blood.

INSTALLATION NOTE: installation of this component will also automatically install the Revised Idenitfy spell and convert spell sequencers and contingencies to pick from any known spell, instead of from any memorized spell (changes which are necessary to work with these casters).

COMPONENT 82: Arcanist

This is a wizard kit that prepares and casts spells according to the D&D 5E rules. If you are not familiar, it achieves a hybrid status between the BG2 mage and sorcerer by differentiating "spell preparation slots" from "spellcasting slots." The Arcanist learns spells from scrolls, like any wizard, and has spell preparation slots according to the standard wizard spell table (MXSPLWIZ.2da). In order to actually prepare spells, the Arcanist must use a "Prepare Spells" innate ability before resting. Upon waking, they will be able to use spellcasting slots to cast their prepared spells spontaneously, like a sorcerer.  If you want to cast the same spells the next day, then no action is needed; after resting your spellcasting slots will be restored. If you want to cast different spells the next day, you must again use the the "Prepare Spells" ability just before resting, which will give you access to your preparation slots and allow you to fill them with a different set of spells.

The Arcanist's preparation slots are governed by MXSPLWIZ.2da; any changes you make to the standard wizard spell table will affect how many spells an Arcanist can prepare. The Arcanist's spellcasting slots are set to roughly match the unmodded spell slots of a Dragon Disciple. If you want to change this, you can modify "TomeandBlood/data/arcanist/D5CSTARC.2da" before installing the mod.

Installation of this component will also automatically install the Revised Identify spell and convert spell sequencers and contingencies to pick from any known spell, instead of from any memorized spell (changes which are necessary to work with these casters).

**DO NOT INSTALL THIS COMPONENT** if you plan to install the "5E-Style Spellcasting" mod. That mod basically applies the Arcanist spellcasting style to every spellcaster (except sorcerers and shamans). This would make the Arcanist entirely moot as a kit, and installing both on top of each other might cause technical problems.

COMPONENT 80: Mana Sorcerer

This component gives sorcerers (only unkitted sorcerers... for now?) an the ability to use mana points to cast spells instead of spell-level-based casting slots.  Your known spells will be the same (you must choose them manually from an item ability) but you will have a pool of mana points instead of spell slots.  Casting a spell costs as many points as its spell level; you will start with ~3 mana points and can progress to as many as 120, at level 25.  While more flexible, this is generally less firepower than a normal sorcerer has if you tally up their spell slots; so the Mana Sorcerer has a 'Restorative Meditation' innate ability that can be used between fights, which will restore one half of the points you recently spent, rounded down.

COMPONENT 93: Bonus Spell Slot Items Work With Arcanists and Multiclass Sorcerers

Items like the Ring of Wizardry work by giving bonus spell slots to mages and bonus casting slots to sorcerers. Since Arcanists, multi-sorcerers, and other 5E-style casters are, as a technical matter, a species of wizard, this means tose items will increase your memorization slots but not your casting slots. This component will change such items to give casting slot bonuses to Arcanists, multi-sorcerers, and other 5E casters. 

Due to certain limitations, this can only allow each item to grant a +1 bonus at any given spell level. So for the sake of balance, all bonus-slot items will be modified to give a +1 bonus at their respective spell levels. This will notably change Edwin's Amulet in bg2 to give +1 spell per level instead of +2. Also BG2's Ring of Acuity, which usually grants +2 2nd-level spell slots, will instead grant +1 2nd-level slot. It may similarly change a few items in IWDEE.

The "double spell slots" items, specifically the "Evermemory" Ring of Wizardry in BG1 and Kontik's& Edion's Rings of Wizardry in IWDEE, will work as normal for normal spellcasters and sorcerers; and for 5E-style casters and multiclass sorcerers they will get a once-per-day item ability to refresh all casting slots of the relevant levels. This way they can achieve their original design, doubling your spellcasting slots, even with these new technical limitations.


##Bugs 

##Change Log 

##Credits


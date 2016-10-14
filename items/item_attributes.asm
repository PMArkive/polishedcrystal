item_attribute: MACRO
; price, held effect, parameter, property, pocket, field menu, battle menu
	dw \1
	db \2, \3, \4, \5
	dn \6, \7
ENDM

Item1Attributes:

; # BALL
	item_attribute 200, 0, 0, CANT_SELECT, BALL, ITEMMENU_NOUSE, ITEMMENU_CLOSE

Item2Attributes:

; GREAT BALL
	item_attribute 600, 0, 0, CANT_SELECT, BALL, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; ULTRA BALL
	item_attribute 1200, 0, 0, CANT_SELECT, BALL, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; MASTER BALL
	item_attribute 0, 0, 0, CANT_SELECT, BALL, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; POTION
	item_attribute 300, 0, 20, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; SUPER POTION
	item_attribute 700, 0, 50, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; HYPER POTION
	item_attribute 1200, 0, 200, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; MAX POTION
	item_attribute 2500, 0, -1, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; ANTIDOTE
	item_attribute 100, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; BURN HEAL
	item_attribute 250, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; PARLYZ HEAL
	item_attribute 200, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; AWAKENING
	item_attribute 250, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; ICE HEAL
	item_attribute 250, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; FULL HEAL
	item_attribute 600, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; FULL RESTORE
	item_attribute 3000, 0, -1, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; REVIVE
	item_attribute 1500, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; MAX REVIVE
	item_attribute 4000, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; ETHER
	item_attribute 1200, 0, 10, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; MAX ETHER
	item_attribute 2000, 0, -1, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; ELIXIR
	item_attribute 3000, 0, 10, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; MAX ELIXIR
	item_attribute 4500, 0, -1, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; X ATTACK
	item_attribute 500, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; X DEFEND
	item_attribute 550, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; X SPEED
	item_attribute 350, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; X SPCL ATK
	item_attribute 350, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; X SPCL DEF
	item_attribute 350, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; DIRE HIT
	item_attribute 650, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; GUARD SPEC.
	item_attribute 700, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; X ACCURACY
	item_attribute 950, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; HP UP
	item_attribute 9800, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_NOUSE
; PROTEIN
	item_attribute 9800, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_NOUSE
; IRON
	item_attribute 9800, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_NOUSE
; CARBOS
	item_attribute 9800, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_NOUSE
; CALCIUM
	item_attribute 9800, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_NOUSE
; RARE CANDY
	item_attribute 10000, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_NOUSE
; PP UP
	item_attribute 9800, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_NOUSE
; FRESH WATER
	item_attribute 200, 0, 50, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; SODA POP
	item_attribute 300, 0, 60, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; LEMONADE
	item_attribute 350, 0, 80, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; MOOMOO MILK
	item_attribute 500, 0, 100, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; RAGECANDYBAR
	item_attribute 300, 0, 20, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; SACRED ASH
	item_attribute 200, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; ENERGYPOWDER
	item_attribute 500, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; ENERGY ROOT
	item_attribute 800, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; HEAL POWDER
	item_attribute 450, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; REVIVAL HERB
	item_attribute 2800, 0, 0, CANT_SELECT, MEDICINE, ITEMMENU_PARTY, ITEMMENU_PARTY
; REPEL
	item_attribute 350, 0, 0, CANT_SELECT, ITEM, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; SUPER REPEL
	item_attribute 500, 0, 0, CANT_SELECT, ITEM, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; MAX REPEL
	item_attribute 700, 0, 0, CANT_SELECT, ITEM, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; ESCAPE ROPE
	item_attribute 550, 0, 0, CANT_SELECT, ITEM, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; # DOLL
	item_attribute 1000, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; LEAF STONE
	item_attribute 2100, 0, 0, CANT_SELECT, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; FIRE STONE
	item_attribute 2100, 0, 0, CANT_SELECT, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; WATER STONE
	item_attribute 2100, 0, 0, CANT_SELECT, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; THUNDERSTONE
	item_attribute 2100, 0, 0, CANT_SELECT, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; MOON STONE
	item_attribute 0, 0, 0, CANT_SELECT, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; SUN STONE
	item_attribute 2100, 0, 0, CANT_SELECT, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; DUSK STONE
	item_attribute 2100, 0, 0, CANT_SELECT, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; SHINY STONE
	item_attribute 2100, 0, 0, CANT_SELECT, ITEM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; EVERSTONE
	item_attribute 200, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BICYCLE
	item_attribute 0, 0, 0, CANT_TOSS, KEY_ITEM, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; OLD ROD
	item_attribute 0, 0, 0, CANT_TOSS, KEY_ITEM, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; GOOD ROD
	item_attribute 0, 0, 0, CANT_TOSS, KEY_ITEM, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; SUPER ROD
	item_attribute 0, 0, 0, CANT_TOSS, KEY_ITEM, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; COIN CASE
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; ITEMFINDER
	item_attribute 0, 0, 0, CANT_TOSS, KEY_ITEM, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; EXP.SHARE
	item_attribute 3000, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MYSTERY EGG
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SQUIRTBOTTLE
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; SECRETPOTION
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; RED SCALE
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; CARD KEY
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; BASEMENT KEY
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_CLOSE, ITEMMENU_NOUSE
; S.S.TICKET
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; PASS
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MACHINE PART
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; LOST ITEM
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; RAINBOW WING
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SILVER WING
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; CLEAR BELL
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; GS BALL
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BLUE CARD
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; MYSTICTICKET
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; OLD SEA MAP
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, KEY_ITEM, ITEMMENU_CURRENT, ITEMMENU_NOUSE
; ORAN BERRY
	item_attribute 10, HELD_BERRY, 10, CANT_SELECT, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; SITRUS BERRY
	item_attribute 10, HELD_BERRY, 30, CANT_SELECT, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; PECHA BERRY
	item_attribute 10, HELD_HEAL_POISON, 0, CANT_SELECT, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; RAWST BERRY
	item_attribute 10, HELD_HEAL_BURN, 0, CANT_SELECT, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; CHERI BERRY
	item_attribute 10, HELD_HEAL_PARALYZE, 0, CANT_SELECT, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; CHESTO BERRY
	item_attribute 10, HELD_HEAL_SLEEP, 0, CANT_SELECT, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; ASPEAR BERRY
	item_attribute 10, HELD_HEAL_FREEZE, 0, CANT_SELECT, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; PERSIM BERRY
	item_attribute 10, HELD_HEAL_CONFUSION, 0, CANT_SELECT, BERRIES, ITEMMENU_NOUSE, ITEMMENU_PARTY
; LUM BERRY
	item_attribute 10, HELD_HEAL_STATUS, 0, CANT_SELECT, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; LEPPA BERRY
	item_attribute 10, HELD_RESTORE_PP, -1, CANT_SELECT, BERRIES, ITEMMENU_PARTY, ITEMMENU_PARTY
; RED APRICORN
	item_attribute 200, 0, 0, CANT_SELECT, BERRIES, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BLU APRICORN
	item_attribute 200, 0, 0, CANT_SELECT, BERRIES, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; YLW APRICORN
	item_attribute 200, 0, 0, CANT_SELECT, BERRIES, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; GRN APRICORN
	item_attribute 200, 0, 0, CANT_SELECT, BERRIES, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; WHT APRICORN
	item_attribute 200, 0, 0, CANT_SELECT, BERRIES, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BLK APRICORN
	item_attribute 200, 0, 0, CANT_SELECT, BERRIES, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; PNK APRICORN
	item_attribute 200, 0, 0, CANT_SELECT, BERRIES, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; HEAVY BALL
	item_attribute 150, 0, 0, CANT_SELECT, BALL, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; LEVEL BALL
	item_attribute 150, 0, 0, CANT_SELECT, BALL, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; LURE BALL
	item_attribute 150, 0, 0, CANT_SELECT, BALL, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; FAST BALL
	item_attribute 150, 0, 0, CANT_SELECT, BALL, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; FRIEND BALL
	item_attribute 150, 0, 0, CANT_SELECT, BALL, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; MOON BALL
	item_attribute 150, 0, 0, CANT_SELECT, BALL, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; LOVE BALL
	item_attribute 150, 0, 0, CANT_SELECT, BALL, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; SILK SCARF
	item_attribute 100, HELD_NORMAL_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BLACK BELT
	item_attribute 100, HELD_FIGHTING_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SHARP BEAK
	item_attribute 100, HELD_FLYING_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; POISON BARB
	item_attribute 100, HELD_POISON_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SOFT SAND
	item_attribute 100, HELD_GROUND_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; HARD STONE
	item_attribute 100, HELD_ROCK_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SILVERPOWDER
	item_attribute 100, HELD_BUG_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SPELL TAG
	item_attribute 100, HELD_GHOST_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; METAL COAT
	item_attribute 100, HELD_STEEL_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; CHARCOAL
	item_attribute 9800, HELD_FIRE_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MYSTIC WATER
	item_attribute 100, HELD_WATER_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MIRACLE SEED
	item_attribute 100, HELD_GRASS_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MAGNET
	item_attribute 100, HELD_ELECTRIC_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; TWISTEDSPOON
	item_attribute 100, HELD_PSYCHIC_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; NEVERMELTICE
	item_attribute 100, HELD_ICE_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; DRAGON FANG
	item_attribute 100, HELD_DRAGON_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BLACKGLASSES
	item_attribute 100, HELD_DARK_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; PINK BOW
	item_attribute 100, HELD_FAIRY_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BRIGHTPOWDER
	item_attribute 1800, HELD_BRIGHTPOWDER, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SCOPE LENS
	item_attribute 2400, HELD_CRITICAL_UP, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; QUICK CLAW
	item_attribute 1200, HELD_QUICK_CLAW, 60, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; KING'S ROCK
	item_attribute 1200, HELD_FLINCH_UP, 30, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; FOCUS BAND
	item_attribute 2400, HELD_FOCUS_BAND, 30, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; LEFTOVERS
	item_attribute 200, HELD_LEFTOVERS, 10, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; LUCKY EGG
	item_attribute 4800, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; AMULET COIN
	item_attribute 9800, HELD_AMULET_COIN, 10, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; CLEANSE TAG
	item_attribute 200, HELD_CLEANSE_TAG, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SMOKE BALL
	item_attribute 200, HELD_ESCAPE, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; LIGHT BALL
	item_attribute 100, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; STICK
	item_attribute 200, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; THICK CLUB
	item_attribute 500, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; LUCKY PUNCH
	item_attribute 10, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; METAL POWDER
	item_attribute 10, HELD_METAL_POWDER, 10, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BERSERK GENE
	item_attribute 200, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; EVIOLITE
	item_attribute 100, HELD_EVIOLITE, 50, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MUSCLE BAND
	item_attribute 100, HELD_PHYSICAL_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; WISE GLASSES
	item_attribute 100, HELD_SPECIAL_BOOST, 20, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; DRAGON SCALE
	item_attribute 2100, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; UP-GRADE
	item_attribute 2100, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; DUBIOUS DISC
	item_attribute 2100, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; PROTECTOR
	item_attribute 2100, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; ELECTIRIZER
	item_attribute 2100, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MAGMARIZER
	item_attribute 2100, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; RAZOR FANG
	item_attribute 2100, HELD_FLINCH_UP, 30, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; RAZOR CLAW
	item_attribute 2100, HELD_CRITICAL_UP, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; NUGGET
	item_attribute 10000, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; TINYMUSHROOM
	item_attribute 500, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BIG MUSHROOM
	item_attribute 5000, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; PEARL
	item_attribute 1400, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BIG PEARL
	item_attribute 7500, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; STARDUST
	item_attribute 2000, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; STAR PIECE
	item_attribute 9800, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SILVER LEAF
	item_attribute 1000, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; GOLD LEAF
	item_attribute 1000, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SLOWPOKETAIL
	item_attribute 9800, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; PARK BALL
	item_attribute 0, 0, 0, CANT_SELECT, BALL, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; REPEAT BALL
	item_attribute 1000, 0, 0, CANT_SELECT, BALL, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; TIMER BALL
	item_attribute 1000, 0, 0, CANT_SELECT, BALL, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; QUICK BALL
	item_attribute 1000, 0, 0, CANT_SELECT, BALL, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; DUSK BALL
	item_attribute 1000, 0, 0, CANT_SELECT, BALL, ITEMMENU_NOUSE, ITEMMENU_CLOSE
; HELIX FOSSIL
	item_attribute 1000, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; DOME FOSSIL
	item_attribute 1000, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; OLD AMBER
	item_attribute 1000, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; FLOWER MAIL
	item_attribute 50, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; SURF MAIL
	item_attribute 50, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; LITEBLUEMAIL
	item_attribute 50, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; PORTRAITMAIL
	item_attribute 50, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; LOVELY MAIL
	item_attribute 50, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; EON MAIL
	item_attribute 50, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MORPH MAIL
	item_attribute 50, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; BLUESKY MAIL
	item_attribute 50, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MUSIC MAIL
	item_attribute 50, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; MIRAGE MAIL
	item_attribute 50, 0, 0, CANT_SELECT, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE
; TM01 DYNAMICPUNCH
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM02 DRAGON_CLAW
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM03 CURSE
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM04 CALM_MIND
	item_attribute 20000, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM05 ROAR
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM06 TOXIC
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM07 ROLLOUT
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM08 BULK_UP
	item_attribute 20000, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM09 SWORDS_DANCE
	item_attribute 20000, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM10 HIDDEN_POWER
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM11 SUNNY_DAY
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM12 ICY_WIND
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM13 ICE_BEAM
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM14 BLIZZARD
	item_attribute 30000, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM15 HYPER_BEAM
	item_attribute 50000, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM16 LIGHT_SCREEN
	item_attribute 10000, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM17 PROTECT
	item_attribute 10000, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM18 RAIN_DANCE
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM19 GIGA_DRAIN
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM20 SAFEGUARD
	item_attribute 10000, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM21 DRAGONBREATH
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM22 SOLAR_BEAM
	item_attribute 25000, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM23 IRON_TAIL
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM24 THUNDERBOLT
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM25 THUNDER
	item_attribute 30000, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM26 EARTHQUAKE
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM27 RETURN
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM28 DIG
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM29 PSYCHIC_M
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM30 SHADOW_BALL
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM31 MUD_SLAP
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM32 DOUBLE_TEAM
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM33 REFLECT
	item_attribute 10000, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM34 SWAGGER
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM35 FLAMETHROWER
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM36 SLUDGE_BOMB
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM37 SANDSTORM
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM38 FIRE_BLAST
	item_attribute 30000, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM39 SWIFT
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM40 DEFENSE_CURL
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM41 STONE_EDGE
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM42 AVALANCHE
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM43 WILD_CHARGE
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM44 REST
	item_attribute 20000, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM45 ATTRACT
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM46 THIEF
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM47 STEEL_WING
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM48 ROCK_SLIDE
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM49 FURY_CUTTER
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM50 SUBSTITUTE
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM51 BODY_SLAM
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM52 FOCUS_BLAST
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM53 FLASH_CANNON
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM54 FALSE_SWIPE
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM55 SCALD
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM56 X_SCISSOR
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM57 DARK_PULSE
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM58 ENDURE
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM59 DRAGON_PULSE
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM60 DAZZLINGLEAM
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM61 WILL_O_WISP
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM62 POISON_JAB
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM63 THUNDER_WAVE
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM64 EXPLOSION
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; TM65 SHADOW_CLAW
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; HM01 CUT
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; HM02 FLY
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; HM03 SURF
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; HM04 STRENGTH
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; HM05 FLASH
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; HM06 WHIRLPOOL
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; HM07 WATERFALL
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; HM08 ROCK_SMASH
	item_attribute 0, 0, 0, CANT_SELECT | CANT_TOSS, TM_HM, ITEMMENU_PARTY, ITEMMENU_NOUSE
; ?
	item_attribute $9999, 0, 0, 0, ITEM, ITEMMENU_NOUSE, ITEMMENU_NOUSE

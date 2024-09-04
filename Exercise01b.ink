/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 * Knot structure
 * Recurring choices
 * Conditionals in descriptions
 * Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> ship

== ship ==
You are on a sinking ship. {not lantern_pickup:There is a lantern on the floor.} There are hallways to the east, west, north, and south. 
+ [Take the east hallway] -> east_hallway
+ [Take the north hallway] -> north_hallway
+ [Take the south hallway] -> south_hallway
+ [Take the west hallway] -> west_hallway
* [Pick up the lantern] -> lantern_pickup

=== lantern_pickup ===
You pick up what looks to be the captain's lantern. May it light the way.
* [Go Back] -> ship
-> END

== east_hallway ==
You are in the east hallway. A flickering light illuminates the end of the corrider. You can hear the eerie creaking of the flooding ship below you.
+ [Go Back] -> ship
-> END

=== north_hallway ===
You are in the north hallway. It's too dark to see anything. Something cold and wet seeps into your boots. 
+ [Go Back] -> ship
-> END

=== north_hallway_lit ===
The introduction of light makes you realize this hallway is entirely flooded. The ship is tilting now. There is no point in trying to stay dry anymore. 
* {lantern_pickup} [Light Lantern] -> north_hallway_lit
+ [Go Back] -> ship
-> END

== west_hallway ==
You are in the west hallway. It's too dark to see anything. This is where the exit is, but you can't seem to remember where exactly it's located. A sense of dread washes over you. 
* {lantern_pickup} [Light Lantern] -> west_hallway_lit
+ [Go Back] -> ship
-> END


=== south_hallway ===
You are in the south hallway. An odd smell lingers over this hallway. You try not to think about it.
+ [Go Back] -> ship
-> END

== west_hallway_lit ==
You are filled with regret as soon as the dim light of your lantern floods the corrider in front of you and the stench that once enveloped the south hallway rushes your senses. The water creeps higher, and you know you will not be able run away from what you believe was once your captain, but is now a fleshy mass adorned with contorted limbs that is emerging from the exit door.
-> END



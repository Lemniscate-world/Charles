(
f = {
 arg input = 4;
 var num;
 num = input.squared;
 num = num.reciprocal;
};
)
f.(5); // -> 0.04 (evaluate, passing in a different value as the input)
 f.(); // -> 0.0625 (evaluate using the default value)

// Multi-Arguments function

(
g = { |thingA = 7, thingB = 5|
 var result;
 thingA = thingA.squared;
 thingB = thingB.reciprocal;
 result = thingA + thingB;
};
)
 g.(3, 2); // -> 9.5 (thingA = 3, thingB = 2);

// Most random algorithms are pseudo-random; they begin with a “seed” value, which
// fuels a deterministic supply of numbers that feel acceptably random. Regardless of // // how they’re
// generated, random values can be useful in musical applications. We can, for example, // spawn
// random melodies from a scale, shuffle metric values to create rhythmic variations, or // randomize the stereophonic position of a sound.

rrand(1, 9); // random integer between 1 – 9,
 // uniform distribution
rrand(40.0, 90.0); // random float between 40 – 90,
 // uniform distribution
exprand(1, 100); // random float between 1 – 100,
 // exponential distribution

(
var bag, pick;
bag = [\red, \green, \blue];
pick = bag.wchoose([750, 220, 30].normalizeSum);
 )

rrand(40, 90).dup(8); // 8 copies of 1 random value
{rrand(40, 90)}.dup(8); // 8 uniquely chosen random values

// "receiver-dot-method" syntax:
([0, 1].choose == 1).if({\heads.postln}, {\tails.postln});
// "method(receiver)" syntax:
if([0, 1].choose == 1, {\heads.postln}, {\tails.postln});
// structured as a multi-line block:
(
if(
[0, 1].choose == 1,
{\heads.postln},
{\tails.postln}
);
 )

[30, 40, 50, 60].do({"this is a test".postln});
4.do({"this is a test".postln});
[30, 40, 50, 60].do({|item, index| [item, index].postln});



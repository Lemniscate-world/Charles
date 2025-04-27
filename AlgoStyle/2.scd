s.boot;
s.sampleRate;
s.options.blockSize;

// ar = audio rate
// kr = control rate
// ir = initialization rate

{PinkNoise.ar(mul: 1) ! 2}.play;
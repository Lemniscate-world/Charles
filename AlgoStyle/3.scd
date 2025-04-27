s.boot;

{SinOsc.ar(300, 0, 0.1, 0)}.play;

{SinOsc.ar(700, 0, 0.1, 0) ! 2}.play;

{SinOsc.ar(freq: 300, phase: 0, mul: 0.1, add: 0) ! 2}.play;
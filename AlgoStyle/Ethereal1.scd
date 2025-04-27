(
SynthDef(\etherealFM, {
    |freq=440, amp=0.2, modFreq=2, modIndex=5, dur=4|
    var sig, env;
    env = EnvGen.kr(Env.perc(0.01, dur, amp), doneAction: 2);
    sig = SinOsc.ar(freq + (SinOsc.ar(modFreq) * modIndex * freq));
    sig = sig * env;
    Out.ar(0, Pan2.ar(sig, 0));
}).add;
)
Synth(\etherealFM, [\freq, 220, \modFreq, 1, \modIndex, 3, \dur, 6]);
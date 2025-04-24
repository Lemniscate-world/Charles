A sample, in this context, is
a number—specifically, a float—that represents signal value at an instantaneous moment
in time


Oscillators SinOsc, Pulse, Saw, Blip, LFPulse, LFSaw, LFTri, VarSaw
Noise Generators LFNoise0, LFNoise1, PinkNoise, WhiteNoise
Envelopes Line, XLine, EnvGen
Filters LPF, HPF, BPF, BRF
Triggers Impulse, Dust, Trig
Sound File
Players
PlayBuf, BufRd
Stereo Panners Pan2, Balance2

The sample rate of a system determines the highest frequency that can be accurately
represented, called the Nyquist frequency.

Generally, if you require a high frequency signal, a fast-moving signal,
or anything you want to monitor directly, you should use ar.

Control rate UGens have a lower resolution but consume less processing power.
They are useful when you need a relatively slow-moving signal, like a gradual envelope or a
low-frequency oscillator

s.boot;

{SinOsc.ar(300, 0, 0.1, 0)}.play;

{SinOsc.ar(700, 0, 0.1, 0) ! 2}.play;

{SinOsc.ar(freq: 300, phase: 0, mul: 0.1, add: 0) ! 2}.play;
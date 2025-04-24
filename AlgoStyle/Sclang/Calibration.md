TIP.RAND(); CALIBR ATING YOUR HARDWARE SETUP
The discussion of mul brings up important considerations regarding monitoring level
and loudness. When using SC (or any digital audio platform, really), it’s smart to calibrate your system volume before you start creating. First, turn your system volume
down so it’s almost silent, then run the following line of code, which plays a twochannel pink noise signal:
{PinkNoise.ar(mul: 1) ! 2}.play;
As the noise plays, slowly turn up your system volume until the noise sounds
strong and healthy. It shouldn’t be painful, but it should be unambiguously loud, perhaps even slightly annoying. Once you’ve set this volume level, consider your system
“calibrated” and don’t modify your hardware levels again. This configuration will
encourage you to create signal levels in SC that are comfortable and present a minimal risk of distorting.
By contrast, a bad workflow involves setting your system volume too low, which
encourages compensation with higher mul values. This configuration gives the
misleading impression that your signal levels are low, when they’re actually quite
high, with almost no headroom. In this setup, you’ll inevitably find yourself in the
frustrating situation of having signals that seem too quiet, but with levels that are
 constantly “in the red.”
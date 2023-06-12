A02 - Implement pattern generator on LEDs controlled by switches

Problem Statement:
To glow the LEDs as if a Train is coming out of a tunnel and entering again into the tunnel, in both directions i.e. left to right and right to left alternately. The direction of the Train should be changed by a Direction Change Input (key press).

Output Requirements:
1 - There are 8 LEDs on the Board, these LEDs has to glow one by one as if a train bogie coming out of a tunnel every second (approx, none without timer implementation)from Left to Right as soon as the board is powered on or reset (Let’s call it as exit)

2 - Once all LEDS are ON, the LEDs should switch OFF one by one as if the train bogie is entering inside a tunnel from Left to Right (Let’s call it as entry).

3 - The direction of train would remain as is unless and until the DCI (Direction Change Input) is detected.

4 - On Direction Change Input, The Train direction should change instantly to opposite and remains same until the next Direction Change Input.

Inputs : Digital Keypad (DKP) SW1 as Direction Change Input.

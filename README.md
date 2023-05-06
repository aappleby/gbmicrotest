# GBMicrotest
A large collection of as-small-as-possible tests for your Game Boy emulator that check for a wide variety of cycle-accurate timing issues and quirks found on the real Game Boy hardware. All tests in this repo have been checked on real hardware (version DMG-CPU-08 I believe).

These tests are _not_ intended to verify basic functionality of your emulator, they are solely for tracking down cycle-accuracy issues in emulators that are already functional. GateBoy, for example, passes all but a handful of these tests because it does not currently simulate asynchronous timing glitches correctly.

## Running:
Prebuilt ROMs are in bin/ and do not require your emulator to have a mapper implemented.

Most tests will complete in a few hundred cycles, except for those that need to check behavior after VBLANK.

The test will write results to ram at 0xFF80 and then display either stripes on the LCD if the test passes, or black if the test fails.

 - 0xFF80 - Test result
 - 0xFF81 - Expected result
 - 0xFF82 - 0x01 if the test passed, 0xFF if the test failed.

## (Re)Building:
Install wla-dx, then run "build.sh" in the repo root.


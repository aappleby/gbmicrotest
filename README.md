# GBMicrotest
A large collection of as-small-as-possible tests for your Game Boy emulator.

## Building:
Install wla-dx, then run "ninja" in the repo root. The .gb files will be in DMG/

## Running:
All tests build as a rom-only .gb file with no mapper required. Most tests will complete in a few hundred cycles, except for those that need to check behavior after VBLANK. The test will write results to ram at 0xFF80 and then display either a stripe pattern on the LCD if the test passes, or a solid black screen if the test fails.

 - 0xFF80 - Test result
 - 0xFF81 - Expected result
 - 0xFF82 - 0x01 if the test passed, 0xFF if the test failed.

pushd

pause

cd %ProgramFiles(x86)%/arduino
REM cd arduino-nightly

arduino_debug --pref "boardsmanager.additional.urls=http://downloads.arduino.cc/packages/package_mkr1000_index.json"
arduino_debug --install-boards arduino-mkr1000:samd

arduino_debug --install-library "WiFi101:0.8.0"
arduino_debug --install-library "RTCZero"
arduino_debug --install-library "AzureIoT"
arduino_debug --install-library "AudioZero"
arduino_debug --install-library "SwissHandmade MiniPirate"

REM --- Coming soon --- Check out on github ---
REM
REM arduino_debug --install-library "Adafruit_ASF"
REM arduino_debug --install-library "Adafruit_ZeroI2S"


arduino_debug --pref "compiler.warning_level=all" --save-prefs
arduino_debug --pref "editor.linenumbers=true"    --save-prefs

popd

pause

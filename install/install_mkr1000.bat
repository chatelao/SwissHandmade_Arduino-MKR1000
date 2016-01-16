pushd

pause

cd %ProgramFiles(x86)%/arduino

arduino_debug --install-boards arduino:samd

arduino_debug --install-library "WiFi101"
arduino_debug --install-library "RTCZero"
arduino_debug --install-library "AzureIoT"

arduino_debug --pref "compiler.warning_level=all" --save-prefs
arduino_debug --pref "editor.linenumbers=true"    --save-prefs

popd

pause
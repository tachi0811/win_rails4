@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"ruby.exe" "c:/Ruby200/ruby2_rails4/vendor/bundler/ruby/2.0.0/bin/tt" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"ruby.exe" "%~dpn0" %*

#!/bin/bash

echo "Checking for Sourcery..."

if [ -f "Sourcery/sourcery" ]; then
	echo "Generating source files: Sources + Templates/Sources -> Sources/Generated"
  
	./Sourcery/sourcery --sources Sources --templates Templates/Sources --output Sources/Generated
  
	echo "Generating laws files: Sources + Templates/Laws -> Tests/Laws"

	./Sourcery/sourcery --sources Sources --templates Templates/Laws --output Tests/Laws

	echo "Generating test files: Sources + Templates/Tests -> Tests/MonadsTests"

	./Sourcery/sourcery --sources Sources --templates Templates/Tests --output Tests/MonadsTests

	echo "Generating test utilities: Sources + Templates/TestUtilities -> Tests/Utilities"

	./Sourcery/sourcery --sources Sources --templates Templates/TestUtilities --output Tests/Utilities

else
	echo "Sourcery is not installed, ignoring."
fi

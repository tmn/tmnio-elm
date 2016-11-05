#
#
#

all: build

build: ;@echo "-- Buidling project"
	elm-make src/App.elm --output=./dist/app.js

clean: ;@echo "Cleaning up dist files"
	rm -rf dist/

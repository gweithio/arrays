.PHONY: tests
default: run

run: 
	odin run src/*.odin -file -warnings-as-errors -collection:shared=src

tests: 
	odin test tests -warnings-as-errors -show-timings -collection:shared=src

build: 
	odin build src -o:speed -out:array_lib -collection:shared=../src

clean:
	rm tests/.bin
	rm src/.bin
	rm array_lib

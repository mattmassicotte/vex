libvex.a:
	mkdir -p build
	rustc --crate-type=staticlib -o build/libvex.a src/lib.rs 

build/c_binding_test: runtime
	$(CC) -std=c11 -Wall -o build/c_binding_test.o -c c_binding_test.c
	${CC} -Lbuild -lvex -o build/c_binding_test build/c_binding_test.o

runtime: libvex.a

test: build/c_binding_test
	./build/c_binding_test

clean:
	rm -rf build

.PHONY: runtime test clean
.DEFAULT_GOAL := test

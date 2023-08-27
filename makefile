all: c6c nas2 compile_examples

c6c: c6c_src/c6c
	cp c6c_src/c6c ./c6c

c6c_src/c6c:
	# === compiling c6c ===
	cd c6c_src/ && make c6c

nas2: nas2_src/nas2
	cp nas2_src/nas2 ./nas2

nas2_src/nas2:
	# === compiling nas ===
	cd nas2_src/ && make nas2


cleannas:
	cd nas2_src/ && make clean

cleanc6c:
	cd c6c_src/ && make clean


clean: cleannas cleanc6c


compile_examples:
	# === compiling examples ===
	for file in $$(find examples/sc/ -name "*.sc"); do \
		new_filename=$$(echo $$file| cut -d'.' -f 1| cut -d/ -f 3); \
		./c6c $$file > examples/compiled/$$new_filename.nas; \
	done
	# === Done ===
	# examples found in examples/compiled/


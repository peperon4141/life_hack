start:
	rm -rf ./resources && hugo server --disableFastRender

build:
	rm -rf ./docs && hugo
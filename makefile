start:
	rm -rf ./resources && hugo server --disableFastRender

build:
	rm -rf ./docs && hugo

add:
	git submodule add ${REPO} ${PATH}

remove:
	git submodule deinit -f ${PATH} && git rm -f ${PATH} && rm -rf .git/modules/${PATH}
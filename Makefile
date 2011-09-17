VERSION=1.2.0
DATE=$(shell DATE)
BOOTSTRAP = ./bootstrap.css
BOOTSTRAP_MIN = ./bootstrap.min.css
BOOTSTRAP_SCSS = ./lib/bootstrap.scss
SASS_COMPESSOR ?= `which sass`
WATCHR ?= `which watchr`

build:
	@@if test ! -z ${SASS_COMPESSOR}; then \
		sed -e 's/@VERSION/'"v${VERSION}"'/' -e 's/@DATE/'"${DATE}"'/' <${BOOTSTRAP_SCSS} >${BOOTSTRAP_SCSS}.tmp; \
		sass --scss ${BOOTSTRAP_SCSS}.tmp ${BOOTSTRAP}; \
		sass --scss --style=compressed ${BOOTSTRAP_SCSS}.tmp ${BOOTSTRAP_MIN}; \
		rm -f ${BOOTSTRAP_SCSS}.tmp; \
		echo "Bootstrap successfully built! - `date`"; \
	else \
		echo "You must have the SASS gem installed in order to build Bootstrap."; \
		echo "You can install it by running: gem install sass"; \
	fi

watch:
	@@if test ! -z ${WATCHR}; then \
	  echo "Watching scss files..."; \
	  watchr -e "watch('lib/.*\.scss') { system 'make' }"; \
	else \
		echo "You must have the watchr installed in order to watch Bootstrap scss files."; \
		echo "You can install it by running: gem install watchr"; \
	fi

.PHONY: build watch
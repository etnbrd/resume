FILE = resume
NAME = resume
PDFLATEX = mkdir -p .tmp && cd src && xelatex -shell-escape --output-directory ../.tmp ../src/${FILE}.tex && mv ../.tmp/${FILE}.pdf ../${NAME}.pdf && cd ..

.PHONY: all

all: main open

main: _main

bafa: _bafa

clean:
	rm -rf .tmp;

open:
	xdg-open ${NAME}.pdf

_main:
	${PDFLATEX}

# Not working yet

# _bafa:
# 	env FILE=${FILE}-bafa NAME=${NAME}-bafa ${PDFLATEX}

# _fr:
# 	env FILE=${FILE}-fr NAME=${NAME}-fr ${PDFLATEX}

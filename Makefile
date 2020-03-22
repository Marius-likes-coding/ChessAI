.PHONY: clean lint test install
.DEFAULT_GOAL := lint test

clean:
	find . -name '*.egg' -exec rm -f {} +

lint:
	black src

test:
	python setup.py test

install: clean
	pip3 install -r requirements.txt
	python setup.py install
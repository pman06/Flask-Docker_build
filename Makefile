install:
	pip install -r requirements.txt

test:
	#python3 -mpytest -vv --cov=
	
lint:
	pylint  --disable=R,C hello.py


all: install lint test

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv test_application.py

lint:
	pylint --disable=R,C application.py

deploy:
	echo "Listing envs"
	eb list
	echo "Deploying app"
	eb deploy flask-continuous-delivery-env

all: install lint test 
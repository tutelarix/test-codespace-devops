install:
		pip install --upgrade pip && \
				pip install -r requirements.txt
				
lint:
		pylint --disable=R,C hello.py
		
format:
		black *.py
		
test:
		python -m pytest -vv --cov=hello test_hello.py
		
docker_build:
		docker build --tag=search_script .
		docker image ls
		
docker_run:
		docker run -it search_script ./hello.py --path . --ftype py 
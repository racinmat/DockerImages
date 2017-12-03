docker build -f Dockerfile-python -t azathoth/python:2 .
docker push azathoth/python:2

docker build -t azathoth/vrep-python-client .
docker push azathoth/vrep-python-client

docker build -f Dockerfile-ompl -t azathoth/vrep-python-client-ompl .
docker push azathoth/vrep-python-client-ompl

docker build -f Dockerfile-ode -t azathoth/vrep-python-client-ompl-ode .
docker push azathoth/vrep-python-client-ompl-ode

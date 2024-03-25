
all : Up

Up :
		docker compose -f ./srcs/docker-compose.yml up

Stop :
		docker compose -f ./srcs/docker-compose.yml down

build :
		docker compose -f ./srcs/docker-compose.yml build

clean :
	docker rmi $(docker images -aq)
fclean : clean
	docker compose rm -f  $(docker ps -aq)

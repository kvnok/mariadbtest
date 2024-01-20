NAME			= inception

DOCKER_COMPOSE	= docker-compose -f srcs/docker-compose.yml

DOCKER			= docker

all: copyenv
	${DOCKER_COMPOSE} build
	${DOCKER_COMPOSE} up -d

copyenv:
	cp /home/kevin/.testenv .env

ls:
	${DOCKER} ps -a

build: 
	${DOCKER_COMPOSE} build

up:
	${DOCKER_COMPOSE} up -d
	
down:
	${DOCKER_COMPOSE} down

pause:
	${DOCKER_COMPOSE} pause

unpause:
	${DOCKER_COMPOSE} unpause

clean:	down
	${DOCKER_COMPOSE} down -v --rmi all --remove-orphans
#	chmod 777 ~/Desktop/inception 
#	rm -rf ~/Desktop/inception

fclean: 		clean
	${DOCKER} system prune -f
	rm -rf .env

re:				fclean all

.PHONY:			stop clean prune all build up


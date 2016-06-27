DOCKER="./etc/docker_env.sh"
all: build start info

build-docker:
	@echo "Creating the Helioz machine"
	@. $(DOCKER)

build-img:
	@( . $(DOCKER); docker-compose build )

build-db:
	@( . $(DOCKER); docker-compose run web /usr/local/bin/python create_db.py)

start:
	@( . $(DOCKER); docker-compose up -d )

build: build-docker build-img build-db
	@echo "Full build..."

stop:
	@( . $(DOCKER); docker-compose stop )
	@( . $(DOCKER); docker-compose rm )

info:
	@echo "App running at:"
	@echo "http://$(shell ( . $(DOCKER) &> /dev/null && docker-machine ip helioz))"



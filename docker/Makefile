exec:
	docker start rodin-bundle-build
	docker exec rodin-bundle-build mvn clean verify
	docker stop rodin-bundle-build

run:
	# -dt         -- detach and with TTY
	# -v .:/build -- mount the current directory as /build
	docker run -dt --name rodin-bundle-build -v .:/build rodin-bundle-build

build:
	docker build -t rodin-bundle-build docker
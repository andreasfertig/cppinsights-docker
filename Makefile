all: build

build: insights
	docker build -t cppinsights-trusty `pwd`
	docker run --rm -i cppinsights-trusty /usr/bin/insights --version

insights: clean
	wget https://github.com/andreasfertig/cppinsights/releases/download/continuous/insights-ubuntu-14.04.tar.gz
	tar -xzf insights-ubuntu-14.04.tar.gz

clean:
	rm -f insights-ubuntu-14.04.tar.gz* insights


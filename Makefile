test:
	export GOPATH="."
	cd ./src/bot && go test -v

sputnik:
	export GOPATH="."
	cd ./src && go build -o ../sputnik

clean:
	rm ./sputnik

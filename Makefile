test:
	export GOPATH="."
	cd ./src/bot && go test -v

sputnik: ./src/sputnik.go bot
	export GOPATH="."
	cd ./src && go build -o ../sputnik

bot: ./src/bot/bot.go ./src/bot/bot_test.go

clean:
	rm ./sputnik

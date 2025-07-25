alias relogin="exec $SHELL -l"
alias reset-launchpad="sudo find 2>/dev/null /private/var/folders/ -type d -name com.apple.dock.launchpad -exec rm -rf {} +; killall Dock"

alias docker-mysql="docker run -d -it --name mysql -p 3306:3306 -v mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root mysql:latest"
alias docker-redoc="docker run -d -it --name redoc -p 8081:80 -e SPEC_URL=http://localhost:8080/openapi.json redocly/redoc"

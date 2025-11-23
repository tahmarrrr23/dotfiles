if ! command -v docker >/dev/null 2>&1; then
  return
fi

alias docker-run-redoc='docker run -d -it --name redoc -p 8079:80 -e SPEC_URL=http://localhost:8080/openapi.json "redocly/redoc:v2.5.1"'
alias docker-run-mysql='docker run -d -it --name mysql -p 3306:3306 -v mysql:/var/lib/mysql -e TZ=Asia/Tokyo -e MYSQL_ROOT_PASSWORD=root'

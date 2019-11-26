#!/usr/bin/env sh

# cd docker
HTTPPAGEFILE=./.notebookhttp
#BROWSER=start
#BROWSER=xdg-open
BROWSER='C:\Program Files\Mozilla Firefox\Firefox'

case "$1" in
    up)
        echo 'creating and startting docker notebook'
        docker-compose up | grep -m1 'http://127.0.0.1:' | awk -F' ' '{print $NF}' > $HTTPPAGEFILE
        "$BROWSER" "$(cat $HTTPPAGEFILE)"
	;;
    down)
        echo 'removing docker notebook'
        docker-compose down
        rm $HTTPPAGEFILE
	;;
    start)
        echo 'starting notebook'
        if [[ -f "$HTTPPAGEFILE" ]]; then
            docker-compose start
            "$BROWSER" "$(cat $HTTPPAGEFILE)"
	else
	    echo './docker-notebook.sh up'
	fi
	;;
    stop)
        echo 'stopping notebook'
	docker-compose stop
	;;
    *)
	echo 'start the notebook with'
	echo './docker-notebook.sh start'
	echo 'stop the notebook with'
	echo './docker-notebook.sh stop'
esac

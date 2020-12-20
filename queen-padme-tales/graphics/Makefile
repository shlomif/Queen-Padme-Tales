all: Christina_Grimmie_in_November_2014--resized.webp who-is-qoheleth.svg.png

who-is-qoheleth.svg.png: who-is-qoheleth.svg
	inkscape --export-width=300 --export-png="$@" $<

evilphish-svg--facing-right.min.svg.png: evilphish-svg--facing-right.min.svg
	inkscape -h 200 --export-filename evilphish-svg--facing-right.min.svg.png evilphish-svg--facing-right.min.svg

Christina_Grimmie_in_November_2014--resized.webp: Christina_Grimmie_in_November_2014.jpg
	gm convert -resize 400x $< $@

DESTDIR ?=/lib/budgie-desktop/plugins

budgieshutdowntimer:
	echo "Nothing to do"
install: budgie-shutdown-applet
	mkdir $DESTDIR/org.budgie-desktop.applet.shutdowntimer
	for file in ShutdownTimer/*;do
		install -m 0755 "$file" $DESTDIR/org.budgie-desktop.applet.shutdowntimer/
	done

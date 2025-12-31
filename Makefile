all:
	rm -rf build/
	jpm build
	./build/web.rethread

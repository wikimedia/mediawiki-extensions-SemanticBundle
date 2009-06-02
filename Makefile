ver = `date +%Y%m%d`

all:
	rm -rf release
	mkdir release
	awk '{ system("svn export "$$2" release/"$$1) }' < externals
	tar -C release -c ./ | gzip >SemanticBundle-${ver}.tgz
	(cd release; zip -r ../SemanticBundle-${ver}.zip .)
	rm -rf release
dev:
	rm -rf dev 
	mkdir dev 
	awk '{ system("svn export "$$2" dev/"$$1) }' < externals.dev
	tar -C dev -c ./ | gzip >SemanticBundle-dev-$(ver).tgz
	(cd dev; zip -r ../SemanticBundle-dev-$(ver).zip .)
	rm -rf dev

clean:
	rm -rf release dev SemanticBundle-*.tgz SemanticBundle-dev-*.tgz SemanticBundle-*.zip SemanticBundle-dev-*.zip
ext:
	svn propset svn:externals -F externals ..
	(cd ..; svn update)
ext-dev:
	svn propset svn:externals -F externals.dev ..
	(cd ..; svn update)

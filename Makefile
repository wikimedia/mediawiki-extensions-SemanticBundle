ver = `date +%Y%m%d`

all:
	rm -rf release
	mkdir release
	awk '{ system("svn export "$$2" release/"$$1) }' < externals
	sed -i -r -e "s/'version'\s*=>\s*'(.*)'/'version' => '\1.$(ver)'/" release/semantic-bundle/SemanticBundle.php
	tar -C release -c ./ | gzip >SemanticBundle-${ver}.tgz
	(cd release; zip -r ../SemanticBundle-${ver}.zip .)
	rm -rf release
dev:
	rm -rf dev 
	mkdir dev
	awk '{ system("svn export "$$2" dev/"$$1) }' < externals.dev
	sed -i -r -e "s/'version'\s*=>\s*'(.*)'/'version' => '\1.$(ver)-dev'/" dev/semantic-bundle/SemanticBundle.php
	tar -C dev -c ./ | gzip >SemanticBundle-dev-$(ver).tgz
	(cd dev; zip -r ../SemanticBundle-dev-$(ver).zip .)
	rm -rf dev
clean:
	rm -rf release dev SemanticBundle-*.tgz SemanticBundle-dev-*.tgz SemanticBundle-*.zip SemanticBundle-dev-*.zip
ext:
	(cd ..; svn propset svn:externals -F semantic-bundle/externals .)
	(cd ..; svn update)
ext-dev:
	(cd ..; svn propset svn:externals -F semantic-bundle/externals.dev .)
	(cd ..; svn update)

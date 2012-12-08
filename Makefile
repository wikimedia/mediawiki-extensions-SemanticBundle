ver = `date +%Y%m%d`

all:
	rm -rf release
	mkdir release
	awk '{ system("cd release && git clone https://gerrit.wikimedia.org/r/p/mediawiki/extensions/"$$1".git && cd "$$1" && git checkout "$$2" && rm -r .* && cd ../..") }' < externals
	sed -i -r -e "s/'version'\s*=>\s*'(.*)'/'version' => '\1$(ver)'/" release/SemanticBundle/SemanticBundle.php
	tar -C release -c ./ | gzip >SemanticBundle-${ver}.tgz
	7z a SemanticBundle-${ver}.7z release
	(cd release; zip -r ../SemanticBundle-${ver}.zip .)
	rm -rf release
dev:
	rm -rf dev 
	mkdir dev
	awk '{ system("cd dev && git clone https://gerrit.wikimedia.org/r/p/mediawiki/extensions/"$$1".git && cd "$$1" && rm -r .* && cd ../..") }' < externals
	sed -i -r -e "s/'version'\s*=>\s*'(.*)'/'version' => '\1$(ver)-dev'/" dev/SemanticBundle/SemanticBundle.php
	tar -C dev -c ./ | gzip >SemanticBundle-dev-$(ver).tgz
	7z a SemanticBundle-dev-${ver}.7z dev
	(cd dev; zip -r ../SemanticBundle-dev-$(ver).zip .)
	rm -rf dev
clean:
	rm -rf release dev SemanticBundle-*.tgz SemanticBundle-dev-*.tgz SemanticBundle-*.zip SemanticBundle-dev-*.zip SemanticBundle-*.7z SemanticBundle-dev-*.7z

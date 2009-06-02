ver = `date +%Y%m%d`

all:
	rm -rf release
	mkdir release
	# Semantic MediaWiki v1.4.2
	svn export http://svn.wikimedia.org/svnroot/mediawiki/tags/extensions/SemanticMediaWiki/REL_1_4_2/ release/SemanticMediaWiki
	# Semantic Result Formats (latest dev)
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticResultFormats/ release/SemanticResultFormats/
	# Semantic Forms v1.7.1
	svn export http://svn.wikimedia.org/svnroot/mediawiki/tags/extensions/SemanticForms/REL_1_7_1/ release/SemanticForms/
	# Semantic Compound Queries (latest dev)
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticCompoundQueries/ release/SemanticCompoundQueries/
	# Semantic Drilldown v0.5.7
	svn export http://svn.wikimedia.org/svnroot/mediawiki/tags/extensions/SemanticDrilldown/REL_0_5_7/ release/SemanticDrilldown/
	# Semantic Google Maps v0.6.2
	svn export http://svn.wikimedia.org/svnroot/mediawiki/tags/extensions/SemanticGoogleMaps/REL_0_6_2/ release/SemanticGoogleMaps/
	# Semantic SignUp (skipped for now - they have only downloadable version)
	# Semantic Tasks
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticTasks/ release/SemanticTasks/
	# SemanticQueryFormTool (skipped for now - they have only downloadable version)
	# Admin Links v0.1.1
	svn export http://svn.wikimedia.org/svnroot/mediawiki/tags/extensions/AdminLinks/REL_0_1_1/ release/AdminLinks/
	# Data Transfer v0.3
	svn export http://svn.wikimedia.org/svnroot/mediawiki/tags/extensions/DataTransfer/REL_0_3/ release/DataTransfer/
	# External Data v0.6.1
	svn export http://svn.wikimedia.org/svnroot/mediawiki/tags/extensions/ExternalData/REL_0_6_1/ release/ExternalData/
	# Header Tabs v0.6.5
	svn export http://mediawiki-header-tabs.googlecode.com/svn/tags/rel_0.6.5/ release/HeaderTabs
	# Google Geocoder (0.2.1)
	svn export http://mediawiki-google-geocoder.googlecode.com/svn/tags/REL_0_2_1/ release/GoogleGeocoder
	# Page Object Model (0.1.3)
	svn export http://mediawiki-page-object-model.googlecode.com/svn/tags/REL_0_1_3/ release/PageObjectModel
	# ParserFunctions (latest dev)
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/ParserFunctions/ release/ParserFunctions/
	# ReplaceText v0.6.3
	svn export http://svn.wikimedia.org/svnroot/mediawiki/tags/extensions/ReplaceText/REL_0_6_3/ release/ReplaceText/
	# Widgets v0.8.6
	svn export http://svn.wikimedia.org/svnroot/mediawiki/tags/extensions/Widgets/REL_0_8_6/ release/Widgets
	cp SemanticBundle.php release/
	tar -C release -c ./ | gzip >SemanticBundle-${ver}.tgz
	(cd release; zip -r ../SemanticBundle-${ver}.zip .)
	rm -rf release
dev:
	rm -rf dev 
	mkdir dev 
	# Semantic MediaWiki
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticMediaWiki/ dev/SemanticMediaWiki/
	# Semantic Result Formats
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticResultFormats/ dev/SemanticResultFormats/
	# Semantic Forms
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticForms/ dev/SemanticForms/
	# Semantic Compound Queries
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticCompoundQueries/ dev/SemanticCompoundQueries/
	# Semantic Drilldown
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticDrilldown/ dev/SemanticDrilldown/
	# Semantic Google Maps
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticGoogleMaps/ dev/SemanticGoogleMaps/
	# Semantic SignUp (skipped for now - they have only downloadable version)
	# Semantic Tasks
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticTasks/ dev/SemanticTasks/
	# SemanticQueryFormTool (skipped for now - they have only downloadable version)
	# Admin Links
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/AdminLinks/ dev/AdminLinks/
	# Data Transfer
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/DataTransfer/ dev/DataTransfer/
	# External Data
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/ExternalData/ dev/ExternalData/
	# Header Tabs
	svn export http://mediawiki-header-tabs.googlecode.com/svn/trunk/ dev/HeaderTabs
	# Google Geocoder
	svn export http://mediawiki-google-geocoder.googlecode.com/svn/trunk/ dev/GoogleGeocoder
	# Page Object Model
	svn export http://mediawiki-page-object-model.googlecode.com/svn/trunk/ dev/PageObjectModel
	# ParserFunctions
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/ParserFunctions/ dev/ParserFunctions/
	# ReplaceText
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/ReplaceText/ dev/ReplaceText/
	# Widgets
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/Widgets/ dev/Widgets
	cp SemanticBundle.php dev/
	tar -C dev -c ./ | gzip >SemanticBundle-dev-$(ver).tgz
	(cd dev; zip -r ../SemanticBundle-dev-$(ver).zip .)
	rm -rf dev

clean:
	rm -rf release dev SemanticBundle-*.tgz SemanticBundle-dev-*.tgz SemanticBundle-*.zip SemanticBundle-dev-*.zip
ext:
	svn propset -F externals ..
ext-dev:
	svn propset -F externals.dev ..

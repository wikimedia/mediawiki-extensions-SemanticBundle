ver = `date +%Y%m%d`

all:
	rm -rf release
	mkdir release
	# Semantic MediaWiki v1.4.2
	svn export http://svn.wikimedia.org/svnroot/mediawiki/tags/extensions/SemanticMediaWiki/REL_1_4_2/ release/SemanticMediaWiki
	# Semantic Result Formants (latest dev)
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticResultFormats/ release/SemanticResultFormats/
	# Semantic Forms (latest dev)
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticForms/ release/SemanticForms/
	# Semantic Compound Queries (latest dev)
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticCompoundQueries/ release/SemanticCompoundQueries/
	# Semantic DrillDown (latest dev)
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticDrilldown/ release/SemanticDrilldown/
	# Semantic Google Maps (latest dev)
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticGoogleMaps/ release/SemanticGoogleMaps/
	# Semantic SignUp (skipped for now - they have only downloadable version)
	# Semantic Tasks
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticTasks/ release/SemanticTasks/
	# SemanticQueryFormTool (skipped for now - they have only downloadable version)
	# Admin Links (latest dev)
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/AdminLinks/ release/AdminLinks/
	# Data Transfer (latest dev)
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/DataTransfer/ release/DataTransfer/
	# External Data (latest dev)
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/ExternalData/ release/ExternalData/
	# Header Tabs v0.6.5
	svn export http://mediawiki-header-tabs.googlecode.com/svn/tags/rel_0.6.5/ release/HeaderTabs
	# Google Geocoder (0.2.1)
	svn export http://mediawiki-google-geocoder.googlecode.com/svn/tags/REL_0_2_1/ release/GoogleGeocoder
	# Page Object Model (0.1.3)
	svn export http://mediawiki-page-object-model.googlecode.com/svn/tags/REL_0_1_3/ release/POM
	# ParserFunctions (latest dev)
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/ParserFunctions/ release/ParserFunctions/
	# ReplaceText (latest dev)
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/ReplaceText/ release/ReplaceText/
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
	# Semantic Result Formants
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticResultFormats/ dev/SemanticResultFormats/
	# Semantic Forms
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticForms/ dev/SemanticForms/
	# Semantic Compound Queries
	svn export http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticCompoundQueries/ dev/SemanticCompoundQueries/
	# Semantic DrillDown
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
	svn export http://mediawiki-page-object-model.googlecode.com/svn/trunk/ dev/POM
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

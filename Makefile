all:
	rm -rf release
	mkdir release
	# Semantic MediaWiki v1.4.2
	svn co http://svn.wikimedia.org/svnroot/mediawiki/tags/extensions/SemanticMediaWiki/REL_1_4_2/ release/SemanticMediaWiki
	# Semantic Result Formants (latest dev)
	svn co http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticResultFormats/ release/SemanticResultFormats/
	# Semantic Forms (latest dev)
	svn co http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticForms/ release/SemanticForms/SemanticForms/
	# Semantic Compound Queries (latest dev)
	svn co http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticCompoundQueries/ release/SemanticCompoundQueries/
	# Semantic DrillDown (latest dev)
	svn co http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticDrilldown/ release/SemanticDrilldown/
	# Semantic Google Maps (latest dev)
	svn co http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticGoogleMaps/ release/SemanticGoogleMaps/
	# Semantic SignUp (skipped for now - they have only downloadable version)
	# Semantic Tasks
	svn co http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/SemanticTasks/ release/SemanticTasks/
	# SemanticQueryFormTool (skipped for now - they have only downloadable version)
	# Admin Links (latest dev)
	svn co http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/AdminLinks/ release/AdminLinks/
	# Data Transfer (latest dev)
	svn co http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/DataTransfer/ release/DataTransfer/
	# External Data (latest dev)
	svn co http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/ExternalData/ release/ExternalData/
	# Header Tabs v0.6.5
	svn co http://mediawiki-header-tabs.googlecode.com/svn/tags/rel_0.6.5/ release/HeaderTabs
	# Google Geocoder (0.2.1)
	svn co http://mediawiki-google-geocoder.googlecode.com/svn/tags/REL_0_2_1/ release/GoogleGeocoder
	# Page Object Model (0.1.3)
	svn co http://mediawiki-page-object-model.googlecode.com/svn/tags/REL_0_1_3/ release/POM
	# ParserFunctions (latest dev)
	svn co http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/ParserFunctions/ release/
	# ReplaceText (latest dev)
	svn co http://svn.wikimedia.org/svnroot/mediawiki/trunk/extensions/ReplaceText/ release/ReplaceText/
	# Widgets v0.8.6
	svn co http://svn.wikimedia.org/svnroot/mediawiki/tags/extensions/Widgets/REL_0_8_6/ release/Widgets
	cp SemanticBundle.php release/
	tar -C release -c ./ | gzip >SemanticBundle.tgz

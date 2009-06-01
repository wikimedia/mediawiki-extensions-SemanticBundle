<?
# Semantic MediaWiki basic installation.
# More info: http://semantic-mediawiki.org/wiki/Help:Installation
include_once("$IP/extensions/SemanticMediaWiki/includes/SMW_Settings.php");
enableSemantics('');

# Semantic ResultFormats
# More info: http://semantic-mediawiki.org/wiki/Help:Semantic_Result_Formats#Installation
include_once("$IP/extensions/SemanticResultFormats/SRF_Settings.php");

# Semantic Forms
# More info: http://www.mediawiki.org/wiki/Extension:Semantic_Forms
include_once('extensions/SemanticForms/includes/SF_Settings.php');

# Semantic Compound Queries
# More info: http://www.mediawiki.org/wiki/Extension:Semantic_Compound_Queries
include_once("$IP/extensions/SemanticCompoundQueries/SCQ_Settings.php");

# Semantic Drilldown
# More info: http://www.mediawiki.org/wiki/Extension:Semantic_Drilldown#Installation
include_once('extensions/SemanticDrilldown/includes/SD_Settings.php');

# Semantic Google Maps 
# It also requires setting $wgGoogleMapsKey prior to calling it
# More info: http://www.mediawiki.org/wiki/Extension:Semantic_Google_Maps#Download_and_installation
include_once( "$IP/extensions/SemanticGoogleMaps/SemanticGoogleMaps.php" );

# Semantic Tasks
# More info: http://www.mediawiki.org/wiki/Extension:Semantic_Tasks#Installation
include_once( "$IP/extensions/SemanticTasks/SemanticTasks.php" );

# 
# More info: 


# 
# More info: 


# 
# More info: 


# 
# More info: 



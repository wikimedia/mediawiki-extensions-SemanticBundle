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

# Admin Links
# More info: http://www.mediawiki.org/wiki/Extension:Admin_Links#Installation
include_once("$IP/extensions/AdminLinks/AdminLinks.php");

# Data Transfer
# More info: http://www.mediawiki.org/wiki/Extension:Data_Transfer#Installation
include_once('extensions/DataTransfer/includes/DT_Settings.php');

# External Data
# It also requires setting $wgGoogleMapsKey prior to calling it
# More info: http://www.mediawiki.org/wiki/Extension:External_Data#Installation
include_once("$IP/extensions/ExternalData/ExternalData.php");

# Header Tabs
# More info: http://www.mediawiki.org/wiki/Extension:Header_Tabs#Installation 
include_once("$IP/extensions/HeaderTabs/HeaderTabs.php");

# Google Geocoder
# More info: http://www.mediawiki.org/wiki/Extension:Google_Geocoder#Configuration
require_once("$IP/extensions/GoogleGeocoder/GoogleGeocoder.php");
 
# Page Object Model (POM)
# More info: http://www.mediawiki.org/wiki/Extension:Page_Object_Model#Installation
include_once("$IP/extensions/POM/PageObjectModel.php");

# ParserFunctions
# More info: http://www.mediawiki.org/wiki/Extension:ParserFunctions
require_once( "$IP/extensions/ParserFunctions/ParserFunctions.php" );

# Replace Text
# More info: http://www.mediawiki.org/wiki/Extension:Replace_Text#Installation
require_once( "$IP/extensions/ReplaceText/ReplaceText.php" );
$wgGroupPermissions['sysop']['replacetext'] = true;

# Widgets
# Also need to do some permission setup: http://www.mediawiki.org/wiki/Extension:Widgets#Folder_permissions
# More info: http://www.mediawiki.org/wiki/Extension:Widgets#Installation
require_once("$IP/extensions/Widgets/Widgets.php");
$wgGroupPermissions['sysop']['editwidgets'] = true;

<?php
if ( !defined( 'MEDIAWIKI' ) ) {
    echo "This file is not a valid entry point.";
    exit( 1 );
}

# Semantic MediaWiki basic installation.
# More info: http://semantic-mediawiki.org/wiki/Help:Installation
include_once("$IP/extensions/SemanticMediaWiki/includes/SMW_Settings.php");
enableSemantics($wgServerName);

# Semantic Result Formats
# More info: http://semantic-mediawiki.org/wiki/Help:Semantic_Result_Formats#Installation
include_once("$IP/extensions/SemanticResultFormats/SRF_Settings.php");

# Semantic Forms
# More info: http://www.mediawiki.org/wiki/Extension:Semantic_Forms
include_once("$IP/extensions/SemanticForms/includes/SF_Settings.php");

# Semantic Compound Queries
# More info: http://www.mediawiki.org/wiki/Extension:Semantic_Compound_Queries
#include_once("$IP/extensions/SemanticCompoundQueries/SCQ_Settings.php");

# Semantic Drilldown
# More info: http://www.mediawiki.org/wiki/Extension:Semantic_Drilldown#Installation
include_once("$IP/extensions/SemanticDrilldown/includes/SD_Settings.php");

# Maps and Semantic Maps 
# If you're planning to use Google Maps or Yahoo! Maps, you should also set
# $egGoogleMapsKey and $egYahooMapsKey.
# More info:
# http://www.mediawiki.org/wiki/Extension:Maps#Download_and_installation
# http://www.mediawiki.org/wiki/Extension:Semantic_Maps#Download_and_installation
#include_once( "$IP/extensions/Maps/Maps.php" );
#include_once( "$IP/extensions/SemanticMaps/SemanticMaps.php" );

# Semantic Tasks
# More info: http://www.mediawiki.org/wiki/Extension:Semantic_Tasks#Installation
#include_once( "$IP/extensions/SemanticTasks/SemanticTasks.php" );

# Semantic Internal Objects
# More info: http://www.mediawiki.org/wiki/Extension:Semantic_Internal_Objects
#include_once("$IP/extensions/SemanticInternalObjects/SemanticInternalObjects.php");

# Admin Links
# More info: http://www.mediawiki.org/wiki/Extension:Admin_Links#Installation
include_once("$IP/extensions/AdminLinks/AdminLinks.php");

# ArrayExtension
# More info: http://www.mediawiki.org/wiki/Extension:ArrayExtension#Installation
#include_once("$IP/extensions/ArrayExtension/ArrayExtension.php");

# Data Transfer
# More info: http://www.mediawiki.org/wiki/Extension:Data_Transfer#Installation
#include_once("$IP/extensions/DataTransfer/includes/DT_Settings.php");

# External Data
# More info: http://www.mediawiki.org/wiki/Extension:External_Data#Installation
#include_once("$IP/extensions/ExternalData/ExternalData.php");

# Header Tabs
# More info: http://www.mediawiki.org/wiki/Extension:Header_Tabs#Installation 
#include_once("$IP/extensions/HeaderTabs/HeaderTabs.php");

# Page Object Model (POM)
# More info: http://www.mediawiki.org/wiki/Extension:Page_Object_Model#Installation
#include_once("$IP/extensions/PageObjectModel/PageObjectModel.php");

# ParserFunctions
# More info: http://www.mediawiki.org/wiki/Extension:ParserFunctions
require_once( "$IP/extensions/ParserFunctions/ParserFunctions.php" );
$wgPFEnableStringFunctions = true;

# Replace Text
# More info: http://www.mediawiki.org/wiki/Extension:Replace_Text#Installation
#require_once( "$IP/extensions/ReplaceText/ReplaceText.php" );
#$wgGroupPermissions['sysop']['replacetext'] = true;

# Widgets
# Also need to do some permission setup: http://www.mediawiki.org/wiki/Extension:Widgets#Folder_permissions
# More info: http://www.mediawiki.org/wiki/Extension:Widgets#Installation
require_once("$IP/extensions/Widgets/Widgets.php");
$wgGroupPermissions['sysop']['editwidgets'] = true;

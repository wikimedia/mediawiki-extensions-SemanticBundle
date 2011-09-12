<?php
if ( !defined( 'MEDIAWIKI' ) ) {
    echo "This file is not a valid entry point.";
    exit( 1 );
}


# Semantic MediaWiki basic installation.
# More info: http://semantic-mediawiki.org/wiki/Help:Installation
include_once( "$IP/extensions/Validator/Validator.php" );
include_once( "$IP/extensions/SemanticMediaWiki/SemanticMediaWiki.php" );
enableSemantics( parse_url( $wgServer, PHP_URL_HOST ) );

# Semantic Result Formats
# More info: http://semantic-mediawiki.org/wiki/Help:Semantic_Result_Formats#Installation
#include_once( "$IP/extensions/SemanticResultFormats/SemanticResultFormats.php" );

# Semantic Forms
# More info: http://www.mediawiki.org/wiki/Extension:Semantic_Forms
#include_once( "$IP/extensions/SemanticForms/SemanticForms.php" );

# Semantic Forms Inputs
# More info: http://www.mediawiki.org/wiki/Extension:Semantic_Forms_Inputs
#include_once( "$IP/extensions/SemanticFormsInputs/SemanticFormsInputs.php" );

# Semantic Compound Queries
# More info: http://www.mediawiki.org/wiki/Extension:Semantic_Compound_Queries
#include_once( "$IP/extensions/SemanticCompoundQueries/SemanticCompoundQueries.php" );

# Semantic Drilldown
# More info: http://www.mediawiki.org/wiki/Extension:Semantic_Drilldown#Installation
#include_once( "$IP/extensions/SemanticDrilldown/SemanticDrilldown.php" );

# Maps and Semantic Maps 
# If you're planning to use Google Maps or Yahoo! Maps, you should also set
# $egGoogleMapsKey or $egYahooMapsKey (AFTER the include_once statements).
# More info:
# http://mapping.referata.com/wiki/Maps#Installation
# http://mapping.referata.com/wiki/Semantic_Maps#Installation
#include_once( "$IP/extensions/Maps/Maps.php" );
#include_once( "$IP/extensions/SemanticMaps/SemanticMaps.php" );

# Semantic Tasks
# More info: http://www.mediawiki.org/wiki/Extension:Semantic_Tasks#Installation
#include_once( "$IP/extensions/SemanticTasks/SemanticTasks.php" );

# Semantic Internal Objects
# More info: http://www.mediawiki.org/wiki/Extension:Semantic_Internal_Objects
#include_once( "$IP/extensions/SemanticInternalObjects/SemanticInternalObjects.php" );

# Admin Links
# More info: http://www.mediawiki.org/wiki/Extension:Admin_Links#Installation
#include_once( "$IP/extensions/AdminLinks/AdminLinks.php" );

# Approved Revs
# More info: http://www.mediawiki.org/wiki/Extension:Approved_Revs#Installation
#include_once( "$IP/extensions/ApprovedRevs/ApprovedRevs.php" );

# ArrayExtension
# More info: http://www.mediawiki.org/wiki/Extension:ArrayExtension#Installation
#include_once( "$IP/extensions/ArrayExtension/ArrayExtension.php" );

# Data Transfer
# More info: http://www.mediawiki.org/wiki/Extension:Data_Transfer#Installation
#include_once( "$IP/extensions/DataTransfer/DataTransfer.php" );

# External Data
# More info: http://www.mediawiki.org/wiki/Extension:External_Data#Installation
#include_once( "$IP/extensions/ExternalData/ExternalData.php" );

# Header Tabs
# More info: http://www.mediawiki.org/wiki/Extension:Header_Tabs#Installation 
#include_once( "$IP/extensions/HeaderTabs/HeaderTabs.php" );

# ParserFunctions
# More info: http://www.mediawiki.org/wiki/Extension:ParserFunctions
#require_once( "$IP/extensions/ParserFunctions/ParserFunctions.php" );
#$wgPFEnableStringFunctions = true;

# Replace Text
# More info: http://www.mediawiki.org/wiki/Extension:Replace_Text#Installation
#require_once( "$IP/extensions/ReplaceText/ReplaceText.php" );

# Widgets
# Also need to do some permission setup: http://www.mediawiki.org/wiki/Extension:Widgets#Folder_permissions
# More info: http://www.mediawiki.org/wiki/Extension:Widgets#Installation
#require_once( "$IP/extensions/Widgets/Widgets.php" );
#$wgGroupPermissions['sysop']['editwidgets'] = true;

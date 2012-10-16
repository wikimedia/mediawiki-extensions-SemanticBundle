<?php

/**
 * Initialization file for the SemanticBundle extension.
 *
 * Documentation:	 		https://www.mediawiki.org/wiki/SemanticBundle
 * Support					https://www.mediawiki.org/wiki/Talk:SemanticBundle
 * Source code:				https://gerrit.wikimedia.org/r/gitweb?p=mediawiki/extensions/SemanticBundle.git
 *
 * @file
 * @ingroup SemanticBundle
 *
 * @licence GNU GPL v2+
 *
 * @author Yaron Koren
 * @author Jeroen De Dauw < jeroendedauw@gmail.com >
 */

/**
 * This documentation group collects source code files belonging to SemanticBundle.
 *
 * @defgroup SemanticBundle SemanticBundle
 */

if ( !defined( 'MEDIAWIKI' ) ) {
    echo "This file is not a valid entry point.";
    exit( 1 );
}

define( 'SemanticBundle_VERSION', '1.8alpha' );

$wgExtensionCredits['semantic'][] = array(
	'path' => __FILE__,
	'name' => 'Semantic Bundle',
	'description' => 'A pre-packaged bundle of extensions meant to be used on wikis based around the [http://semantic-mediawiki.org Semantic MediaWiki] extension.',
	'version' => SemanticBundle_VERSION,
	'author' => array(
		'[http://www.mediawiki.org/wiki/User:Yaron_Koren Yaron Koren]',
		'[http://www.mediawiki.org/wiki/User:Jeroen_De_Dauw Jeroen De Dauw]'
	),
    'url' => 'http://www.mediawiki.org/wiki/Semantic_Bundle'
);

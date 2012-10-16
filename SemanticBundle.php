<?php

/**
 * SemanticBundle - A pre-packaged bundle of extensions meant to be used on wikis
 * based around the Semantic MediaWiki extension.
 *
 * Documentation:	 		https://www.mediawiki.org/wiki/SemanticBundle
 * Support					https://www.mediawiki.org/wiki/Talk:SemanticBundle
 * Source code:				https://gerrit.wikimedia.org/r/gitweb?p=mediawiki/extensions/SemanticBundle.git
 *
 * @file
 * @defgroup SemanticBundle
 * @ingroup Extensions
 * @package MediaWiki
 *
 * @license http://opensource.org/licenses/bsd-license.php The BSD 2-Clause License
 *
 * @author Sergey Chernyshev
 * @author Yaron Koren
 * @author Jeroen De Dauw
 */

if ( !defined( 'MEDIAWIKI' ) ) {
    echo "This file is not a valid entry point.";
    exit( 1 );
}

define( 'SemanticBundle_VERSION', '1.8alpha' );

$wgExtensionCredits['semantic'][] = array(
	'path'           => __FILE__,
	'name'           => 'Semantic Bundle',
	'descriptionmsg' => 'semanticbundle-desc',
	'version'        => SemanticBundle_VERSION,
	'author'         => array(
		'[https://www.mediawiki.org/wiki/User:Yaron_Koren Yaron Koren]',
		'[https://www.mediawiki.org/wiki/User:Jeroen_De_Dauw Jeroen De Dauw]',
		'...'
		),
	'url'            => 'https://www.mediawiki.org/wiki/Semantic_Bundle'
);

// define server-local path to this file
$dir = dirname( __FILE__ );

// register message file
$wgExtensionMessagesFiles['SemanticBundle'] = $dir . '/SemanticBundle.i18n.php';

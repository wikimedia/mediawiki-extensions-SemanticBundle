<?php
/**
 * SemanticBundle - A pre-packaged bundle of extensions meant to be used on wikis
 * based around the Semantic MediaWiki extension.
 *
 * @link https://www.mediawiki.org/wiki/Extension:Semantic_Bundle Documentation
 *
 * @file SemanticBundle.php
 * @defgroup SemanticBundle
 * @ingroup Extensions
 * @package MediaWiki
 * @author Sergey Chernyshev
 * @author Yaron Koren
 * @author Jeroen De Dauw
 * @copyright (C) 2008 Sergey Chernyshev and Yaron Koren
 * @license http://opensource.org/licenses/bsd-license.php The BSD 2-Clause License
 */

if ( !defined( 'MEDIAWIKI' ) ) {
    echo "This file is not a valid entry point.";
    exit( 1 );
}

$wgExtensionCredits['semantic'][] = array(
	'path'           => __FILE__,
	'name'           => 'Semantic Bundle',
	'descriptionmsg' => 'semanticbundle-desc',
	'version'        => '',
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


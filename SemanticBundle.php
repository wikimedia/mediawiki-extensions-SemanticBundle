<?php
if ( !defined( 'MEDIAWIKI' ) ) {
    echo "This file is not a valid entry point.";
    exit( 1 );
}

$wgExtensionCredits['other'][] = array(
	'path' => __FILE__,
        'name' => 'Semantic Bundle',
        'description' => 'A pre-packaged bundle of extensions meant to be used on wikis based around the Semantic MediaWiki extension.',
	'version' => '0.5',
        'author' => array( '[http://www.mediawiki.org/wiki/User:Sergey_Chernyshev Sergey Chernyshev]', '[http://www.mediawiki.org/wiki/User:Yaron_Koren Yaron Koren]' ),
        'url' => 'http://www.mediawiki.org/wiki/Semantic_Bundle'
);


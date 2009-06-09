<?
if ( !defined( 'MEDIAWIKI' ) ) {
    echo "This file is not a valid entry point.";
    exit( 1 );
}

$wgExtensionCredits['other'][] = array(
	'path' => __FILE__,
        'name' => 'Semantic Bundle',
        'description' => 'Semantic Bundle is a pre-packaged bundle of extensions meant to be used on wikis based around the Semantic MediaWiki extension.',
	'version' => '0.1',
        'author' => '[http://www.mediawiki.org/wiki/User:Sergey_Chernyshev Sergey Chernyshev] and [http://www.mediawiki.org/wiki/User:Yaron_Koren Yaron Koren]',
        'url' => 'http://www.mediawiki.org/wiki/Semantic_Bundle'
);


class role::ci inherits role
{
	include jenkins
	include website::ci
	include php
	include php::pear::phpunit
	include php::pear::phing
	include php::pear::phpcpd
	include php::pear::pdepend
	include php::pear::php_pmd
	include php::pear::php_codesniffer_standards_kohana
	include php::pear::php_codebrowser
	include php::pecl::xdebug
	include php::pecl::gd

	package {
		"role-ci-git":
			ensure  => latest,
			name    => "git";
                "role-ci-php":
                        ensure  => latest,
                        name    => "php5-cli";
	}
}

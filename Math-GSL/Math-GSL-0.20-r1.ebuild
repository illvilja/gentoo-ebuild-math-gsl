# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=LETO
inherit perl-module

DESCRIPTION="Interface to the GNU Scientific Library using SWIG"

LICENSE="|| ( GLP-2 )"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

RDEPEND=">=sci-libs/gsl-1.8
		perl-core/Scalar-List-Utils
		>=dev-perl/Test-Class-0.12
		>=dev-perl/Test-Exception-0.21
		perl-core/Test-Simple
		perl-core/version"

DEPEND="${RDEPEND}
         >=dev-lang/perl-5.8.0
		 virtual/perl-Module-Build
		 >=dev-perl/extutils-pkgconfig-1.03
		 "
SRC_TEST="do"

PATCHES=(
"${FILESDIR}"/0.20-fix-empty-incdir-list-in-build-pl.patch
"${FILESDIR}"/0.20-add-fpic-flag-to-build-pl.patch
"${FILESDIR}"/0.20-xs-cblas-wrap-c-fixes.patch
"${FILESDIR}"/0.20-xs-multiroots-wrap-c-fixes.patch
"${FILESDIR}"/0.20-xs-permutation-wrap-c-fixes.patch
"${FILESDIR}"/0.20-xs-qrng-wrap-c-fixes.patch
"${FILESDIR}"/0.20-xs-roots-wrap-c-fixes.patch
"${FILESDIR}"/0.20-xs-sort-wrap-c-fixes.patch
)

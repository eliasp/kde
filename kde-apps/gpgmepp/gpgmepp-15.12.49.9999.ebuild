# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

KDE_BLOCK_SLOT4="false"
inherit kde5

DESCRIPTION="C++ bindings for gpgme"
LICENSE="LGPL-2+"
KEYWORDS=""
IUSE=""

RDEPEND="
	app-crypt/gpgme:=
"
DEPEND="${RDEPEND}
	dev-libs/boost
"

# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

KMNAME="kdepim"
KDE_HANDBOOK=optional
inherit kde4-meta

DESCRIPTION="The KDE Address Book (noakonadi branch)"
KEYWORDS=""
IUSE="debug"

DEPEND="
	$(add_kdebase_dep kdelibs '' 4.13.1)
	$(add_kdebase_dep kdepimlibs '' 4.13.1)
	$(add_kdebase_dep libkdepim)
	$(add_kdebase_dep libkleo)
"
RDEPEND="${DEPEND}"

KMEXTRA="
	plugins/kaddressbook/
	plugins/ktexteditor/
"
KMEXTRACTONLY="
	libkleo/
"

KMLOADLIBS="libkdepim"

src_install() {
	kde4-meta_src_install

	# file collision with kde-base/kdepimlibs-4.14.9
	rm -f "${ED}/usr/share/kde4/servicetypes/kaddressbookimprotocol.desktop"
}

pkg_postinst() {
	kde4-meta_pkg_postinst

	if ! has_version kde-base/kdepim-kresources:${SLOT}; then
		echo
		elog "For groupware functionality, please install kde-base/kdepim-kresources:${SLOT}"
		echo
	fi
}
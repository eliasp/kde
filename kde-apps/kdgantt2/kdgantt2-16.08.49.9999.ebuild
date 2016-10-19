# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

KDE_TEST="false"
inherit kde5

DESCRIPTION="KDGantt library"
LICENSE="GPL-2+"
KEYWORDS=""
IUSE=""

DEPEND="
	$(add_qt_dep qtgui)
	$(add_qt_dep qtprintsupport)
	$(add_qt_dep qtwidgets)
"
RDEPEND="${DEPEND}"

src_prepare() {
	kde5_src_prepare

	sed -i -e "/find_package(Qt5/s/Test//" CMakeLists.txt || die
}

# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit kde5

DESCRIPTION="KDE Telepathy contact, presence and chat Plasma applets"
HOMEPAGE="https://community.kde.org/Real-Time_Communication_and_Collaboration"

LICENSE="GPL-2 LGPL-2.1"
KEYWORDS=" ~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	$(add_frameworks_dep kwindowsystem)
	$(add_qt_dep qtdeclarative)
"
DEPEND="
	${COMMON_DEPEND}
	$(add_frameworks_dep plasma)
"
RDEPEND="${COMMON_DEPEND}
	!net-im/ktp-desktop-applets
"

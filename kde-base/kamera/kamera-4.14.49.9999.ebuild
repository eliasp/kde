# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

KDE_HANDBOOK="optional"
inherit kde4-base

DESCRIPTION="KDE digital camera manager"
KEYWORDS=""
IUSE="debug"

DEPEND="
	media-libs/libgphoto2:=
"
RDEPEND="${DEPEND}"

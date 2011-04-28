# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

KDE_SCM="git"
inherit kde4-base

DESCRIPTION="Gmail notifier applet/plasmoid for kde"
HOMEPAGE="http://sourceforge.net/projects/kcheckgmail"
EGIT_REPO_URI="git://git.debian.org/users/lpereira-guest/kcheckgmail.git"
EGIT_BRANCH="kde4-port"
EGIT_TREE="${EGIT_BRANCH}"

LICENSE="GPL-2"
KEYWORDS=""
SLOT="0"
IUSE="debug"

RDEPEND="
	$(add_kdebase_dep plasma-workspace)
"

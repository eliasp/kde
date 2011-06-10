# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

KDE_SCM="git"
inherit kde4-base
#EGIT_REPO_URI="git://anongit.kde.org/clones/telepathy-contact-list/mklapetek/telepathy-contact-list-new"

DESCRIPTION="UI for contaclist"
HOMEPAGE=""

LICENSE="GPL-3"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE="debug"

DEPEND="
	>=net-libs/telepathy-qt4-0.7.0
	>=net-im/telepathy-accounts-kcm-9999
"
RDEPEND="${DEPEND}"

src_install() {
	kde4-base_src_install
	# Now we will drop icons colliding with 4.6.80
	for x in aim facebook google-talk icq jabber msn skype yahoo
	do
		rm "${ED}/usr/share/icons/oxygen/48x48/actions/im-${x}.png" || die
	done
}

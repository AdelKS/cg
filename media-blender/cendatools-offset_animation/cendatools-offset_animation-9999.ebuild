# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="Blender addon. Easy shifting keyframes"
HOMEPAGE="https://blenderartists.org/forum/showthread.php?405910-Addon-Cenda-Tools"
EGIT_REPO_URI="https://github.com/CenekStrichel/CendaTools.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="media-gfx/blender[addons]"

src_install() {
	if VER="/usr/share/blender/2.79";then
		insinto ${VER}/scripts/addons/
		doins -r "${S}"/cs_offset_animation.py
	fi
}

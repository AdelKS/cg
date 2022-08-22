# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 eutils blender-addons-dir

DESCRIPTION="Blender addon for align the nodes in any nodes editor."
HOMEPAGE="https://github.com/3DSinghVFX/align_nodes"
EGIT_REPO_URI="https://github.com/3DSinghVFX/align_nodes.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="media-gfx/blender[addons]"

src_install() {
	egit_clean
    insinto ${GENTOO_GENTOO_BLENDER_ADDONS_DIR}/addons/${PN}
	doins -r "${S}"/*.py
}

pkg_postinst() {
	elog
	elog "This blender addon installs to system subdirectory"
	elog "${GENTOO_GENTOO_BLENDER_ADDONS_DIR}"
	elog "You can set it to make.conf before"
	elog "Please, set it to PreferencesFilePaths.scripts_directory"
	elog "More info you can find at page "
	elog "https://docs.blender.org/manual/en/latest/preferences/file.html#scripts-path"
	elog
}

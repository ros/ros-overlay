# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..12} )
CMAKE_BUILD_TYPE=RelWithDebInfo

inherit cmake python-single-r1

DESCRIPTION="Simulation Description Format (SDF) parser and description files"
HOMEPAGE="http://sdformat.org/"
SRC_URI="http://osrf-distributions.s3.amazonaws.com/sdformat/releases/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="$(ver_cut 1)"
KEYWORDS="~amd64"
IUSE="python"
REQUIRED_USE="python? ( ${PYTHON_REQUIRED_USE} )"

RDEPEND="
	>=dev-libs/urdfdom-1:=
	dev-libs/tinyxml
	dev-libs/boost:=
	sci-libs/gz-math:7=
	python? ( ${PYTHON_DEPS} )"
DEPEND="${RDEPEND}"
BDEPEND="
	dev-lang/ruby:*
	virtual/pkgconfig
	python? (
		$(python_gen_cond_dep '
			dev-python/pybind11[${PYTHON_USEDEP}]
		')
	)"

src_configure() {
	local mycmakeargs=(
		-DSKIP_PYBIND11=$(usex python OFF ON)
		-DUSE_SYSTEM_PATHS_FOR_PYTHON_INSTALLATION=ON
		-DGZ_PYTHON_VERSION="${EPYTHON#python}"
		-DPython3_EXECUTABLE="${PYTHON}"
		-DPython3_INCLUDE_DIR="$(python_get_includedir)"
		-DPython3_LIBRARY="$(python_get_library_path)"
		-DUSE_INTERNAL_URDF=OFF
	)
	cmake_src_configure
}

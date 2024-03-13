# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..12} )
CMAKE_BUILD_TYPE=RelWithDebInfo

inherit cmake python-single-r1

DESCRIPTION="Open source robotics simulator"
HOMEPAGE="https://github.com/gazebosim/gz-sim"
SRC_URI="https://osrf-distributions.s3.amazonaws.com/gz-sim/releases/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="$(ver_cut 1)"
KEYWORDS="~amd64"
IUSE="python"
REQUIRED_USE="python? ( ${PYTHON_REQUIRED_USE} )"

RDEPEND="
	dev-libs/gz-plugin:2=
	dev-libs/gz-utils:2=
	dev-libs/protobuf:=
	dev-libs/sdformat:13=
	media-gfx/gz-rendering:7=
	net-libs/gz-msgs:9=
	net-libs/gz-transport:12=
	sci-electronics/gz-tools:2
	sci-libs/gz-common:5=
	sci-libs/gz-fuel-tools:8=
	sci-libs/gz-gui:7=
	sci-libs/gz-math:7=
	sci-libs/gz-physics:6=
	sci-libs/gz-sensors:7=
	python? ( ${PYTHON_DEPS} )"
DEPEND="${RDEPEND}
	dev-build/gz-cmake:3"
BDEPEND="
	dev-build/gz-cmake:3
	python? (
		$(python_gen_cond_dep '
			dev-python/pybind11[${PYTHON_USEDEP}]
		')
	)"

PATCHES=(
	"${FILESDIR}/${PV}-fix-python-site-packages-path.patch"
)

src_configure() {
	local mycmakeargs=(
		-DSKIP_PYBIND11=$(usex python OFF ON)
		-DUSE_SYSTEM_PATHS_FOR_PYTHON_INSTALLATION=ON
		-DPython3_EXECUTABLE="${PYTHON}"
	)
	cmake_src_configure
}

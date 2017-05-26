# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Dock driving library for Kobuki. Users owning a docking station for Kobuki 
	    can use this tool to develop autonomous docking drive algorithms."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki_core-release/archive/release/kinetic/kobuki_dock_drive/0.7.8-1.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/ecl_threads
    ros-kinetic/ecl_geometry
    ros-kinetic/ecl_linear_algebra
"
DEPEND="
    ros-kinetic/ecl_build
    ros-kinetic/ecl_threads
    ros-kinetic/ecl_geometry
    ros-kinetic/ecl_linear_algebra
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}

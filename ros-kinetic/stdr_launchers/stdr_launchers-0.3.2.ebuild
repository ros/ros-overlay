# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Launch files, to easily bringup server, robots, guis"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/kinetic/stdr_launchers/0.3.2-0.tar.gz"

LICENSE="GPLv3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/stdr_server
    ros-kinetic/stdr_robot
    ros-kinetic/stdr_resources
    ros-kinetic/stdr_gui
    ros-kinetic/rviz
"
DEPEND="
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

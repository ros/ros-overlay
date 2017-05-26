# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Tools related to the Mobile Robot Programming Toolkit (MRPT).
    Refer to http://wiki.ros.org/mrpt_navigation for further documentation."
HOMEPAGE="http://wiki.ros.org/mrpt_navigation"
SRC_URI="https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_navigation/0.1.18-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/mrpt_local_obstacles
    ros-kinetic/mrpt_tutorials
    ros-kinetic/mrpt_bridge
    ros-kinetic/mrpt_reactivenav2d
    ros-kinetic/mrpt_map
    ros-kinetic/mrpt_localization
    ros-kinetic/mrpt_rawlog
    ros-kinetic/mrpt_msgs
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

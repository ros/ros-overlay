# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="hector_trajectory_server keeps track of tf trajectories extracted from tf data and makes this data accessible via a service and topic."
HOMEPAGE="http://ros.org/wiki/hector_trajectory_server"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_trajectory_server/0.3.5-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/hector_nav_msgs
    ros-kinetic/hector_map_tools
    ros-kinetic/tf
    ros-kinetic/nav_msgs
"
DEPEND="
    ros-kinetic/roscpp
    ros-kinetic/hector_nav_msgs
    ros-kinetic/hector_map_tools
    ros-kinetic/tf
    ros-kinetic/nav_msgs
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

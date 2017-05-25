# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/vrpn_client_ros-release/archive/release/kinetic/vrpn_client_ros/0.1.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/vrpn
    ros-kinetic/geometry_msgs
    ros-kinetic/roscpp
    ros-kinetic/tf2_ros

"
DEPEND="${RDEPEND}
    ros-kinetic/roslaunch
    ros-kinetic/roscpp
    ros-kinetic/vrpn
    ros-kinetic/roslint
    ros-kinetic/geometry_msgs
    ros-kinetic/tf2_ros

"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    default
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

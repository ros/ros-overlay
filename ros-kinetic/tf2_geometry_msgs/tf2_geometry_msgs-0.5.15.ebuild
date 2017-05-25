# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://www.ros.org/wiki/tf2_ros"
SRC_URI="https://github.com/ros-gbp/geometry2-release/archive/release/kinetic/tf2_geometry_msgs/0.5.15-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/orocos_kdl
    ros-kinetic/geometry_msgs
    ros-kinetic/python_orocos_kdl
    ros-kinetic/tf2_ros
    ros-kinetic/tf2

"
DEPEND="${RDEPEND}
    ros-kinetic/orocos_kdl
    ros-kinetic/geometry_msgs
    ros-kinetic/python_orocos_kdl
    ros-kinetic/tf2_ros
    ros-kinetic/tf2

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

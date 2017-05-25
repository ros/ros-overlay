# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://www.ros.org/wiki/tf_conversions"
SRC_URI="https://github.com/ros-gbp/geometry-release/archive/release/kinetic/tf_conversions/1.11.8-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/eigen
    ros-kinetic/kdl_conversions
    ros-kinetic/geometry_msgs
    ros-kinetic/tf
    ros-kinetic/orocos_kdl
    ros-kinetic/python_orocos_kdl

"
DEPEND="${RDEPEND}
    ros-kinetic/eigen
    ros-kinetic/kdl_conversions
    ros-kinetic/cmake_modules
    ros-kinetic/geometry_msgs
    ros-kinetic/tf
    ros-kinetic/orocos_kdl

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

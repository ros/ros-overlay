# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/hector_pose_estimation_core"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_localization-release/archive/release/kinetic/hector_pose_estimation_core/0.3.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/nav_msgs
    ros-kinetic/rosconsole
    ros-kinetic/roscpp
    ros-kinetic/geographic_msgs
    ros-kinetic/rostime
    ros-kinetic/sensor_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/tf
    ros-kinetic/eigen

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/rosconsole
    ros-kinetic/roscpp
    ros-kinetic/geographic_msgs
    ros-kinetic/rostime
    ros-kinetic/sensor_msgs
    ros-kinetic/cmake_modules
    ros-kinetic/geometry_msgs
    ros-kinetic/tf
    ros-kinetic/eigen

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

# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="hector_pose_estimation_core is the core package of the hector_localization stack. It contains the Extended Kalman Filter (EKF)
    that estimates the 6DOF pose of the robot. hector_pose_estimation can be used either as a library, as a nodelet or as a standalone node."
HOMEPAGE="http://ros.org/wiki/hector_pose_estimation_core"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_localization-release/archive/release/kinetic/hector_pose_estimation_core/0.3.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/geographic_msgs
    ros-kinetic/rostime
    ros-kinetic/rosconsole
    ros-kinetic/sensor_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    dev-cpp/eigen
"
DEPEND="
    ros-kinetic/geographic_msgs
    ros-kinetic/rostime
    ros-kinetic/rosconsole
    ros-kinetic/cmake_modules
    ros-kinetic/sensor_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    dev-cpp/eigen
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

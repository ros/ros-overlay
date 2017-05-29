# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The hector_localization stack is a collection of packages, that provide the full 6DOF pose of a robot or platform.
    It uses various sensor sources, which are fused using an Extended Kalman filter.

    Acceleration and angular rates from an inertial measurement unit (IMU) serve as primary measurements.
    The usage of other sensors is application-dependent. The hector_localization stack currently supports
    GPS, magnetometer, barometric pressure sensors and other external sources that provide a geometry_msgs/PoseWithCovariance
    message via the poseupdate topic."
HOMEPAGE="http://ros.org/wiki/hector_localization"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_localization-release/archive/release/kinetic/hector_localization/0.3.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/hector_pose_estimation
    ros-kinetic/message_to_tf
    ros-kinetic/hector_pose_estimation_core
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    cd ../../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
    rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
}

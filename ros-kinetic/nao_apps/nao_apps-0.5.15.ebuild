# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Applications for NAO using the NAOqi API"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/nao_robot-release/archive/release/kinetic/nao_apps/0.5.15-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rospy
    ros-kinetic/naoqi_driver_py
    ros-kinetic/std_srvs
    ros-kinetic/humanoid_nav_msgs
    ros-kinetic/naoqi_driver
    ros-kinetic/diagnostic_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/naoqi_bridge_msgs
    ros-kinetic/naoqi_pose
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/naoqi_bridge
    ros-kinetic/actionlib
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

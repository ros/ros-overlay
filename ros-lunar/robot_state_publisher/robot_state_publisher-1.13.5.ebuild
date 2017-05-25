# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/robot_state_publisher"
SRC_URI="https://github.com/ros-gbp/robot_state_publisher-release/archive/release/lunar/robot_state_publisher/1.13.5-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/rosconsole
    ros-lunar/catkin
    ros-lunar/sensor_msgs
    ros-lunar/rostime
    ros-lunar/kdl_parser
    ros-lunar/tf2_kdl
    ros-lunar/tf2_ros
    ros-lunar/tf
    ros-lunar/orocos_kdl
    ros-lunar/roscpp
    eigen
"
DEPEND="
    ros-lunar/rosconsole
    ros-lunar/sensor_msgs
    ros-lunar/rostime
    ros-lunar/kdl_parser
    ros-lunar/tf2_kdl
    ros-lunar/rostest
    ros-lunar/tf2_ros
    ros-lunar/tf
    ros-lunar/orocos_kdl
    ros-lunar/roscpp
    eigen
    liburdfdom-headers-dev
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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/lunar" || die
}

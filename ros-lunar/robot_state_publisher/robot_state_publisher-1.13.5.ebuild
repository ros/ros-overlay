# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/robot_state_publisher"
SRC_URI="https://github.com/ros-gbp/robot_state_publisher-release/archive/release/lunar/robot_state_publisher/1.13.5-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/sensor_msgs
    ros-lunar/rostime
    ros-lunar/orocos_kdl
    ros-lunar/tf
    ros-lunar/tf2_kdl
    ros-lunar/tf2_ros
    ros-lunar/kdl_parser
    ros-lunar/rosconsole
    ros-lunar/roscpp
    ros-lunar/catkin
    dev-cpp/eigen
"
DEPEND="${RDEPEND}
    ros-lunar/rostest
    dev-libs/urdfdom_headers
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

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
    source /${ROS_PREFIX}/setup.bash
    /usr/bin/catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e ${D}/${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}

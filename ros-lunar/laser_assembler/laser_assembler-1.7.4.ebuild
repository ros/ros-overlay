# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Provides nodes to assemble point clouds from either LaserScan or PointCloud messages"
HOMEPAGE="http://ros.org/wiki/laser_assembler"
SRC_URI="https://github.com/ros-gbp/laser_assembler-release/archive/release/lunar/laser_assembler/1.7.4-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/sensor_msgs
    ros-lunar/filters
    ros-lunar/tf
    ros-lunar/roscpp
    ros-lunar/message_runtime
    ros-lunar/pluginlib
    ros-lunar/message_filters
    ros-lunar/laser_geometry
"
DEPEND="${RDEPEND}
    ros-lunar/rostest
    ros-lunar/message_generation
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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
    rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
}

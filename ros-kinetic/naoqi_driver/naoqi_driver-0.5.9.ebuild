# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Driver module between Aldebaran's NAOqiOS and ROS. It publishes all sensor and a"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/naoqi_driver-release/archive/release/kinetic/naoqi_driver/0.5.9-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/kdl_parser
    ros-kinetic/rosbag_storage
    ros-kinetic/orocos_kdl
    ros-kinetic/cv_bridge
    ros-kinetic/image_transport
    ros-kinetic/naoqi_libqicore
    ros-kinetic/robot_state_publisher
    ros-kinetic/tf2_ros
    ros-kinetic/naoqi_bridge_msgs
    ros-kinetic/naoqi_libqi
    dev-libs/boost
"
DEPEND="${RDEPEND}
    ros-kinetic/diagnostic_updater
    ros-kinetic/diagnostic_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/tf2_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/tf2_geometry_msgs
    ros-kinetic/rosgraph_msgs
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
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e ${D}/${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}

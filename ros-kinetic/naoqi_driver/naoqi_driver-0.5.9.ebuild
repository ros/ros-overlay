# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Driver module between Aldebaran's NAOqiOS and ROS. It publishes all sensor and a"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/naoqi_driver-release/archive/release/kinetic/naoqi_driver/0.5.9-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/cv_bridge
    ros-kinetic/image_transport
    ros-kinetic/kdl_parser
    ros-kinetic/naoqi_bridge_msgs
    ros-kinetic/naoqi_libqi
    ros-kinetic/naoqi_libqicore
    ros-kinetic/orocos_kdl
    ros-kinetic/robot_state_publisher
    ros-kinetic/rosbag_storage
    ros-kinetic/tf2_ros
    dev-libs/boost
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/diagnostic_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/geometry_msgs
    ros-kinetic/rosgraph_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/tf2_geometry_msgs
    ros-kinetic/tf2_msgs
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}

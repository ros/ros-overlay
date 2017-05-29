# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="jsk interactive markers"
HOMEPAGE="http://ros.org/wiki/interactive_marker"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_interactive_marker/2.1.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/jsk_footstep_msgs
    ros-kinetic/jsk_topic_tools
    ros-kinetic/dynamic_tf_publisher
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/roseus
    ros-kinetic/geometry_msgs
    ros-kinetic/jsk_recognition_msgs
    ros-kinetic/urdf
    ros-kinetic/message_runtime
    ros-kinetic/actionlib
    ros-kinetic/interactive_markers
    ros-kinetic/tf_conversions
    ros-kinetic/jsk_rviz_plugins
    ros-kinetic/rviz
    ros-kinetic/message_filters
    ros-kinetic/roslib
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/moveit_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/eigen_conversions
    dev-cpp/yaml-cpp
    dev-libs/tinyxml
"
DEPEND="${RDEPEND}
    ros-kinetic/rosbuild
    ros-kinetic/mk
    ros-kinetic/cmake_modules
    ros-kinetic/message_generation
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
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}

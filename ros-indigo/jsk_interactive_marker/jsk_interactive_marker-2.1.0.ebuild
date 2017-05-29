# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="jsk interactive markers"
HOMEPAGE="http://ros.org/wiki/interactive_marker"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/indigo/jsk_interactive_marker/2.1.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/jsk_footstep_msgs
    ros-indigo/jsk_topic_tools
    ros-indigo/dynamic_tf_publisher
    ros-indigo/roscpp
    ros-indigo/tf
    ros-indigo/pr2eus_moveit
    ros-indigo/roseus
    ros-indigo/geometry_msgs
    ros-indigo/jsk_recognition_msgs
    ros-indigo/urdf
    ros-indigo/message_runtime
    ros-indigo/actionlib
    ros-indigo/interactive_markers
    ros-indigo/tf_conversions
    ros-indigo/jsk_rviz_plugins
    ros-indigo/rviz
    ros-indigo/message_filters
    ros-indigo/roslib
    ros-indigo/dynamic_reconfigure
    ros-indigo/moveit_msgs
    ros-indigo/visualization_msgs
    ros-indigo/sensor_msgs
    ros-indigo/eigen_conversions
    dev-cpp/yaml-cpp
    dev-libs/tinyxml
"
DEPEND="${RDEPEND}
    ros-indigo/rosbuild
    ros-indigo/mk
    ros-indigo/cmake_modules
    ros-indigo/message_generation
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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

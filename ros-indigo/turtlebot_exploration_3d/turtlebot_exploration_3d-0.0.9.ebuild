# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Autonomous Exploration package for a Turtulebot equiped with RGBD Sensor(Kinect,"
HOMEPAGE="http://wiki.ros.org/turtlebot_exploration_3d"
SRC_URI="https://github.com/RobustFieldAutonomyLab/turtlebot_exploration_3d-release/archive/release/indigo/turtlebot_exploration_3d/0.0.9-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/actionlib
    ros-indigo/move_base_msgs
    ros-indigo/octomap_rviz_plugins
    ros-indigo/turtlebot_navigation
    ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/geometry_msgs
    ros-indigo/octomap_msgs
    ros-indigo/octomap_ros
    ros-indigo/pcl_ros
    ros-indigo/roscpp
    ros-indigo/std_msgs
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}

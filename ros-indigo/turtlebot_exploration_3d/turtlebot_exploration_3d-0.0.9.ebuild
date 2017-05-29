# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Autonomous Exploration package for a Turtulebot equiped with RGBD Sensor(Kinect,"
HOMEPAGE="http://wiki.ros.org/turtlebot_exploration_3d"
SRC_URI="https://github.com/RobustFieldAutonomyLab/turtlebot_exploration_3d-release/archive/release/indigo/turtlebot_exploration_3d/0.0.9-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/turtlebot_navigation
    ros-indigo/octomap_rviz_plugins
    ros-indigo/visualization_msgs
    ros-indigo/move_base_msgs
    ros-indigo/actionlib
"
DEPEND="${RDEPEND}
    ros-indigo/octomap_msgs
    ros-indigo/geometry_msgs
    ros-indigo/std_msgs
    ros-indigo/pcl_ros
    ros-indigo/roscpp
    ros-indigo/octomap_ros
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

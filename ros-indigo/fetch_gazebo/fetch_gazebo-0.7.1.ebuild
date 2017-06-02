# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Gazebo package for Fetch."
HOMEPAGE="http://ros.org/wiki/fetch_gazebo"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/indigo/fetch_gazebo/0.7.1-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/actionlib
    ros-indigo/control_toolbox
    ros-indigo/depth_image_proc
    ros-indigo/fetch_description
    ros-indigo/gazebo_plugins
    ros-indigo/gazebo_ros
    ros-indigo/geometry_msgs
    ros-indigo/image_proc
    ros-indigo/nodelet
    ros-indigo/rgbd_launch
    ros-indigo/robot_controllers
    ros-indigo/robot_controllers_interface
    ros-indigo/trajectory_msgs
    ros-indigo/xacro
"
DEPEND="${RDEPEND}
    ros-indigo/angles
    ros-indigo/catkin
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

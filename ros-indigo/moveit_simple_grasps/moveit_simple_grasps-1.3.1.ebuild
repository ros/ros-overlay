# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A basic grasp generator for simple objects such as blocks or cylinders for use w"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/moveit_simple_grasps-release/archive/release/indigo/moveit_simple_grasps/1.3.1-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/actionlib_msgs
    ros-indigo/geometry_msgs
    ros-indigo/message_runtime
    ros-indigo/moveit_msgs
    ros-indigo/moveit_visual_tools
    ros-indigo/std_msgs
    ros-indigo/trajectory_msgs
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-indigo/actionlib
    ros-indigo/catkin
    ros-indigo/cmake_modules
    ros-indigo/eigen_conversions
    ros-indigo/message_generation
    ros-indigo/moveit_core
    ros-indigo/moveit_ros_planning
    ros-indigo/moveit_ros_planning_interface
    ros-indigo/roscpp
    ros-indigo/tf
    ros-indigo/tf_conversions
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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    if [[ ! -d ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages ]]; then
        mkdir -p ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages
    fi

    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}

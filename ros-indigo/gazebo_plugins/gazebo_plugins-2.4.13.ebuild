# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/indigo/gazebo_plugins/2.4.13-0.tar.gz"

LICENSE="BSD, Apache 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/rostest
    ros-indigo/polled_camera
    ros-indigo/roscpp
    ros-indigo/driver_base
    ros-indigo/nodelet
    ros-indigo/tf
    ros-indigo/std_srvs
    ros-indigo/camera_info_manager
    ros-indigo/geometry_msgs
    ros-indigo/std_msgs
    ros-indigo/urdf
    ros-indigo/tf2_ros
    ros-indigo/image_transport
    ros-indigo/rosconsole
    ros-indigo/nav_msgs
    ros-indigo/dynamic_reconfigure
    ros-indigo/gazebo_msgs
    ros-indigo/cv_bridge
    ros-indigo/rosgraph_msgs
    ros-indigo/rospy
    ros-indigo/trajectory_msgs
    ros-indigo/gazebo_ros
    ros-indigo/sensor_msgs
    ros-indigo/message_generation
    ros-indigo/angles
    sci-electronics/gazebo
"
DEPEND="${RDEPEND}
    ros-indigo/diagnostic_updater
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

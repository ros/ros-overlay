# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_plugins/2.5.12-0.tar.gz"

LICENSE="BSD, Apache 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/angles
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/camera_info_manager
    ros-kinetic/gazebo_msgs
    ros-kinetic/rospy
    ros-kinetic/nav_msgs
    ros-kinetic/message_generation
    ros-kinetic/tf2_ros
    ros-kinetic/rostest
    ros-kinetic/urdf
    ros-kinetic/image_transport
    ros-kinetic/cv_bridge
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/rosgraph_msgs
    ros-kinetic/nodelet
    ros-kinetic/rosconsole
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/trajectory_msgs
    ros-kinetic/polled_camera
    ros-kinetic/gazebo_ros
    sci-electronics/gazebo
"
DEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/angles
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/camera_info_manager
    ros-kinetic/gazebo_msgs
    ros-kinetic/rospy
    ros-kinetic/diagnostic_updater
    ros-kinetic/nav_msgs
    ros-kinetic/message_generation
    ros-kinetic/tf2_ros
    ros-kinetic/rostest
    ros-kinetic/urdf
    ros-kinetic/image_transport
    ros-kinetic/cv_bridge
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/rosgraph_msgs
    ros-kinetic/nodelet
    ros-kinetic/rosconsole
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/trajectory_msgs
    ros-kinetic/polled_camera
    sci-electronics/gazebo
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

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
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}

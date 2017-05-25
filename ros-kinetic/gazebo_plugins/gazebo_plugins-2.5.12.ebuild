# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_plugins/2.5.12-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rosconsole
    ros-kinetic/urdf
    ros-kinetic/polled_camera
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/rostest
    ros-kinetic/tf2_ros
    ros-kinetic/message_generation
    ros-kinetic/nodelet
    ros-kinetic/libgazebo7-dev
    ros-kinetic/rosgraph_msgs
    ros-kinetic/trajectory_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/gazebo_msgs
    ros-kinetic/image_transport
    ros-kinetic/tf
    ros-kinetic/rospy
    ros-kinetic/angles
    ros-kinetic/std_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/gazebo_ros
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/std_srvs
    ros-kinetic/camera_info_manager
    ros-kinetic/geometry_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/rosconsole
    ros-kinetic/urdf
    ros-kinetic/diagnostic_updater
    ros-kinetic/polled_camera
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/rostest
    ros-kinetic/tf2_ros
    ros-kinetic/message_generation
    ros-kinetic/nodelet
    ros-kinetic/libgazebo7-dev
    ros-kinetic/rosgraph_msgs
    ros-kinetic/trajectory_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/gazebo_msgs
    ros-kinetic/image_transport
    ros-kinetic/tf
    ros-kinetic/rospy
    ros-kinetic/angles
    ros-kinetic/std_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/std_srvs
    ros-kinetic/camera_info_manager
    ros-kinetic/geometry_msgs

"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

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
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}

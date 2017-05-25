# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/lunar/gazebo_plugins/2.7.2-0.tar.gz"

LICENSE="BSD, Apache 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/rosconsole
    ros-lunar/trajectory_msgs
    ros-lunar/diagnostic_updater
    ros-lunar/polled_camera
    ros-lunar/nav_msgs
    ros-lunar/roscpp
    ros-lunar/tf2_ros
    ros-lunar/tf
    ros-lunar/nodelet
    ros-lunar/dynamic_reconfigure
    ros-lunar/urdf
    ros-lunar/sensor_msgs
    ros-lunar/message_runtime
    ros-lunar/gazebo_msgs
    ros-lunar/image_transport
    ros-lunar/rospy
    ros-lunar/angles
    ros-lunar/std_msgs
    ros-lunar/cv_bridge
    ros-lunar/rosgraph_msgs
    ros-lunar/std_srvs
    ros-lunar/gazebo_dev
    ros-lunar/camera_info_manager
    ros-lunar/geometry_msgs
"
DEPEND="
    ros-lunar/rosconsole
    ros-lunar/urdf
    ros-lunar/diagnostic_updater
    ros-lunar/polled_camera
    ros-lunar/nav_msgs
    ros-lunar/roscpp
    ros-lunar/tf2_ros
    ros-lunar/tf
    ros-lunar/nodelet
    ros-lunar/dynamic_reconfigure
    ros-lunar/trajectory_msgs
    ros-lunar/gazebo_msgs
    ros-lunar/sensor_msgs
    ros-lunar/image_transport
    ros-lunar/message_generation
    ros-lunar/rospy
    ros-lunar/angles
    ros-lunar/std_msgs
    ros-lunar/cv_bridge
    ros-lunar/rosgraph_msgs
    ros-lunar/std_srvs
    ros-lunar/gazebo_dev
    ros-lunar/camera_info_manager
    ros-lunar/geometry_msgs
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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/lunar" || die
}

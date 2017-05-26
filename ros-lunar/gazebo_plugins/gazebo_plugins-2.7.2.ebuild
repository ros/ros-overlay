# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/lunar/gazebo_plugins/2.7.2-0.tar.gz"

LICENSE="BSD, Apache 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/dynamic_reconfigure
    ros-lunar/rosconsole
    ros-lunar/nodelet
    ros-lunar/std_srvs
    ros-lunar/geometry_msgs
    ros-lunar/std_msgs
    ros-lunar/diagnostic_updater
    ros-lunar/sensor_msgs
    ros-lunar/gazebo_msgs
    ros-lunar/gazebo_dev
    ros-lunar/trajectory_msgs
    ros-lunar/roscpp
    ros-lunar/rospy
    ros-lunar/tf
    ros-lunar/message_runtime
    ros-lunar/polled_camera
    ros-lunar/camera_info_manager
    ros-lunar/urdf
    ros-lunar/cv_bridge
    ros-lunar/rosgraph_msgs
    ros-lunar/image_transport
    ros-lunar/nav_msgs
    ros-lunar/tf2_ros
    ros-lunar/angles
"
DEPEND="${RDEPEND}
    ros-lunar/message_generation
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
    cd ../../work
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="${D}" || die
}

pkg_postinst() {
    cd ${D}
    cp -R lib* /opt/ros/lunar
    cp -R share /opt/ros/lunar
    cp -R bin /opt/ros/lunar
    cp -R include /opt/ros/lunar
}

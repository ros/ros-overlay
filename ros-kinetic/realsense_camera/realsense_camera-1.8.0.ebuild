# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/intel-ros/realsense-release/archive/release/kinetic/realsense_camera/1.8.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/librealsense
    ros-kinetic/boost
    ros-kinetic/message_runtime
    ros-kinetic/roscpp
    ros-kinetic/cv_bridge
    ros-kinetic/camera_info_manager
    ros-kinetic/std_msgs
    ros-kinetic/image_transport
    ros-kinetic/sensor_msgs
    ros-kinetic/tf
    ros-kinetic/rostest
    ros-kinetic/rgbd_launch
    ros-kinetic/message_generation
    ros-kinetic/nodelet
    ros-kinetic/pcl_ros

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/librealsense
    ros-kinetic/boost
    ros-kinetic/roscpp
    ros-kinetic/cv_bridge
    ros-kinetic/camera_info_manager
    ros-kinetic/std_msgs
    ros-kinetic/image_transport
    ros-kinetic/roslint
    ros-kinetic/message_generation
    ros-kinetic/rostest
    ros-kinetic/tf
    ros-kinetic/sensor_msgs
    ros-kinetic/nodelet
    ros-kinetic/pcl_ros

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

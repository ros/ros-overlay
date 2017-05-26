# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="RealSense Camera package allowing access to Intel 3D cameras and advanced modules"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/intel-ros/realsense-release/archive/release/kinetic/realsense_camera/1.8.0-0.tar.gz"

LICENSE="BSD 3-clause. See license attached"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/pcl_ros
    ros-kinetic/librealsense
    ros-kinetic/nodelet
    ros-kinetic/image_transport
    ros-kinetic/sensor_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/roscpp
    ros-kinetic/camera_info_manager
    ros-kinetic/tf
    ros-kinetic/message_generation
    ros-kinetic/std_msgs
    ros-kinetic/rostest
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/message_runtime
    ros-kinetic/rgbd_launch
    dev-libs/boost
"
DEPEND="
    ros-kinetic/pcl_ros
    ros-kinetic/librealsense
    ros-kinetic/nodelet
    ros-kinetic/image_transport
    ros-kinetic/roslint
    ros-kinetic/sensor_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/roscpp
    ros-kinetic/camera_info_manager
    ros-kinetic/tf
    ros-kinetic/message_generation
    ros-kinetic/std_msgs
    ros-kinetic/rostest
    ros-kinetic/dynamic_reconfigure
    dev-libs/boost
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

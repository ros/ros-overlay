# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A ROS driver for OpenNI depth (+ RGB) cameras. These include: 
       Microsoft Kinect,
       PrimeSense PSDK,
       ASUS Xtion Pro and Pro Live

    The driver publishes raw depth, RGB, and IR image streams."
HOMEPAGE="http://www.ros.org/wiki/openni_camera"
SRC_URI="https://github.com/ros-gbp/openni_camera-release/archive/release/kinetic/openni_camera/1.9.5-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/nodelet
    ros-kinetic/image_transport
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/camera_info_manager
    ros-kinetic/dynamic_reconfigure
    dev-libs/log4cxx
    dev-libs/OpenNI
    =dev-libs/libusb-1.0*
"
DEPEND="
    ros-kinetic/nodelet
    ros-kinetic/image_transport
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/camera_info_manager
    ros-kinetic/dynamic_reconfigure
    dev-libs/log4cxx
    dev-libs/OpenNI
    =dev-libs/libusb-1.0*
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

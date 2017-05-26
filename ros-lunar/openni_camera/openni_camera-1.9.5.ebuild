# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A ROS driver for OpenNI depth (+ RGB) cameras. These include: 
       Microsoft Kinect,
       PrimeSense PSDK,
       ASUS Xtion Pro and Pro Live

    The driver publishes raw depth, RGB, and IR image streams."
HOMEPAGE="http://www.ros.org/wiki/openni_camera"
SRC_URI="https://github.com/ros-gbp/openni_camera-release/archive/release/lunar/openni_camera/1.9.5-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/roscpp
    ros-lunar/dynamic_reconfigure
    ros-lunar/image_transport
    ros-lunar/nodelet
    ros-lunar/camera_info_manager
    ros-lunar/sensor_msgs
    =dev-libs/libusb-1.0*
    dev-libs/OpenNi
    dev-libs/log4cxx
"
DEPEND="${RDEPEND}
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

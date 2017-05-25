# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/pointgrey_camera_driver"
SRC_URI="https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/kinetic/pointgrey_camera_driver/0.13.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/image_exposure_msgs
    ros-kinetic/image_proc
    ros-kinetic/roscpp
    ros-kinetic/libraw1394-dev
    ros-kinetic/camera_info_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/diagnostic_updater
    ros-kinetic/wfov_camera_msgs
    ros-kinetic/libusb-1.0-dev
    ros-kinetic/stereo_image_proc
    ros-kinetic/nodelet

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/image_exposure_msgs
    ros-kinetic/roscpp
    ros-kinetic/libraw1394-dev
    ros-kinetic/camera_info_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/diagnostic_updater
    ros-kinetic/wfov_camera_msgs
    ros-kinetic/libusb-1.0-dev
    ros-kinetic/curl
    ros-kinetic/nodelet
    ros-kinetic/dpkg

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

# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Contains nodelets for processing depth images such as those
     produced by OpenNI camera. Functions include creating disparity
     images and point clouds, as well as registering (reprojecting)
     a depth image into another camera frame."
HOMEPAGE="http://ros.org/wiki/depth_image_proc"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/depth_image_proc/1.12.20-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/image_geometry
    ros-lunar/nodelet
    ros-lunar/image_transport
    ros-lunar/eigen_conversions
    ros-lunar/tf2_ros
    ros-lunar/cv_bridge
    ros-lunar/tf2
    boost
"
DEPEND="
    ros-lunar/image_geometry
    ros-lunar/stereo_msgs
    ros-lunar/message_filters
    ros-lunar/nodelet
    ros-lunar/sensor_msgs
    ros-lunar/image_transport
    ros-lunar/eigen_conversions
    ros-lunar/cmake_modules
    ros-lunar/tf2_ros
    ros-lunar/cv_bridge
    ros-lunar/tf2
    boost
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

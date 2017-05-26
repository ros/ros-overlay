# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="cv_camera uses OpenCV capture object to capture camera image.
  This supports camera_image and nodelet."
HOMEPAGE="http://wiki.ros.org/cv_camera"
SRC_URI="https://github.com/OTL/cv_camera-release/archive/release/kinetic/cv_camera/0.1.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/nodelet
    ros-kinetic/image_transport
    ros-kinetic/sensor_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/roscpp
    ros-kinetic/camera_info_manager
    media-libs/opencv
"
DEPEND="
    ros-kinetic/nodelet
    ros-kinetic/image_transport
    ros-kinetic/roslint
    ros-kinetic/sensor_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/roscpp
    ros-kinetic/camera_info_manager
    ros-kinetic/rostest
    media-libs/opencv
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

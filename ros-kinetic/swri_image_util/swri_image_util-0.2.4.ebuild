# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="swri_image_util"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_image_util/0.2.4-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rospy
    ros-kinetic/camera_calibration_parsers
    ros-kinetic/image_transport
    ros-kinetic/nodelet
    ros-kinetic/swri_math_util
    ros-kinetic/message_filters
    ros-kinetic/cv_bridge
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/swri_opencv_util
    ros-kinetic/image_geometry
    dev-qt/qtgui
    dev-cpp/eigen
    dev-qt/qtopengl
"
DEPEND="
    ros-kinetic/rospy
    ros-kinetic/camera_calibration_parsers
    ros-kinetic/image_transport
    ros-kinetic/nodelet
    ros-kinetic/swri_math_util
    ros-kinetic/message_filters
    ros-kinetic/cv_bridge
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/swri_opencv_util
    ros-kinetic/image_geometry
    dev-qt/qtgui
    dev-cpp/eigen
    dev-qt/qtopengl
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

# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tuw-robotics/tuw_marker_detection-release/archive/release/kinetic/tuw_ellipses/0.0.7-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/image_geometry
    ros-kinetic/roscpp
    ros-kinetic/cv_bridge
    ros-kinetic/image_transport
    ros-kinetic/marker_msgs
    ros-kinetic/rospy
    ros-kinetic/tf
    ros-kinetic/nodelet

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/image_geometry
    ros-kinetic/eigen
    ros-kinetic/cv_bridge
    ros-kinetic/image_transport
    ros-kinetic/marker_msgs
    ros-kinetic/cmake_modules
    ros-kinetic/rospy
    ros-kinetic/tf
    ros-kinetic/nodelet
    ros-kinetic/roscpp

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

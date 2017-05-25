# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://bitbucket.org/crl/multisense_ros"
SRC_URI="https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/kinetic/multisense_ros/4.0.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/image_geometry
    ros-kinetic/genmsg
    ros-kinetic/roscpp
    ros-kinetic/stereo_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/sensor_msgs
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/libturbojpeg
    ros-kinetic/image_transport
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    ros-kinetic/multisense_lib
    ros-kinetic/angles
    ros-kinetic/message_generation
    ros-kinetic/rosbag

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/image_geometry
    ros-kinetic/genmsg
    ros-kinetic/roscpp
    ros-kinetic/stereo_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/sensor_msgs
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/libturbojpeg
    ros-kinetic/image_transport
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    ros-kinetic/multisense_lib
    ros-kinetic/angles
    ros-kinetic/message_generation
    ros-kinetic/rosbag

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

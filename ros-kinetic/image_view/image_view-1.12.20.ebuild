# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://www.ros.org/wiki/image_view"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/image_view/1.12.20-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/rosconsole
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/nodelet
    ros-kinetic/image_transport
    ros-kinetic/gtk2
    ros-kinetic/camera_calibration_parsers
    ros-kinetic/cv_bridge

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/rosconsole
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/nodelet
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/stereo_msgs
    ros-kinetic/gtk2
    ros-kinetic/camera_calibration_parsers
    ros-kinetic/message_generation
    ros-kinetic/cv_bridge

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

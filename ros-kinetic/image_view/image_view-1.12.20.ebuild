# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A simple viewer for ROS image topics. Includes a specialized viewer
  for stereo + disparity images."
HOMEPAGE="http://www.ros.org/wiki/image_view"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/image_view/1.12.20-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/camera_calibration_parsers
    ros-kinetic/image_transport
    ros-kinetic/nodelet
    ros-kinetic/rosconsole
    ros-kinetic/message_filters
    ros-kinetic/cv_bridge
    ros-kinetic/roscpp
    ros-kinetic/dynamic_reconfigure
    x11-libs/gtk+
"
DEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/camera_calibration_parsers
    ros-kinetic/image_transport
    ros-kinetic/nodelet
    ros-kinetic/rosconsole
    ros-kinetic/message_filters
    ros-kinetic/sensor_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/roscpp
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/message_generation
    ros-kinetic/stereo_msgs
    x11-libs/gtk+
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

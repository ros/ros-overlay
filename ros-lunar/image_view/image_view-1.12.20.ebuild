# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A simple viewer for ROS image topics. Includes a specialized viewer
  for stereo + disparity images."
HOMEPAGE="http://www.ros.org/wiki/image_view"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/image_view/1.12.20-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/dynamic_reconfigure
    ros-lunar/rosconsole
    ros-lunar/std_srvs
    ros-lunar/roscpp
    ros-lunar/message_filters
    ros-lunar/nodelet
    ros-lunar/image_transport
    ros-lunar/camera_calibration_parsers
    ros-lunar/cv_bridge
    gtk2
"
DEPEND="
    ros-lunar/dynamic_reconfigure
    ros-lunar/rosconsole
    ros-lunar/std_srvs
    ros-lunar/roscpp
    ros-lunar/message_filters
    ros-lunar/nodelet
    ros-lunar/sensor_msgs
    ros-lunar/image_transport
    ros-lunar/stereo_msgs
    ros-lunar/camera_calibration_parsers
    ros-lunar/message_generation
    ros-lunar/cv_bridge
    gtk2
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

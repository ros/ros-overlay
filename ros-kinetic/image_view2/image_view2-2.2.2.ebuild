# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/image_view2"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/kinetic/image_view2/2.2.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/image_geometry
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/image_view
    ros-kinetic/std_msgs
    ros-kinetic/message_runtime
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/geometry_msgs
    ros-kinetic/tf
    ros-kinetic/cv_bridge
    ros-kinetic/pcl_ros

"
DEPEND="${RDEPEND}
    ros-kinetic/image_geometry
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/image_view
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/tf
    ros-kinetic/rostest
    ros-kinetic/geometry_msgs
    ros-kinetic/message_generation
    ros-kinetic/cv_bridge
    ros-kinetic/pcl_ros

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

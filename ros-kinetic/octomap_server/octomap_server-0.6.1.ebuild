# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/octomap_mapping-release/archive/release/kinetic/octomap_server/0.6.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/nav_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/pcl_conversions
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/octomap_msgs
    ros-kinetic/octomap
    ros-kinetic/octomap_ros
    ros-kinetic/visualization_msgs
    ros-kinetic/std_srvs
    ros-kinetic/nodelet
    ros-kinetic/libpcl-all
    ros-kinetic/pcl_ros

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/pcl_conversions
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/octomap_msgs
    ros-kinetic/octomap
    ros-kinetic/octomap_ros
    ros-kinetic/visualization_msgs
    ros-kinetic/libpcl-all-dev
    ros-kinetic/std_srvs
    ros-kinetic/nodelet
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

# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="octomap_server loads a 3D map (as Octree-based OctoMap) and distributes it to other nodes in a compact binary format. It also allows to incrementally build 3D OctoMaps, and provides map saving in the node octomap_saver."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/octomap_mapping-release/archive/release/kinetic/octomap_server/0.6.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/pcl_ros
    ros-kinetic/pcl_conversions
    ros-kinetic/std_srvs
    ros-kinetic/nodelet
    ros-kinetic/sensor_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/octomap
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/std_msgs
    ros-kinetic/octomap_msgs
    ros-kinetic/octomap_ros
    sci-libs/pcl
"
DEPEND="
    ros-kinetic/pcl_ros
    ros-kinetic/pcl_conversions
    ros-kinetic/std_srvs
    ros-kinetic/nodelet
    ros-kinetic/sensor_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/octomap
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/std_msgs
    ros-kinetic/octomap_msgs
    ros-kinetic/octomap_ros
    sci-libs/pcl
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

# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains a ROS wrapper for OpenSlam's Gmapping. 
  The gmapping package provides laser-based SLAM (Simultaneous Localization and Mapping), 
  as a ROS node called slam_gmapping. Using slam_gmapping, you can create a 2-D occupancy
  grid map (like a building floorplan) from laser and pose data collected by a mobile robot."
HOMEPAGE="http://ros.org/wiki/gmapping"
SRC_URI="https://github.com/ros-gbp/slam_gmapping-release/archive/release/kinetic/gmapping/1.3.8-0.tar.gz"

LICENSE="CreativeCommons-by-nc-sa-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/nav_msgs
    ros-kinetic/openslam_gmapping
"
DEPEND="
    ros-kinetic/roscpp
    ros-kinetic/rostest
    ros-kinetic/tf
    ros-kinetic/nav_msgs
    ros-kinetic/openslam_gmapping
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

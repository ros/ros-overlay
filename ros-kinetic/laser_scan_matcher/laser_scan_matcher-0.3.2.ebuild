# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/laser_scan_matcher"
SRC_URI="https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/laser_scan_matcher/0.3.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( "BSD" "LGPLv3" )"
KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/csm
    ros-kinetic/geometry_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/nodelet
    ros-kinetic/pcl_conversions
    ros-kinetic/pcl_ros
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/tf
    sci-libs/pcl
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    sci-libs/pcl
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}

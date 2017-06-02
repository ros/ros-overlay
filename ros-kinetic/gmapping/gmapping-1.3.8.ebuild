# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains a ROS wrapper for OpenSlam's Gmapping. 
  The gmapping pac"
HOMEPAGE="http://ros.org/wiki/gmapping"
SRC_URI="https://github.com/ros-gbp/slam_gmapping-release/archive/release/kinetic/gmapping/1.3.8-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="CreativeCommons-by-nc-sa-2.0"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/nav_msgs
    ros-kinetic/openslam_gmapping
    ros-kinetic/roscpp
    ros-kinetic/tf
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/rostest
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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}

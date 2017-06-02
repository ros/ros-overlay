# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The cob_collision_velocity_filter package is a package for collision avoidance u"
HOMEPAGE="http://ros.org/wiki/cob_collision_velocity_filter"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/indigo/cob_collision_velocity_filter/0.6.14-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/cob_footprint_observer
    ros-indigo/costmap_2d
    ros-indigo/dynamic_reconfigure
    ros-indigo/geometry_msgs
    ros-indigo/nav_msgs
    ros-indigo/roscpp
    ros-indigo/tf
    ros-indigo/visualization_msgs
    dev-libs/boost
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}

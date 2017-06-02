# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This stack contains all software necessary to build systems using both Orocos an"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_ros_integration/2.9.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( "GPL" "BSD" "LGPL" "GPL + runtime exception" )"
KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/rtt_actionlib
    ros-kinetic/rtt_dynamic_reconfigure
    ros-kinetic/rtt_ros
    ros-kinetic/rtt_ros_msgs
    ros-kinetic/rtt_rosclock
    ros-kinetic/rtt_roscomm
    ros-kinetic/rtt_rosdeployment
    ros-kinetic/rtt_rosnode
    ros-kinetic/rtt_rospack
    ros-kinetic/rtt_rosparam
    ros-kinetic/rtt_tf
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
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
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}

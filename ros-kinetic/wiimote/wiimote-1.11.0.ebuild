# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The wiimote package allows ROS nodes to communicate with a Nintendo Wiimote
    "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/joystick_drivers-release/archive/release/kinetic/wiimote/1.11.0-0.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/geometry_msgs
    ros-kinetic/std_msgs
    ros-kinetic/roslib
    ros-kinetic/genmsg
    ros-kinetic/std_srvs
    ros-kinetic/sensor_msgs
    ros-kinetic/rospy
    dev-python/numpy
    app-misc/cwiid
    app-misc/cwiid
"
DEPEND="${RDEPEND}
    ros-kinetic/roslint
    app-misc/cwiid
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e ${D}/${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}

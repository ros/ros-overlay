# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The summit_xl_localization package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RobotnikAutomation/summit_xl_common-release/archive/release/kinetic/summit_xl_localization/1.1.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/geographic_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/mavros_msgs
    ros-kinetic/message_filters
    ros-kinetic/message_runtime
    ros-kinetic/nav_msgs
    ros-kinetic/robot_localization
    ros-kinetic/robotnik_msgs
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/std_srvs
    ros-kinetic/tf
    ros-kinetic/tf2
    ros-kinetic/tf2_geometry_msgs
    ros-kinetic/tf2_ros
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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}

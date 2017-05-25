# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://pr.willowgarage.com/wiki/roseus"
SRC_URI="https://github.com/tork-a/jsk_roseus-release/archive/release/kinetic/roseus/1.6.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rospack
    ros-kinetic/actionlib_msgs
    ros-kinetic/roscpp
    ros-kinetic/actionlib
    ros-kinetic/geneus
    ros-kinetic/rostest
    ros-kinetic/tf2_ros
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/roslang
    ros-kinetic/std_msgs
    ros-kinetic/message_runtime
    ros-kinetic/sensor_msgs
    ros-kinetic/actionlib_tutorials
    ros-kinetic/jskeus
    ros-kinetic/rosbash
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/std_srvs
    ros-kinetic/euslisp
    ros-kinetic/geometry_msgs
    ros-kinetic/rosmsg
    ros-kinetic/rosnode

"
DEPEND="${RDEPEND}
    ros-kinetic/rospack
    ros-kinetic/actionlib_msgs
    ros-kinetic/roscpp
    ros-kinetic/actionlib
    ros-kinetic/geneus
    ros-kinetic/rosbuild
    ros-kinetic/coreutils
    ros-kinetic/rostest
    ros-kinetic/rostopic
    ros-kinetic/tf2_ros
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/roslang
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/message_generation
    ros-kinetic/actionlib_tutorials
    ros-kinetic/angles
    ros-kinetic/jskeus
    ros-kinetic/rosbash
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/std_srvs
    ros-kinetic/euslisp
    ros-kinetic/mk
    ros-kinetic/geometry_msgs
    ros-kinetic/rosmsg
    ros-kinetic/rosnode

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

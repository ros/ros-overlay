# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://plasmodic.github.io/ecto_ros"
SRC_URI="https://github.com/ros-gbp/ecto_ros-release/archive/release/kinetic/ecto_ros/0.4.8-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/eigen
    ros-kinetic/rosbag
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/message_generation
    ros-kinetic/ecto
    ros-kinetic/cv_bridge
    ros-kinetic/roscpp

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/eigen
    ros-kinetic/std_msgs
    ros-kinetic/rosbag
    ros-kinetic/sensor_msgs
    ros-kinetic/cmake_modules
    ros-kinetic/geometry_msgs
    ros-kinetic/rosmsg
    ros-kinetic/message_generation
    ros-kinetic/ecto
    ros-kinetic/cv_bridge
    ros-kinetic/roscpp

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

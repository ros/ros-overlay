# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/pepper_virtual-release/archive/release/kinetic/pepper_gazebo_plugin/0.0.3-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/ros_control
    ros-kinetic/gazebo_ros_control
    ros-kinetic/pepper_control
    ros-kinetic/pepper_description
    ros-kinetic/ros_controllers
    ros-kinetic/gazebo_plugins
    ros-kinetic/gazebo_ros

"
DEPEND="${RDEPEND}
    ros-kinetic/gazebo_ros
    ros-kinetic/pepper_description

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

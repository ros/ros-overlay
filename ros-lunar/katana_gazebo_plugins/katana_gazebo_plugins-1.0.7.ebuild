# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package provides Gazebo plugins to simulate the Katana arm."
HOMEPAGE="http://ros.org/wiki/katana_gazebo_plugins"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana_gazebo_plugins/1.0.7-0.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/control_toolbox
    ros-lunar/trajectory_msgs
    ros-lunar/sensor_msgs
    ros-lunar/gazebo_ros
    ros-lunar/actionlib
    ros-lunar/control_msgs
    ros-lunar/katana_msgs
"
DEPEND="
    ros-lunar/control_toolbox
    ros-lunar/trajectory_msgs
    ros-lunar/sensor_msgs
    ros-lunar/gazebo_ros
    ros-lunar/actionlib
    ros-lunar/control_msgs
    ros-lunar/katana_msgs
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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/lunar" || die
}

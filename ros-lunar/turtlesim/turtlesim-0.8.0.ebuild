# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="turtlesim is a tool made for teaching ROS and ROS packages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_tutorials-release/archive/release/lunar/turtlesim/0.8.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/rosconsole
    ros-lunar/roslib
    ros-lunar/std_srvs
    ros-lunar/roscpp
    ros-lunar/std_msgs
    ros-lunar/message_runtime
    ros-lunar/rostime
    ros-lunar/roscpp_serialization
    ros-lunar/geometry_msgs
    libqt5-gui
    libqt5-core
"
DEPEND="
    ros-lunar/rosconsole
    ros-lunar/std_srvs
    ros-lunar/roscpp
    ros-lunar/std_msgs
    ros-lunar/rostime
    ros-lunar/roslib
    ros-lunar/roscpp_serialization
    ros-lunar/geometry_msgs
    ros-lunar/message_generation
    qt5-qmake
    qtbase5-dev
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

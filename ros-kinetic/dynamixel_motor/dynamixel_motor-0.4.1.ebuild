# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This stack contains packages that are used to interface with Robotis
    Dynamixel line of servo motors. This stack was tested with and fully
    supports AX-12, AX-18, RX-24, RX-28, MX-28, RX-64, MX-64, EX-106 and
    MX-106 models."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/arebgun/dynamixel_motor-release/archive/release/kinetic/dynamixel_motor/0.4.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/dynamixel_controllers
    ros-kinetic/dynamixel_msgs
    ros-kinetic/dynamixel_tutorials
    ros-kinetic/dynamixel_driver
"
DEPEND="${RDEPEND}
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
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}"
    rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
    rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
}

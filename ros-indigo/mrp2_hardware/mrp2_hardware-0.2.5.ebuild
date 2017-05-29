# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Hardware files to communicate with MRP2 base."
HOMEPAGE="http://wiki.ros.org/mrp2_hardware"
SRC_URI="https://github.com/milvusrobotics/mrp2_robot-release/archive/release/indigo/mrp2_hardware/0.2.5-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/rospy
    ros-indigo/std_srvs
    ros-indigo/nav_msgs
    ros-indigo/dynamic_reconfigure
    ros-indigo/realtime_tools
    ros-indigo/controller_interface
    ros-indigo/hardware_interface
    ros-indigo/std_msgs
    ros-indigo/sensor_msgs
    ros-indigo/controller_manager
    ros-indigo/roscpp
    ros-indigo/urdf
    ros-indigo/tf
    =dev-libs/libusb-1.0*
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}

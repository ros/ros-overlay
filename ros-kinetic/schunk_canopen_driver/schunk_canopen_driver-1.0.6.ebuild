# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The schunk_canopen_driver package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fzi-forschungszentrum-informatik/schunk_canopen_driver-release/archive/release/kinetic/schunk_canopen_driver/1.0.6-0.tar.gz"

LICENSE="FZI all rights reserved"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/hardware_interface
    ros-kinetic/joint_limits_interface
    ros-kinetic/std_srvs
    ros-kinetic/xacro
    ros-kinetic/ros_controllers
    ros-kinetic/fzi_icl_core
    ros-kinetic/controller_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/message_runtime
    ros-kinetic/control_msgs
    ros-kinetic/fzi_icl_can
    ros-kinetic/std_msgs
    ros-kinetic/urdf
    ros-kinetic/robot_state_publisher
    ros-kinetic/actionlib
"
DEPEND="
    ros-kinetic/hardware_interface
    ros-kinetic/joint_limits_interface
    ros-kinetic/std_srvs
    ros-kinetic/fzi_icl_core
    ros-kinetic/controller_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/control_msgs
    ros-kinetic/fzi_icl_can
    ros-kinetic/message_generation
    ros-kinetic/std_msgs
    ros-kinetic/urdf
    ros-kinetic/actionlib
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
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}

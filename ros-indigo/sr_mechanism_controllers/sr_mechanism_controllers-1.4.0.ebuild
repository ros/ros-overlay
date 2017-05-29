# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The sr_mechanism_controllers package contains different types of
     controller"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/sr-ros-interface-release/archive/release/indigo/sr_mechanism_controllers/1.4.0-0.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/rosconsole
    ros-indigo/ros_ethercat_model
    ros-indigo/control_msgs
    ros-indigo/control_toolbox
    ros-indigo/pluginlib
    ros-indigo/std_srvs
    ros-indigo/sr_hardware_interface
    ros-indigo/realtime_tools
    ros-indigo/sr_robot_msgs
    ros-indigo/controller_interface
    ros-indigo/std_msgs
    ros-indigo/controller_manager_msgs
    ros-indigo/velocity_controllers
    ros-indigo/roscpp
    ros-indigo/sr_utilities
    ros-indigo/xmlrpcpp
    ros-indigo/actionlib
    ros-indigo/angles
"
DEPEND="${RDEPEND}
    ros-indigo/rostest
    ros-indigo/cmake_modules
    dev-libs/tinyxml
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

# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Common stacks for Amazon Picking Challenge 2016"
HOMEPAGE="http://wiki.ros.org/jsk_2016_01_baxter_apc"
SRC_URI="https://github.com/tork-a/jsk_apc-release/archive/release/indigo/jsk_2016_01_baxter_apc/3.0.3-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/dynamixel_controllers
    ros-indigo/jsk_interactive_marker
    ros-indigo/jsk_2015_05_baxter_apc
    ros-indigo/jsk_baxter_startup
    ros-indigo/baxter_sim_controllers
    ros-indigo/gazebo_ros
    ros-indigo/controller_manager
    ros-indigo/dynamixel_msgs
    ros-indigo/baxter_gazebo
    ros-indigo/baxter_core_msgs
    ros-indigo/roscpp
    ros-indigo/hardware_interface
    ros-indigo/transmission_interface
    ros-indigo/roseus_mongo
    ros-indigo/rosserial_python
    ros-indigo/std_msgs
    ros-indigo/control_msgs
    ros-indigo/jsk_recognition_msgs
    ros-indigo/baxter_sim_io
    ros-indigo/jsk_apc2016_common
    ros-indigo/jsk_data
"
DEPEND="${RDEPEND}
    ros-indigo/xacro
    ros-indigo/baxter_description
    ros-indigo/euscollada
    ros-indigo/roseus
    ros-indigo/collada_urdf
    dev-lang/ruby
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

# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains configuration for each robot instance (e.g. cob3-1, cob3-2"
HOMEPAGE="http://ros.org/wiki/cob_hardware_config"
SRC_URI="https://github.com/ipa320/cob_robots-release/archive/release/indigo/cob_hardware_config/0.6.6-0.tar.gz"

LICENSE="LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/cob_omni_drive_controller
    ros-indigo/diagnostic_aggregator
    ros-indigo/visualization_msgs
    ros-indigo/rostest
    ros-indigo/prace_common
    ros-indigo/effort_controllers
    ros-indigo/position_controllers
    ros-indigo/ur_description
    ros-indigo/joint_trajectory_controller
    ros-indigo/xacro
    ros-indigo/velocity_controllers
    ros-indigo/roslaunch
    ros-indigo/cob_description
    ros-indigo/raw_description
    ros-indigo/schunk_description
    ros-indigo/cob_calibration_data
    ros-indigo/joint_state_controller
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

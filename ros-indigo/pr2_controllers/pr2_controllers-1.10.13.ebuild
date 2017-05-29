# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Contains the controllers that run in realtime on the PR2 and supporting packages"
HOMEPAGE="http://ros.org/wiki/pr2_controllers"
SRC_URI="https://github.com/pr2-gbp/pr2_controllers-release/archive/release/indigo/pr2_controllers/1.10.13-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/ethercat_trigger_controllers
    ros-indigo/control_toolbox
    ros-indigo/pr2_head_action
    ros-indigo/pr2_gripper_action
    ros-indigo/joint_trajectory_action
    ros-indigo/single_joint_position_action
    ros-indigo/pr2_controllers_msgs
    ros-indigo/pr2_calibration_controllers
    ros-indigo/robot_mechanism_controllers
    ros-indigo/pr2_mechanism_controllers
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

# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The jsk_demo_common package"
HOMEPAGE="http://wiki.ros.org/jsk_demo_common"
SRC_URI="https://github.com/tork-a/jsk_demos-release/archive/release/indigo/jsk_demo_common/0.0.4-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/pr2_navigation_self_filter
    ros-indigo/roseus
    ros-indigo/control_msgs
    ros-indigo/roseus_mongo
    ros-indigo/pr2eus
    ros-indigo/jsk_maps
    ros-indigo/jsk_perception
    ros-indigo/roseus_smach
    ros-indigo/pr2_gripper_sensor_msgs
    ros-indigo/pddl_planner
    ros-indigo/joint_state_publisher
    ros-indigo/robot_state_publisher
    ros-indigo/jsk_hark_msgs
    ros-indigo/message_runtime
"
DEPEND="${RDEPEND}
    ros-indigo/message_generation
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

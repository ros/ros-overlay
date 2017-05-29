# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="turtlebot_bringup provides roslaunch scripts for starting the TurtleBot base fun"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot-release/archive/release/kinetic/turtlebot_bringup/2.4.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/robot_pose_ekf
    ros-kinetic/turtlebot_description
    ros-kinetic/zeroconf_avahi
    ros-kinetic/openni2_launch
    ros-kinetic/turtlebot_capabilities
    ros-kinetic/laptop_battery_monitor
    ros-kinetic/kobuki_node
    ros-kinetic/rocon_app_manager
    ros-kinetic/kobuki_capabilities
    ros-kinetic/realsense_camera
    ros-kinetic/kobuki_safety_controller
    ros-kinetic/create_node
    ros-kinetic/robot_state_publisher
    ros-kinetic/diagnostic_aggregator
    ros-kinetic/astra_launch
    ros-kinetic/yocs_cmd_vel_mux
    ros-kinetic/rocon_bubble_icons
    ros-kinetic/depthimage_to_laserscan
    ros-kinetic/kobuki_bumper2pc
    ros-kinetic/freenect_launch
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
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e ${D}/${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}

# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="turtlebot_bringup provides roslaunch scripts for starting the TurtleBot base fun"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot-release/archive/release/indigo/turtlebot_bringup/2.3.14-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/yocs_cmd_vel_mux
    ros-indigo/create_node
    ros-indigo/astra_launch
    ros-indigo/openni2_launch
    ros-indigo/rocon_app_manager
    ros-indigo/turtlebot_capabilities
    ros-indigo/rocon_bubble_icons
    ros-indigo/diagnostic_aggregator
    ros-indigo/kobuki_safety_controller
    ros-indigo/kobuki_node
    ros-indigo/robot_state_publisher
    ros-indigo/robot_pose_ekf
    ros-indigo/laptop_battery_monitor
    ros-indigo/kobuki_capabilities
    ros-indigo/depthimage_to_laserscan
    ros-indigo/freenect_launch
    ros-indigo/turtlebot_description
    ros-indigo/zeroconf_avahi
    ros-indigo/realsense_camera
    ros-indigo/kobuki_bumper2pc
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

# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains a number of URDF tutorials."
HOMEPAGE="http://ros.org/wiki/urdf_tutorial"
SRC_URI="https://github.com/ros-gbp/urdf_tutorial-release/archive/release/lunar/urdf_tutorial/0.2.5-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/rviz
    ros-lunar/joint_state_controller
    ros-lunar/diff_drive_controller
    ros-lunar/xacro
    ros-lunar/gazebo_ros_control
    ros-lunar/position_controllers
    ros-lunar/robot_state_publisher
    ros-lunar/gazebo_ros
    ros-lunar/joint_state_publisher
    ros-lunar/rqt_robot_steering
    ros-lunar/urdf
    ros-lunar/controller_manager
"
DEPEND="${RDEPEND}
    ros-lunar/roslaunch
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
    cd ../../work
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="${D}" || die
}

pkg_postinst() {
    cd ${D}
    cp -R lib* /opt/ros/lunar
    cp -R share /opt/ros/lunar
    cp -R bin /opt/ros/lunar
    cp -R include /opt/ros/lunar
}

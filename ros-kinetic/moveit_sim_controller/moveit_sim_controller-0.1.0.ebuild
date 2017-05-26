# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A simulation interface for a hardware interface for ros_control, and loads default joint values from SRDF"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/moveit_sim_controller-release/archive/release/kinetic/moveit_sim_controller/0.1.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/moveit_ros_planning
    ros-kinetic/rosparam_shortcuts
    ros-kinetic/moveit_core
    ros-kinetic/ros_control_boilerplate
"
DEPEND="
    ros-kinetic/moveit_ros_planning
    ros-kinetic/roslint
    ros-kinetic/roscpp
    ros-kinetic/rosparam_shortcuts
    ros-kinetic/moveit_core
    ros-kinetic/ros_control_boilerplate
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

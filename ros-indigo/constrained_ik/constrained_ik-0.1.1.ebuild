# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Constraint-based IK solver.  Good for high-DOF robots or underconstrained tasks."
HOMEPAGE="http://ros.org/wiki/constrained_ik"
SRC_URI="https://github.com/ros-industrial-release/industrial_moveit-release/archive/release/indigo/constrained_ik/0.1.1-0.tar.gz"

LICENSE="Apache 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/tf_conversions
    ros-indigo/pluginlib
    ros-indigo/industrial_collision_detection
    ros-indigo/cmake_modules
    ros-indigo/orocos_kdl
    ros-indigo/kdl_parser
    ros-indigo/roscpp
    ros-indigo/urdf
    ros-indigo/moveit_ros_planning
    ros-indigo/moveit_core
    ros-indigo/eigen_conversions
    ros-indigo/dynamic_reconfigure
    dev-libs/boost
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

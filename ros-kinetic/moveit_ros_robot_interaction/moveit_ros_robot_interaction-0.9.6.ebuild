# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Components of MoveIt that offer interaction via interactive markers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_robot_interaction/0.9.6-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/moveit_ros_planning
    ros-kinetic/pluginlib
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/eigen_conversions
    ros-kinetic/interactive_markers
"
DEPEND="
    ros-kinetic/moveit_ros_planning
    ros-kinetic/pluginlib
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/eigen_conversions
    ros-kinetic/interactive_markers
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

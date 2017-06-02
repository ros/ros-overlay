# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Software for Kobuki, Yujin Robot's mobile research base."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki/0.7.4-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/kobuki_auto_docking
    ros-kinetic/kobuki_bumper2pc
    ros-kinetic/kobuki_capabilities
    ros-kinetic/kobuki_controller_tutorial
    ros-kinetic/kobuki_description
    ros-kinetic/kobuki_keyop
    ros-kinetic/kobuki_node
    ros-kinetic/kobuki_random_walker
    ros-kinetic/kobuki_rapps
    ros-kinetic/kobuki_safety_controller
    ros-kinetic/kobuki_testsuite
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

src_unpack() {
    default
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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}

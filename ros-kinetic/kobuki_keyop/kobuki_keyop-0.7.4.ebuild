# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Keyboard teleoperation for Kobuki: relays commands from a keyboard to Kobuki."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_keyop/0.7.4-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/ecl_exceptions
    ros-kinetic/ecl_threads
    ros-kinetic/ecl_time
    ros-kinetic/geometry_msgs
    ros-kinetic/kobuki_msgs
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/std_srvs
    ros-kinetic/yocs_cmd_vel_mux
    ros-kinetic/yocs_velocity_smoother
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

# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="cob_control meta-package"
HOMEPAGE="http://ros.org/wiki/cob_control"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/indigo/cob_control/0.6.14-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/cob_base_velocity_smoother
    ros-indigo/cob_cartesian_controller
    ros-indigo/cob_collision_velocity_filter
    ros-indigo/cob_control_mode_adapter
    ros-indigo/cob_control_msgs
    ros-indigo/cob_footprint_observer
    ros-indigo/cob_frame_tracker
    ros-indigo/cob_model_identifier
    ros-indigo/cob_obstacle_distance
    ros-indigo/cob_omni_drive_controller
    ros-indigo/cob_trajectory_controller
    ros-indigo/cob_twist_controller
    ros-indigo/cob_undercarriage_ctrl_node
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-indigo/catkin
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    if [[ ! -d ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages ]]; then
        mkdir -p ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages
    fi

    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}

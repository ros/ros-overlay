# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The cob_driver stack includes packages that provide access to the Care-O-bot har"
HOMEPAGE="http://ros.org/wiki/cob_driver"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/indigo/cob_driver/0.6.8-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/cob_base_drive_chain
    ros-indigo/cob_bms_driver
    ros-indigo/cob_camera_sensors
    ros-indigo/cob_canopen_motor
    ros-indigo/cob_elmo_homing
    ros-indigo/cob_generic_can
    ros-indigo/cob_head_axis
    ros-indigo/cob_light
    ros-indigo/cob_mimic
    ros-indigo/cob_phidgets
    ros-indigo/cob_relayboard
    ros-indigo/cob_scan_unifier
    ros-indigo/cob_sick_lms1xx
    ros-indigo/cob_sick_s300
    ros-indigo/cob_sound
    ros-indigo/cob_undercarriage_ctrl
    ros-indigo/cob_utilities
    ros-indigo/cob_voltage_control
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

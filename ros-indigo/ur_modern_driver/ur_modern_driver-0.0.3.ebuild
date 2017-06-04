# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The new driver for the UR3/UR5/UR10 robot arms from universal robots"
HOMEPAGE="http://wiki.ros.org/ur_modern_driver"
SRC_URI="https://github.com/clearpath-gbp/ur_modern_driver-release/archive/release/indigo/ur_modern_driver/0.0.3-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="Beerware"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/actionlib
    ros-indigo/control_msgs
    ros-indigo/controller_manager
    ros-indigo/geometry_msgs
    ros-indigo/hardware_interface
    ros-indigo/ros_controllers
    ros-indigo/roscpp
    ros-indigo/sensor_msgs
    ros-indigo/std_msgs
    ros-indigo/tf
    ros-indigo/trajectory_msgs
    ros-indigo/ur_description
    ros-indigo/ur_msgs
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

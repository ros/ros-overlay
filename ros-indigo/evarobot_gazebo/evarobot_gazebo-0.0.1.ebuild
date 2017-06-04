# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="evarobot simulator bringup."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/inomuh/evarobot_simulator-release/archive/release/indigo/evarobot_gazebo/0.0.1-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/angles
    ros-indigo/camera_info_manager
    ros-indigo/cv_bridge
    ros-indigo/driver_base
    ros-indigo/dynamic_reconfigure
    ros-indigo/gazebo_msgs
    ros-indigo/gazebo_ros
    ros-indigo/geometry_msgs
    ros-indigo/hector_gazebo_plugins
    ros-indigo/im_msgs
    ros-indigo/image_transport
    ros-indigo/interactive_marker_twist_server
    ros-indigo/message_generation
    ros-indigo/nav_msgs
    ros-indigo/nodelet
    ros-indigo/polled_camera
    ros-indigo/rosconsole
    ros-indigo/roscpp
    ros-indigo/rosgraph_msgs
    ros-indigo/rospy
    ros-indigo/sensor_msgs
    ros-indigo/std_srvs
    ros-indigo/tf
    ros-indigo/tf2_ros
    ros-indigo/trajectory_msgs
    ros-indigo/urdf
    sci-electronics/gazebo
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-indigo/catkin
    ros-indigo/diagnostic_updater
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

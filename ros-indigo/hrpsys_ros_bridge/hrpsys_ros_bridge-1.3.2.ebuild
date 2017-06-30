# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/rtmros_common-release/archive/release/indigo/hrpsys_ros_bridge/1.3.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/actionlib
    ros-indigo/camera_info_manager
    ros-indigo/collada_urdf
    ros-indigo/control_msgs
    ros-indigo/diagnostic_aggregator
    ros-indigo/diagnostic_msgs
    ros-indigo/dynamic_reconfigure
    ros-indigo/geometry_msgs
    ros-indigo/hrpsys
    ros-indigo/hrpsys_tools
    ros-indigo/image_transport
    ros-indigo/nav_msgs
    ros-indigo/pr2_controllers_msgs
    ros-indigo/pr2_msgs
    ros-indigo/robot_pose_ekf
    ros-indigo/robot_state_publisher
    ros-indigo/roscpp
    ros-indigo/rosnode
    ros-indigo/rostest
    ros-indigo/rqt_gui
    ros-indigo/rqt_gui_py
    ros-indigo/rqt_robot_dashboard
    ros-indigo/rqt_robot_monitor
    ros-indigo/rtmbuild
    ros-indigo/sensor_msgs
    ros-indigo/tf
    ros-indigo/visualization_msgs
    dev-python/ipython
    dev-python/psutil
"
DEPEND="${RDEPEND}
    ros-indigo/angles
    ros-indigo/catkin
    ros-indigo/euscollada
    ros-indigo/message_generation
    ros-indigo/mk
    ros-indigo/rosbuild
    ros-indigo/roslang
    dev-vcs/git
    sys-apps/net-tools
    sys-apps/net-tools
    virtual/pkgconfig
    sys-process/procps
    dev-python/rosdep
    dev-vcs/subversion
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-indigo
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}

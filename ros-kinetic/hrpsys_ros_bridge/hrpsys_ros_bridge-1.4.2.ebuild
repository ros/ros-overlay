# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="abr#text"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/rtmros_common-release/archive/release/kinetic/${PN}/1.4.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/camera_info_manager
	ros-kinetic/collada_urdf
	ros-kinetic/control_msgs
	ros-kinetic/diagnostic_aggregator
	ros-kinetic/diagnostic_msgs
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/hrpsys
	ros-kinetic/hrpsys_tools
	ros-kinetic/image_transport
	ros-kinetic/nav_msgs
	ros-kinetic/pr2_msgs
	ros-kinetic/robot_pose_ekf
	ros-kinetic/robot_state_publisher
	ros-kinetic/roscpp
	ros-kinetic/rosnode
	ros-kinetic/rostest
	ros-kinetic/rqt_gui
	ros-kinetic/rqt_gui_py
	ros-kinetic/rqt_robot_dashboard
	ros-kinetic/rqt_robot_monitor
	ros-kinetic/rtmbuild
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
	dev-python/ipython
	dev-python/psutil
"
DEPEND="${RDEPEND}
	ros-kinetic/angles
	ros-kinetic/catkin
	ros-kinetic/euscollada
	ros-kinetic/message_generation
	ros-kinetic/mk
	ros-kinetic/rosbuild
	ros-kinetic/roslang
	dev-vcs/git
	sys-apps/net-tools
	sys-apps/net-tools
	virtual/pkgconfig
	sys-process/procps
	dev-python/rosdep
	dev-vcs/subversion
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

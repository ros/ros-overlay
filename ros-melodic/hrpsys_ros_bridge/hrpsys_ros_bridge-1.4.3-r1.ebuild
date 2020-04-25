# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="hrpsys_ros_bridge package provides basic functionalities to bind\
  \	<a hr[...]"
HOMEPAGE="http://wiki.ros.org/hrpsys_ros_bridge"
SRC_URI="https://github.com/tork-a/rtmros_common-release/archive/release/melodic/${PN}/1.4.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/camera_info_manager
	ros-melodic/collada_urdf
	ros-melodic/control_msgs
	ros-melodic/diagnostic_aggregator
	ros-melodic/diagnostic_msgs
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/hrpsys
	ros-melodic/hrpsys_tools
	ros-melodic/image_transport
	ros-melodic/nav_msgs
	ros-melodic/pr2_controllers_msgs
	ros-melodic/pr2_msgs
	ros-melodic/robot_pose_ekf
	ros-melodic/robot_state_publisher
	ros-melodic/roscpp
	ros-melodic/rosnode
	ros-melodic/rostest
	ros-melodic/rqt_gui
	ros-melodic/rqt_gui_py
	ros-melodic/rqt_robot_dashboard
	ros-melodic/rqt_robot_monitor
	ros-melodic/rtmbuild
	ros-melodic/sensor_msgs
	ros-melodic/tf
	ros-melodic/visualization_msgs
	dev-python/ipython
	dev-python/psutil
"
DEPEND="${RDEPEND}
	ros-melodic/angles
	ros-melodic/catkin
	ros-melodic/euscollada
	ros-melodic/message_generation
	ros-melodic/mk
	ros-melodic/rosbuild
	ros-melodic/roslang
	dev-vcs/git
	sys-apps/net-tools
	sys-apps/net-tools
	virtual/pkgconfig
	sys-process/procps
	dev-python/rosdep
	dev-vcs/subversion
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

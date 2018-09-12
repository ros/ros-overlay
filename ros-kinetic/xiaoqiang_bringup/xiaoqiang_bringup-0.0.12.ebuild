# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="xiaoqiang bringup package, including launch files for many devices"
HOMEPAGE="http://www.bwbot.org/content/xiaoqiang"
SRC_URI="https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/${PN}/0.0.12-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/message_runtime
	ros-kinetic/robot_upstart
	ros-kinetic/rospy
	ros-kinetic/rplidar_ros
	ros-kinetic/std_msgs
	ros-kinetic/usb_cam
	ros-kinetic/web_video_server
	ros-kinetic/xiaoqiang_description
	ros-kinetic/xiaoqiang_driver
	ros-kinetic/xiaoqiang_monitor
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

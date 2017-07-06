# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The rtt_common_msgs package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_common_msgs/2.9.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rtt_actionlib_msgs
	ros-kinetic/rtt_diagnostic_msgs
	ros-kinetic/rtt_geometry_msgs
	ros-kinetic/rtt_nav_msgs
	ros-kinetic/rtt_sensor_msgs
	ros-kinetic/rtt_shape_msgs
	ros-kinetic/rtt_stereo_msgs
	ros-kinetic/rtt_trajectory_msgs
	ros-kinetic/rtt_visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"


# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The health_metric_collector package"
HOMEPAGE="http://wiki.ros.org/health_metric_collector"
SRC_URI="https://github.com/aws-gbp/${PN}-release/archive/release/kinetic/${PN}/1.0.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/aws_common
	ros-kinetic/aws_ros1_common
	ros-kinetic/cloudwatch_metrics_collector
	ros-kinetic/message_generation
	ros-kinetic/message_runtime
	ros-kinetic/ros_monitoring_msgs
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	test? ( ros-kinetic/rostest )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The health_metric_collector package"
HOMEPAGE="http://wiki.ros.org/health_metric_collector"
SRC_URI="https://github.com/aws-gbp/${PN}-release/archive/release/melodic/${PN}/2.0.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/aws_common
	ros-melodic/aws_ros1_common
	ros-melodic/message_generation
	ros-melodic/message_runtime
	ros-melodic/ros_monitoring_msgs
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/std_msgs
	test? ( ros-melodic/rostest )
	test? ( dev-cpp/gtest )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

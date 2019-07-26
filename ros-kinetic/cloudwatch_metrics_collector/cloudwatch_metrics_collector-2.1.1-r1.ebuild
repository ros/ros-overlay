# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Subscriber node for the aws/monitoring topic to publish metrics to AWS Clou[...]"
HOMEPAGE="http://wiki.ros.org/cloudwatch_metrics_collector"
SRC_URI="https://github.com/aws-gbp/${PN}-release/archive/release/kinetic/${PN}/2.1.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/aws_common
	ros-kinetic/aws_ros1_common
	ros-kinetic/cloudwatch_metrics_common
	ros-kinetic/ros_monitoring_msgs
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	test? ( ros-kinetic/rostest )
	test? ( dev-cpp/gtest )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

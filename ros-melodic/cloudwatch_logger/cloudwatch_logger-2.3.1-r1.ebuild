# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="CloudWatch Logger node for publishing logs to AWS CloudWatch Logs"
HOMEPAGE="http://wiki.ros.org/cloudwatch_logger"
SRC_URI="https://github.com/aws-gbp/${PN}-release/archive/release/melodic/${PN}/2.3.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/aws_common
	ros-melodic/aws_ros1_common
	ros-melodic/cloudwatch_logs_common
	ros-melodic/roscpp
	ros-melodic/std_msgs
	ros-melodic/std_srvs
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

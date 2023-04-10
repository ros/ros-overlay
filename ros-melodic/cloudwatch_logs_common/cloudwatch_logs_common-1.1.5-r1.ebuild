# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="AWS CloudWatch management library used by ROS1/2 node to publish logs to Cl[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/aws-gbp/cloudwatch_common-release/archive/release/melodic/${PN}/1.1.5-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/aws_common
	ros-melodic/dataflow_lite
	ros-melodic/file_management
	test? ( dev-cpp/gtest )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

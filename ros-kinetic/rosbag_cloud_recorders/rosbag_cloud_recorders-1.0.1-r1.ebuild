# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Package with nodes that facilitate the recording of rosbag files"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/aws-gbp/rosbag_uploader-release/archive/release/kinetic/${PN}/1.0.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/aws_common
	ros-kinetic/aws_ros1_common
	ros-kinetic/file_uploader_msgs
	ros-kinetic/recorder_msgs
	ros-kinetic/rosbag_storage
	ros-kinetic/roscpp
	ros-kinetic/topic_tools
	ros-kinetic/xmlrpcpp
	test? ( ros-kinetic/rostest )
	dev-libs/boost[python]
	test? ( dev-cpp/gtest )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslint
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

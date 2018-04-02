# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="PCL \(Point Cloud Library\) ROS interface stack. PCL-ROS is the preferred\
[...]"
HOMEPAGE="http://ros.org/wiki/perception_pcl"
SRC_URI="https://github.com/ros-gbp/perception_pcl-release/archive/release/lunar/${PN}/1.5.4-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/dynamic_reconfigure
	ros-lunar/message_filters
	ros-lunar/nodelet
	ros-lunar/nodelet_topic_tools
	ros-lunar/pcl_conversions
	ros-lunar/pcl_msgs
	ros-lunar/pluginlib
	ros-lunar/rosbag
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/tf
	ros-lunar/tf2_eigen
	test? ( ros-lunar/rostest )
	dev-cpp/eigen
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	ros-lunar/genmsg
	ros-lunar/rosconsole
	ros-lunar/roslib
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

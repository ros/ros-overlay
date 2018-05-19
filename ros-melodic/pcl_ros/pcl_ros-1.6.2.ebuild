# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="PCL \(Point Cloud Library\) ROS interface stack. PCL-ROS is the preferred\
[...]"
HOMEPAGE="http://ros.org/wiki/perception_pcl"
SRC_URI="https://github.com/ros-gbp/perception_pcl-release/archive/release/melodic/${PN}/1.6.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/message_filters
	ros-melodic/nodelet
	ros-melodic/nodelet_topic_tools
	ros-melodic/pcl_conversions
	ros-melodic/pcl_msgs
	ros-melodic/pluginlib
	ros-melodic/rosbag
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/tf2_eigen
	test? ( ros-melodic/rostest )
	dev-cpp/eigen
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/rosconsole
	ros-melodic/roslib
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

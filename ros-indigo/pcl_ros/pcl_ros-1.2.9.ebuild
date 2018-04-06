# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="PCL \(Point Cloud Library\) ROS interface stack. PCL-ROS is the preferred\
[...]"
HOMEPAGE="http://ros.org/wiki/perception_pcl"
SRC_URI="https://github.com/ros-gbp/perception_pcl-release/archive/release/indigo/${PN}/1.2.9-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_reconfigure
	ros-indigo/message_filters
	ros-indigo/nodelet
	ros-indigo/nodelet_topic_tools
	ros-indigo/pcl_conversions
	ros-indigo/pcl_msgs
	ros-indigo/pluginlib
	ros-indigo/rosbag
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	dev-cpp/eigen
	sci-libs/pcl
	sci-libs/pcl
	sci-libs/vtk[java]
	dev-python/pyvtk
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/genmsg
	ros-indigo/rosconsole
	ros-indigo/roslib
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="RTAB-Map\'s ros-pkg. RTAB-Map is a RGB-D SLAM approach with real-time const[...]"
HOMEPAGE="https://github.com/introlab/rtabmap_ros/issues"
SRC_URI="https://github.com/introlab/${PN}-release/archive/release/lunar/${PN}/0.17.6-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/class_loader
	ros-lunar/compressed_depth_image_transport
	ros-lunar/compressed_image_transport
	ros-lunar/costmap_2d
	ros-lunar/cv_bridge
	ros-lunar/dynamic_reconfigure
	ros-lunar/eigen_conversions
	ros-lunar/find_object_2d
	ros-lunar/geometry_msgs
	ros-lunar/image_geometry
	ros-lunar/image_transport
	ros-lunar/laser_geometry
	ros-lunar/message_filters
	ros-lunar/message_runtime
	ros-lunar/move_base_msgs
	ros-lunar/nav_msgs
	ros-lunar/nodelet
	ros-lunar/octomap_msgs
	ros-lunar/pcl_conversions
	ros-lunar/pcl_ros
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/rtabmap
	ros-lunar/rviz
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	ros-lunar/stereo_msgs
	ros-lunar/tf
	ros-lunar/tf2_ros
	ros-lunar/tf_conversions
	ros-lunar/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/genmsg
	ros-lunar/message_generation
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

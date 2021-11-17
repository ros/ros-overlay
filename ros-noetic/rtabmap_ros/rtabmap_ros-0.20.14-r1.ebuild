# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="RTAB-Map\'s ros-pkg. RTAB-Map is a RGB-D SLAM approach with real-time const[...]"
HOMEPAGE="https://github.com/introlab/rtabmap_ros/issues"
SRC_URI="https://github.com/introlab/${PN}-release/archive/release/noetic/${PN}/0.20.14-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/apriltag_ros
	ros-noetic/class_loader
	ros-noetic/compressed_depth_image_transport
	ros-noetic/compressed_image_transport
	ros-noetic/costmap_2d
	ros-noetic/cv_bridge
	ros-noetic/dynamic_reconfigure
	ros-noetic/eigen_conversions
	ros-noetic/find_object_2d
	ros-noetic/geometry_msgs
	ros-noetic/image_geometry
	ros-noetic/image_transport
	ros-noetic/laser_geometry
	ros-noetic/message_filters
	ros-noetic/message_runtime
	ros-noetic/move_base_msgs
	ros-noetic/nav_msgs
	ros-noetic/nodelet
	ros-noetic/octomap_msgs
	ros-noetic/pcl_conversions
	ros-noetic/pcl_ros
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/rosgraph_msgs
	ros-noetic/rospy
	ros-noetic/rtabmap
	ros-noetic/rviz
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/stereo_msgs
	ros-noetic/tf
	ros-noetic/tf2_ros
	ros-noetic/tf_conversions
	ros-noetic/theora_image_transport
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/genmsg
	ros-noetic/message_generation
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

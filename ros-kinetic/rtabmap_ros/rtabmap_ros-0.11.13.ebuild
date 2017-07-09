# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="RTABMaps rospkg RTABMap is a RGBD SLAM approach with realtime constraints"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/introlab/rtabmap_ros-release/archive/release/kinetic/rtabmap_ros/0.11.13-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/class_loader
	ros-kinetic/costmap_2d
	ros-kinetic/cv_bridge
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/eigen_conversions
	ros-kinetic/geometry_msgs
	ros-kinetic/image_geometry
	ros-kinetic/image_transport
	ros-kinetic/image_transport_plugins
	ros-kinetic/laser_geometry
	ros-kinetic/message_filters
	ros-kinetic/move_base_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/nodelet
	ros-kinetic/octomap_ros
	ros-kinetic/pcl_conversions
	ros-kinetic/pcl_ros
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/rtabmap
	ros-kinetic/rviz
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/stereo_msgs
	ros-kinetic/tf
	ros-kinetic/tf2_ros
	ros-kinetic/tf_conversions
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/genmsg
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"


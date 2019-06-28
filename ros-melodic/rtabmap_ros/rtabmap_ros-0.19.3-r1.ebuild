# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="RTAB-Map\'s ros-pkg. RTAB-Map is a RGB-D SLAM approach with real-time const[...]"
HOMEPAGE="https://github.com/introlab/rtabmap_ros/issues"
SRC_URI="https://github.com/introlab/${PN}-release/archive/release/melodic/${PN}/0.19.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/class_loader
	ros-melodic/compressed_depth_image_transport
	ros-melodic/compressed_image_transport
	ros-melodic/costmap_2d
	ros-melodic/cv_bridge
	ros-melodic/dynamic_reconfigure
	ros-melodic/eigen_conversions
	ros-melodic/find_object_2d
	ros-melodic/geometry_msgs
	ros-melodic/image_geometry
	ros-melodic/image_transport
	ros-melodic/laser_geometry
	ros-melodic/message_filters
	ros-melodic/message_runtime
	ros-melodic/move_base_msgs
	ros-melodic/nav_msgs
	ros-melodic/nodelet
	ros-melodic/octomap_msgs
	ros-melodic/pcl_conversions
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/rosgraph_msgs
	ros-melodic/rospy
	ros-melodic/rtabmap
	ros-melodic/rviz
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/stereo_msgs
	ros-melodic/tf
	ros-melodic/tf2_ros
	ros-melodic/tf_conversions
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/genmsg
	ros-melodic/message_generation
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

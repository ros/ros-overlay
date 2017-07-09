# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'RTAB-Map'"'"'s ros-pkg. RTAB-Map is a RGB-D SLAM approach with real-time constraints'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/introlab/rtabmap_ros-release/archive/release/indigo/rtabmap_ros/0.11.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/class_loader
	ros-indigo/costmap_2d
	ros-indigo/cv_bridge
	ros-indigo/dynamic_reconfigure
	ros-indigo/eigen_conversions
	ros-indigo/geometry_msgs
	ros-indigo/image_transport
	ros-indigo/image_transport_plugins
	ros-indigo/laser_geometry
	ros-indigo/message_filters
	ros-indigo/move_base_msgs
	ros-indigo/nav_msgs
	ros-indigo/nodelet
	ros-indigo/octomap_ros
	ros-indigo/pcl_conversions
	ros-indigo/pcl_ros
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/rtabmap
	ros-indigo/rviz
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/stereo_msgs
	ros-indigo/tf
	ros-indigo/tf2_ros
	ros-indigo/tf_conversions
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/genmsg
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"


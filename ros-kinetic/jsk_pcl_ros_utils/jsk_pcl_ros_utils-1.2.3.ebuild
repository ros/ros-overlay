# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS utility nodelets for pointcloud perception."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/${PN}/1.2.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/diagnostic_msgs
	ros-kinetic/diagnostic_updater
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/eigen_conversions
	ros-kinetic/geometry_msgs
	ros-kinetic/image_geometry
	ros-kinetic/image_transport
	ros-kinetic/image_view
	ros-kinetic/image_view2
	ros-kinetic/interactive_markers
	ros-kinetic/jsk_data
	ros-kinetic/jsk_footstep_msgs
	ros-kinetic/jsk_recognition_msgs
	ros-kinetic/jsk_recognition_utils
	ros-kinetic/jsk_topic_tools
	ros-kinetic/kdl_conversions
	ros-kinetic/kdl_parser
	ros-kinetic/laser_assembler
	ros-kinetic/message_runtime
	ros-kinetic/moveit_core
	ros-kinetic/moveit_ros_perception
	ros-kinetic/nav_msgs
	ros-kinetic/nodelet
	ros-kinetic/octomap
	ros-kinetic/octomap_msgs
	ros-kinetic/octomap_ros
	ros-kinetic/octomap_server
	ros-kinetic/openni2_launch
	ros-kinetic/pcl_conversions
	ros-kinetic/pcl_msgs
	ros-kinetic/pcl_ros
	ros-kinetic/robot_self_filter
	ros-kinetic/rosbag
	ros-kinetic/rosboost_cfg
	ros-kinetic/roscpp_tutorials
	ros-kinetic/rviz
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/stereo_msgs
	ros-kinetic/tf
	ros-kinetic/tf2_ros
	ros-kinetic/tf_conversions
	ros-kinetic/visualization_msgs
	dev-libs/boost
	sci-libs/scikits_learn
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

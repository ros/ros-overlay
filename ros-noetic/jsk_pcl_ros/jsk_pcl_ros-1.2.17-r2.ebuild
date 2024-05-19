# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS nodelets for pointcloud perception."
HOMEPAGE="https://jsk-docs.readthedocs.io/projects/jsk_recognition/en/latest/jsk_pcl_ros"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/${PN}/1.2.17-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/checkerboard_detector
	ros-noetic/cv_bridge
	ros-noetic/diagnostic_msgs
	ros-noetic/diagnostic_updater
	ros-noetic/dynamic_reconfigure
	ros-noetic/eigen_conversions
	ros-noetic/fetch_description
	ros-noetic/geometry_msgs
	ros-noetic/image_geometry
	ros-noetic/image_transport
	ros-noetic/image_view2
	ros-noetic/interactive_markers
	ros-noetic/jsk_data
	ros-noetic/jsk_footstep_msgs
	ros-noetic/jsk_interactive_marker
	ros-noetic/jsk_pcl_ros_utils
	ros-noetic/jsk_recognition_msgs
	ros-noetic/jsk_recognition_utils
	ros-noetic/jsk_topic_tools
	ros-noetic/kdl_conversions
	ros-noetic/kdl_parser
	ros-noetic/laser_assembler
	ros-noetic/moveit_core
	ros-noetic/moveit_ros_perception
	ros-noetic/nav_msgs
	ros-noetic/nodelet
	ros-noetic/octomap
	ros-noetic/octomap_server
	ros-noetic/openni2_launch
	ros-noetic/openni_launch
	ros-noetic/pcl_conversions
	ros-noetic/pcl_msgs
	ros-noetic/pcl_ros
	ros-noetic/resized_image_transport
	ros-noetic/robot_self_filter
	ros-noetic/rosboost_cfg
	ros-noetic/roscpp_tutorials
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/stereo_image_proc
	ros-noetic/stereo_msgs
	ros-noetic/tf
	ros-noetic/tf2_ros
	ros-noetic/tf_conversions
	ros-noetic/topic_tools
	ros-noetic/visualization_msgs
	test? ( ros-noetic/compressed_depth_image_transport )
	test? ( ros-noetic/compressed_image_transport )
	test? ( ros-noetic/jsk_perception )
	test? ( ros-noetic/jsk_tools )
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/rostest )
	dev-libs/boost[python]
	sci-libs/scikits_learn
	sci-libs/scikits_learn
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

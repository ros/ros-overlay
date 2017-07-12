# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="evarobot simulator bringup"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/inomuh/evarobot_simulator-release/archive/release/indigo/evarobot_gazebo/0.0.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/angles
	ros-indigo/camera_info_manager
	ros-indigo/cv_bridge
	ros-indigo/driver_base
	ros-indigo/dynamic_reconfigure
	ros-indigo/gazebo_msgs
	ros-indigo/gazebo_ros
	ros-indigo/geometry_msgs
	ros-indigo/hector_gazebo_plugins
	ros-indigo/im_msgs
	ros-indigo/image_transport
	ros-indigo/interactive_marker_twist_server
	ros-indigo/message_generation
	ros-indigo/nav_msgs
	ros-indigo/nodelet
	ros-indigo/polled_camera
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/rosgraph_msgs
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_srvs
	ros-indigo/tf
	ros-indigo/tf2_ros
	ros-indigo/trajectory_msgs
	ros-indigo/urdf
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/diagnostic_updater
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"


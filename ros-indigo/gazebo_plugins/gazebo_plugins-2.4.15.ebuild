# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigur[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/indigo/gazebo_plugins/2.4.15-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/angles
	ros-indigo/camera_info_manager
	ros-indigo/cv_bridge
	ros-indigo/driver_base
	ros-indigo/dynamic_reconfigure
	ros-indigo/gazebo_msgs
	ros-indigo/gazebo_ros
	ros-indigo/geometry_msgs
	ros-indigo/image_transport
	ros-indigo/message_generation
	ros-indigo/nav_msgs
	ros-indigo/nodelet
	ros-indigo/polled_camera
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/rosgraph_msgs
	ros-indigo/rospy
	ros-indigo/rostest
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
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

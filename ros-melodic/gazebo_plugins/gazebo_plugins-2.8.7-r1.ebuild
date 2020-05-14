# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigur[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/${PN}/2.8.7-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/angles
	ros-melodic/camera_info_manager
	ros-melodic/cv_bridge
	ros-melodic/diagnostic_updater
	ros-melodic/dynamic_reconfigure
	ros-melodic/gazebo_dev
	ros-melodic/gazebo_msgs
	ros-melodic/gazebo_ros
	ros-melodic/geometry_msgs
	ros-melodic/image_transport
	ros-melodic/message_runtime
	ros-melodic/nav_msgs
	ros-melodic/nodelet
	ros-melodic/polled_camera
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/rosgraph_msgs
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf
	ros-melodic/tf2_ros
	ros-melodic/trajectory_msgs
	ros-melodic/urdf
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

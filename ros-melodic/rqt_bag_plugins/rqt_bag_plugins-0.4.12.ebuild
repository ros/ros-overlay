# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rqt_bag provides a GUI plugin for displaying and replaying ROS bag files."
HOMEPAGE="http://wiki.ros.org/rqt_bag"
SRC_URI="https://github.com/ros-gbp/rqt_bag-release/archive/release/melodic/${PN}/0.4.12-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/rosbag
	ros-melodic/roslib
	ros-melodic/rospy
	ros-melodic/rqt_bag
	ros-melodic/rqt_gui
	ros-melodic/rqt_gui_py
	ros-melodic/rqt_plot
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	dev-python/pycairo
	dev-python/pillow
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

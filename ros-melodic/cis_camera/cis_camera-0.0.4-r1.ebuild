# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cis_camera package"
HOMEPAGE="http://wiki.ros.org/cis_camera"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/melodic/${PN}/0.0.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/camera_info_manager
	ros-melodic/cv_bridge
	ros-melodic/dynamic_reconfigure
	ros-melodic/image_transport
	ros-melodic/jsk_rviz_plugins
	ros-melodic/libuvc
	ros-melodic/nodelet
	ros-melodic/pcl_ros
	ros-melodic/pluginlib
	ros-melodic/rgbd_launch
	ros-melodic/roscpp
	ros-melodic/rqt_reconfigure
	ros-melodic/rviz
	ros-melodic/sensor_msgs
	ros-melodic/tf
	ros-melodic/tf_conversions
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslint
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

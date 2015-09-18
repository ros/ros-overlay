ros-overlay
===========

This overlay contains ebuilds for the Robot Operating System (ROS).

This overlay has been adapted from the wyc-overlay.

Install This Overlay
====================
Layman makes the install rather simple, thankfully.

<code> # layman -f -o https://raw.githubusercontent.com/allenh1/ros-overlay/master/overlay.xml -a ros-gentoo </code>

ROS Installation
================


1. Emerge rosdep. This is a basic prerequisite.

<code> $ sudo emerge rosdep </code>
<code> $ sudo rosdep init </code>
<code> $ sudo pip install --upgrade setuptools </code>

4. Now we refresh rosdep (this should not be done as the root user, hence the '$' proceeding the command).

<code> $ rosdep update </code>

5. Now add these three lines to the end of your `/etc/portage/package.use` file.

<code>
# required by ROS
sys-libs/zlib minizip
dev-libs/boost python
</code>

6. As a precaution, it is advised that you perform a full update to keep the rest of your system from breaking.

<code>
# emerge --sync
# emerge -uDNvaj @world
</code>

7. Now, we install the tools needed for the install.

<code>
# emerge rosinstall_generator wstool rosinstall catkin_pkg
</code>

8. Now we begin building the system.

<code>
$ mkdir ~/catkin_ws
$ rosinstall_generator desktop_full --rosdistro jade --deps --wet-only > jade-desktop_full-wet.rosinstall
$ cd ~/catkin_ws && wstool init -j8 src jade-desktop-wet.rosinstall
</code>

Should wstool fail, run the following command to resume the install (sometimes the amount of jobs causes problems).

<code>
wstool update -j 4 -t src
</code>

9. Next install the required dependences using rosdep.

<code>
$ rosdep install --from-paths src --ignore-src --rosdistro jade -y
</code>

10. Build the packages! The following command might fail several times (This is due to the python path not updating). Run it until all the packages build. 

<code>
sudo PYTHONPATH="/opt/ros/jade/lib64/python3.3/site-packages/" ./src/catkin/bin/catkin_make_isolated --install --install-space /opt/ros/jade -DSETUPTOOLS_DEB_LAYOUT=OFF
</code>
#!/bin/bash
	
	
	mv /Volumes/Archives/projects_backup.24 /Volumes/Archives/DaysSnapshot/Projects_from_$(date +"%Y-%m-%d")

	rm -rf /Volumes/Archives/projects_backup.24

	mv /Volumes/Archives/projects_backup.23 /Volumes/Archives/projects_backup.24
	mv /Volumes/Archives/projects_backup.22 /Volumes/Archives/projects_backup.23
	mv /Volumes/Archives/projects_backup.21 /Volumes/Archives/projects_backup.22
	mv /Volumes/Archives/projects_backup.20 /Volumes/Archives/projects_backup.21
	mv /Volumes/Archives/projects_backup.19 /Volumes/Archives/projects_backup.20
	mv /Volumes/Archives/projects_backup.18 /Volumes/Archives/projects_backup.19
	mv /Volumes/Archives/projects_backup.17 /Volumes/Archives/projects_backup.18
	mv /Volumes/Archives/projects_backup.16 /Volumes/Archives/projects_backup.17
	mv /Volumes/Archives/projects_backup.15 /Volumes/Archives/projects_backup.16
	mv /Volumes/Archives/projects_backup.14 /Volumes/Archives/projects_backup.15
	mv /Volumes/Archives/projects_backup.13 /Volumes/Archives/projects_backup.14
	mv /Volumes/Archives/projects_backup.12 /Volumes/Archives/projects_backup.13
	mv /Volumes/Archives/projects_backup.11 /Volumes/Archives/projects_backup.12
	mv /Volumes/Archives/projects_backup.10 /Volumes/Archives/projects_backup.11
	mv /Volumes/Archives/projects_backup.09 /Volumes/Archives/projects_backup.10
	mv /Volumes/Archives/projects_backup.08 /Volumes/Archives/projects_backup.09
	mv /Volumes/Archives/projects_backup.07 /Volumes/Archives/projects_backup.08
	mv /Volumes/Archives/projects_backup.06 /Volumes/Archives/projects_backup.07
	mv /Volumes/Archives/projects_backup.05 /Volumes/Archives/projects_backup.06
	mv /Volumes/Archives/projects_backup.04 /Volumes/Archives/projects_backup.05
	mv /Volumes/Archives/projects_backup.03 /Volumes/Archives/projects_backup.04
	mv /Volumes/Archives/projects_backup.02 /Volumes/Archives/projects_backup.03
	mv /Volumes/Archives/projects_backup.01 /Volumes/Archives/projects_backup.02

cd /Volumes/Archives/projects_backup.0 && find . -print | cpio -dplm /Volumes/Archives/projects_backup.01
sudo rsync -av --update --delete --progress /Volumes/Clients/ /Volumes/Archives/projects_backup.0

exit



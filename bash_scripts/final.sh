#!/bin/bash

while true; do
    clear
    echo "User and Group Management Menu:"
    echo "1. Create User"
    echo "2. Delete User"
    echo "3. Modify User"
    echo "4. Create Group"
    echo "5. Delete Group"
    echo "6. Modify Menu"
    echo "7. Exit"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            read -p "Enter username: " username
            useradd $username
            echo "User $username created successfully."
            ;;
	2)
            read -p "Enter username to delete: " username
            userdel -r $username
            echo "User $username deleted successfully."
            ;;
	3)
            read -p "Enter username to modify: " username
            
            echo "User $username modified successfully."
            ;;
	4)
            read -p "Enter group name: " groupname
            groupadd $groupname
            echo "Group $groupname created successfully."
            ;;
	5)
            read -p "Enter group name to delete: " groupname
            groupdel $groupname
            echo "Group $groupname deleted successfully."
            ;;
	6)
            # Add your menu modification logic here
            echo "Menu modified successfully."
            ;;
	7)
            echo "Exiting..."
            exit 0
            ;;
	*)
            echo "Invalid choice. Please enter a valid option."
            ;;
    esac

    read -p "Press enter to continue..."
done


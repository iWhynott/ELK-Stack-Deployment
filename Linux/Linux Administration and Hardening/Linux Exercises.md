## Linux Systems Administration

### Step 1: Ensure/Double Check Permissions on Sensitive Files

1. Permissions on `/etc/shadow` should allow only `root` read and write access.

    - Command to inspect permissions: 
      - `ls -l /etc/shadow`
      - ![image-20210125170546094](C:\Users\Isaac Whynott\AppData\Roaming\Typora\typora-user-images\image-20210125170546094.png)
    - Command to set permissions (if needed):

2. Permissions on `/etc/gshadow` should allow only `root` read and write access.

    - Command to inspect permissions:
      - `ls -l /etc/gshadow`
      - ![image-20210125170611535](C:\Users\Isaac Whynott\AppData\Roaming\Typora\typora-user-images\image-20210125170611535.png)
    - Command to set permissions (if needed):

3. Permissions on `/etc/group` should allow `root` read and write access, and allow everyone else read access only.

    - Command to inspect permissions:
      - `ls -l /etc/group`
      - ![image-20210125170628443](C:\Users\Isaac Whynott\AppData\Roaming\Typora\typora-user-images\image-20210125170628443.png)
    - Command to set permissions (if needed):

4. Permissions on `/etc/passwd` should allow `root` read and write access, and allow everyone else read access only.

    - Command to inspect permissions:
  - `ls -l /etc/passwd`
      - ![image-20210125170640658](C:\Users\Isaac Whynott\AppData\Roaming\Typora\typora-user-images\image-20210125170640658.png)
    - Command to set permissions (if needed):

### Step 2: Create User Accounts

1. Add user accounts for `sam`, `joe`, `amy`, `sara`, and `admin`.

    - Command to add each user account (include all five users):
      - `sudo useradd -g engineers sam`
      - ![image-20210125171537947](C:\Users\Isaac Whynott\AppData\Roaming\Typora\typora-user-images\image-20210125171537947.png)
      - `sudo useradd -g engineers joe`
      - ![image-20210125171547452](C:\Users\Isaac Whynott\AppData\Roaming\Typora\typora-user-images\image-20210125171547452.png)
      - `sudo useradd -g engineers amy`
      - ![image-20210125171558413](C:\Users\Isaac Whynott\AppData\Roaming\Typora\typora-user-images\image-20210125171558413.png)
      - `sudo useradd -g engineers sara`
      - ![image-20210125171608909](C:\Users\Isaac Whynott\AppData\Roaming\Typora\typora-user-images\image-20210125171608909.png)
      - `sudo useradd -g sudo admin`
      - ![image-20210125171618847](C:\Users\Isaac Whynott\AppData\Roaming\Typora\typora-user-images\image-20210125171618847.png)

2. Ensure that only the `admin` has general sudo access.

    - Command to add `admin` to the `sudo` group:
      - `id -gn admin`
      - ![image-20210125171912364](C:\Users\Isaac Whynott\AppData\Roaming\Typora\typora-user-images\image-20210125171912364.png)

### Step 3: Create User Group and Collaborative Folder

1. Add an `engineers` group to the system.

    - Command to add group:
      - `sudo groupadd engineers`
      - ![image-20210125171952886](C:\Users\Isaac Whynott\AppData\Roaming\Typora\typora-user-images\image-20210125171952886.png)

2. Add users `sam`, `joe`, `amy`, and `sara` to the managed group.

    - Command to add users to `engineers` group (include all four users):
      - This was conducted in Step 2.1 during user creation. All users were delegated to the `engineers` group when created

3. Create a shared folder for this group at `/home/engineers`.

    - Command to create the shared folder:
      - `sudo mkdir -p /home/engineers`
      - To add each user to this home directory I ran commands as follows:
        - `sudo usermod -d /home/engineers sam`
        - `sudo usermod -d /home/engineers joe`
        - `sudo usermod -d /home/engineers amy`
        - `sudo usermod -d /home/engineers sara`

4. Change ownership on the new engineers' shared folder to the `engineers` group.

    - Command to change ownership of engineer's shared folder to engineer group:
      - `sudo chown :engineers /home/engineers`
      - ![image-20210125174836557](C:\Users\Isaac Whynott\AppData\Roaming\Typora\typora-user-images\image-20210125174836557.png)

### Step 4: Lynis Auditing

1. Command to install Lynis:
1. `sudo apt install lynis`
2. Command to see documentation and instructions:
    1. `man lynis`
3. Command to run an audit:
    1. `sudo lynis audit system`
4. Provide a report from the Lynis output on what can be done to harden the system.

    - Screenshot of report output: https://drive.google.com/drive/folders/1laEYGXPIwzj4yvlxbsAp3cvLKFc03yYF?usp=sharing
    - Suggestions to harden the system:
      - Configure minimum/maximum password age
      - Disable drivers like USB storage when not used to prevent unauthorized storage or data theft
      - Install PAM module for password strength testing
      - Check what deleted files are still in use and why
      - Check file permissions in Printers and Spools
      - Check vulnerable packages in Ports and packages
      - **Lynis version should be updated**


### Bonus
1. Command to install chkrootkit:

2. Command to see documentation and instructions:

3. Command to run expert mode:

4. Provide a report from the chrootkit output on what can be done to harden the system.
    - Screenshot of end of sample output:

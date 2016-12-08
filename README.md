# ft_printf

[PDF](https://mega.nz/#!8hYjgIoQ!q-mYo6-40Q6uehsRsgOs2IsI4T59DQkMrOIw3qYzb5g)  

###Gameplay  
>ft_ls : list directory contents
>For each operand that names a file of a type other than directory, ft_ls displays its name as well as any requested, associated information.  
For each operand that names a file of type directory, ft_ls displays the names of files contained within that directory, as well as any requested, associated information.  
If no operands are given, the contents of the current directory are displayed.  If more than one operand is given, non-directory operands are displayed first; directory and non-directory operands are sorted separately and in lexicographical order.  
>You have to reproduce ls with [-l] [-R] [-a] [-r] [-t] flags.  

###Bonus :  
- [x] -G : Enable colorized output  
- [x] -U : Use time of file creation, instead of last modification for sorting  
- [x] -u : Use time of last access, instead of last modification for sorting  
- [x] -c : Use time when file status was last changed for sorting  
- [x] -d : Directories are listed as plain files (not searched recursively)  
- [x] -p : Write a slash (`/') after each filename if that file is a directory  
- [x] -n : Display user and group IDs numerically, rather than converting to a user or group name  
- [x] Column output  
- [x] ACL enable  

###Requirements :  
- [LIBFT](https://bitbucket.org/Tbouder/libft)  
- C compiler  
- GNU  

###Installation :  
1. git clone https://bitbucket.org/Tbouder/ft_ls  
2. cd ft_ls && git clone https://bitbucket.org/Tbouder/libft  
3. make  
